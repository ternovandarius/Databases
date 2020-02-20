create procedure add_foreign
as
if OBJECT_ID('lab3') is not null
insert into dbo.Table_Version (Operation) values ('add_foreign')
alter table dbo.lab3 add constraint FK_Col1 foreign key (Col1) references Seasons(SeasonID)
go

create procedure undo_add_foreign
as
if OBJECT_ID('lab3') is not null
alter table dbo.lab3 drop constraint FK_Col1
go

create procedure remove_foreign
as
if OBJECT_ID('lab3') is not null
insert into dbo.Table_Version (Operation) values ('remove_foreign')
alter table dbo.lab3 drop constraint FK_Col1
go

create procedure undo_remove_foreign
as
if OBJECT_ID('lab3') is not null
insert into dbo.Table_Version (Operation) values ('add_foreign')
alter table dbo.lab3 add constraint FK_Col1 foreign key (Col1) references Seasons(SeasonID)
go