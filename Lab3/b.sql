create procedure add_column
as
if OBJECT_ID('lab3') is not null
insert into dbo.Table_Version (Operation) values ('add_column')
alter table dbo.lab3 add Col3 int
go

create procedure redo_add_column
as
if OBJECT_ID('lab3') is not null
alter table dbo.lab3 add Col3 int
go

create procedure undo_add_column
as
if OBJECT_ID('lab3') is not null
alter table dbo.lab3 drop column Col3
go


create procedure remove_column
as
if OBJECT_ID('lab3') is not null
insert into dbo.Table_Version (Operation) values ('remove_column')
alter table dbo.lab3 drop column Col3
go

create procedure redo_remove_column
as
if OBJECT_ID('lab3') is not null
alter table dbo.lab3 drop column Col3
go

create procedure undo_remove_column
as
if OBJECT_ID('lab3') is not null
alter table dbo.lab3 add Col3 int
go