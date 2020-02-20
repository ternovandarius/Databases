create procedure get_current_version
@Output int output
as
select top 1 @Output=Version from dbo.Current_Version
return
go

create procedure get_change
@input int,
@Output varchar(50) output
as
select @Output=Operation from dbo.Table_Version where Version=@input
print @Output
return
go

declare @output int
execute get_current_version @output output;
print @output
declare @current_change varchar(50)
execute get_change @output, @current_change output
print @current_change

create procedure revert_version(@version int)
as
	declare @current_version int
	declare @current_change varchar(50)
	execute get_current_version @current_version output;
	print @current_version
	if @version<@current_version begin
		while @version<@current_version begin
			
			exec get_change @current_version, @current_change output
			print @current_change
			set @current_version = @current_version-1
			print @current_version
			
			if @current_change='modify_column' begin execute dbo.undo_modify_column end
			if @current_change='add_column' begin execute dbo.undo_add_column end
			if @current_change='remove_column' begin execute dbo.undo_remove_column end
			if @current_change='add_default' begin execute dbo.undo_add_default end
			if @current_change='remove_default' begin execute dbo.undo_remove_default end
			if @current_change='add_primary' begin execute dbo.undo_add_primary end
			if @current_change='remove_primary' begin execute dbo.undo_remove_primary end
			if @current_change='add_candidate' begin execute dbo.undo_add_candidate end
			if @current_change='remove_candidate' begin execute dbo.undo_remove_candidate end
			if @current_change='add_foreign' begin execute dbo.undo_add_foreign end
			if @current_change='remove_foreign' begin execute dbo.undo_remove_foreign end
			if @current_change='create_table' begin execute dbo.undo_create_table end
			if @current_change='remove_table' begin execute dbo.undo_remove_table end
			/*delete top (1) from Table_Version where Version in (select top 1 Version from Table_Version order by Version desc)
			print 'deleted!'*/
		end
		update dbo.Current_Version set Version = @version
	end
	else begin
	if @current_version<@version
		while @current_version<@version begin
			
			set @current_version = @current_version+1
			print @current_version
			exec get_change @current_version, @current_change output
			print @current_change
			
			
			if @current_change='modify_column' begin execute dbo.redo_modify_column end
			if @current_change='add_column' begin execute dbo.undo_remove_column end
			if @current_change='remove_column' begin execute dbo.undo_add_column end
			if @current_change='add_default' begin execute dbo.undo_remove_default end
			if @current_change='remove_default' begin execute dbo.undo_add_default end
			if @current_change='add_primary' begin execute dbo.undo_remove_primary end
			if @current_change='remove_primary' begin execute dbo.undo_add_primary end
			if @current_change='add_candidate' begin execute dbo.undo_remove_candidate end
			if @current_change='remove_candidate' begin execute dbo.undo_add_candidate end
			if @current_change='add_foreign' begin execute dbo.undo_remove_foreign end
			if @current_change='remove_foreign' begin execute dbo.undo_add_foreign end
			if @current_change='create_table' begin execute dbo.undo_remove_table end
			if @current_change='remove_table' begin execute dbo.undo_create_table end
		end
		update dbo.Current_Version set Version =@version
	end
go

execute revert_version 1

create table Table_Version (Version int identity(1, 1), Operation varchar(50))

execute remove_table
execute create_table
execute add_column
execute remove_column
execute modify_column
execute add_column
execute add_candidate