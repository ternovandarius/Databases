create procedure modify_column
as
if OBJECT_ID('lab3') is not null
insert into dbo.Table_Version (Operation) values ('modify_column')
alter table dbo.lab3 alter column Col2 varchar(50)
go

create procedure redo_modify_column
as
if OBJECT_ID('lab3') is not null
alter table dbo.lab3 alter column Col2 varchar(50)
go

create procedure undo_modify_column
as
if OBJECT_ID('lab3') is not null
alter table dbo.lab3 alter column Col2 int
go