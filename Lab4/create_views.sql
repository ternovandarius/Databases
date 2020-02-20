create view one_table_select as
select * from dbo.SingleColumnPK
where SingleColumnPK.id<10
go

create view two_tables_select as
select ForeignKey.id, ForeignKey.name as foreignName, ForeignKey.foreignKey, SingleColumnPK.name as singleColumnName
from ForeignKey inner join SingleColumnPK on ForeignKey.foreignKey=SingleColumnPK.id
where ForeignKey.id<10
go

create view group_by_select as
select ForeignKey.id, ForeignKey.name as foreignName, ForeignKey.foreignKey, SingleColumnPK.name as singleColumnName
from ForeignKey inner join SingleColumnPK on ForeignKey.foreignKey=SingleColumnPK.id
group by ForeignKey.name, ForeignKey.id, ForeignKey.foreignKey, SingleColumnPK.name
go

select * from one_table_select
select * from two_tables_select
select * from group_by_select