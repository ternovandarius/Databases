create procedure add_candidate
as
if OBJECT_ID('lab3') is not null
insert into dbo.Table_Version (Operation) values ('add_candidate')
alter table dbo.lab3 add constraint CK_Col2 unique (Col2)
go

create procedure undo_add_candidate
as
if OBJECT_ID('lab3') is not null
alter table dbo.lab3 drop constraint CK_Col2
go

create procedure remove_candidate
as
if OBJECT_ID('lab3') is not null
insert into dbo.Table_Version (Operation) values ('remove_candidate')
alter table dbo.lab3 drop constraint CK_Col2
go

create procedure undo_remove_candidate
as
if OBJECT_ID('lab3') is not null
alter table dbo.lab3 add constraint CK_Col2 unique (Col2)
go