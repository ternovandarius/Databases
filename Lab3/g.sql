create procedure create_table
as
insert into dbo.Table_Version (Operation) values ('create_table')
Create table lab3(Col1 varchar(30), Col2 int)
go

create procedure undo_create_table
as
if OBJECT_ID('lab3') is not null
Drop table Ternovan_Lab.dbo.lab3
go

create procedure remove_table
as
if OBJECT_ID('lab3') is not null
insert into dbo.Table_Version (Operation) values ('remove_table')
Drop table Ternovan_Lab.dbo.lab3
go

create procedure undo_remove_table
as
Create table lab3(Col1 varchar(30), Col2 int)
go