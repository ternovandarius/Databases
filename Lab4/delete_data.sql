create procedure delete_data @table_name varchar(100), @rows int, @pos int
as
declare @index int;
declare @query varchar(100);
set @index=@pos;

while @index-@pos <= @rows
begin
	set @query = 'Delete from ' + @table_name + ' where id';
	if @table_name = 'MultiColumnPK'
	begin
		set @query = @query + '1= ' + cast(@index as varchar) + ' and id2 = ' + cast(@index as varchar);
	end
	else
	begin
		set @query = @query + '= ' + cast(@index as varchar);
	end
	exec(@query)
	set @index = @index + 1;
end
go
