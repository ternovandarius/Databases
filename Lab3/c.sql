create procedure add_default
as
if OBJECT_ID('lab3') is not null
insert into dbo.Table_Version (Operation) values ('add_default')
alter table dbo.lab3 add constraint Col1_const default 'default' for Col1
go



create procedure undo_add_default
as
if OBJECT_ID('lab3') is not null
alter table dbo.lab3 drop constraint Col1_const
go

create procedure remove_default
as
if OBJECT_ID('lab3') is not null
insert into dbo.Table_Version (Operation) values ('remove_default')
alter table dbo.lab3 drop constraint Col1_const
go

create procedure undo_remove_default
as
if OBJECT_ID('lab3') is not null
alter table dbo.lab3 add constraint Col1_const default 'default' for Col1
go