create procedure insert_data @table_name varchar(100), @rows int, @pos int
as
declare @index int;
declare @query varchar(100);
set @index=@pos;

while @index - @pos <= @rows
begin
	if @table_name = 'SingleColumnPK'
	begin
		set @query = 'Insert into SingleColumnPK(id, name) values (' + cast(@index as varchar) + ', asdf';
	end
	if @table_name = 'MultiColumnPK'
	begin
		set @query = 'Insert into MultiColumnPK(id1, id2, name) values (' + cast(@index as varchar) + ', '+ cast(@index as varchar) + ', asdf';
	end
	begin
		set @query = 'Insert into ForeignKey(id, foreignKey, name) values (' +cast(@index as varchar) + ', 1, asdf';
	end
	exec(@query)
	set @index = @index + 1
end
go