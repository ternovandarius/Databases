--clustered index scan

execute sp_helpindex Ta
--we see that aid, being a primary key, already has a clustered index, so we operate on that one

drop index idx_uq_a2 on Ta

select * from Ta where a2=3

--clustered index seek

select * from Ta where aid>2

--nonclustered index scan

create nonclustered index idx_uq_a2 on Ta (a2 desc)
select a2 from Ta

--nonclustered index seek

select a2 from Ta where a2!=4

--key lookup

alter table Ta add a3 int
update Ta set dbo.Ta.a3 = a2+1

alter table Ta add a4 int
update Ta set dbo.Ta.a4 = a3+1

select aid, a2, a3, a4 from Ta with ( index(idx_uq_a2))