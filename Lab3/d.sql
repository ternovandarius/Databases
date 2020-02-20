create procedure add_primary
as
if OBJECT_ID('lab3') is not null
insert into dbo.Table_Version (Operation) values ('add_primary')
alter table dbo.lab3 add constraint PK_Col1 Primary key (Col1)
go

create procedure undo_add_primary
as
if OBJECT_ID('lab3') is not null
alter table dbo.lab3 drop constraint PK_Col1
go

create procedure remove_primary
as
if OBJECT_ID('lab3') is not null
insert into dbo.Table_Version (Operation) values ('remove_primary')
alter table dbo.lab3 drop constraint PK_Col1
go

create procedure undo_remove_primary
as
if OBJECT_ID('lab3') is not null
alter table dbo.lab3 add constraint PK_Col1 Primary key (Col1)
go