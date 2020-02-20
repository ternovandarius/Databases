create view dbo.boolview as
select dbo.Tb.b2
from (dbo.Tb left join dbo.Tc on dbo.Tb.bid=dbo.Tc.bid)
where b2<10
go

drop view boolview

select * from boolview

drop index idx_nc_b2 on Tb
create nonclustered index idx_nc_b2 on Tb(b2)

--the view uses indexes from the tables joined
--therefore, if we drop the index from Tb, the cost of the select in the view will be higher, as it will have to scan
--if we create a new index on Tb, the view will use it and therefore will be more efficient