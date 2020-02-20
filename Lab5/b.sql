select * from Tb where b2=4

create nonclustered index idx_nc_b2 on Tb(b2)

drop index idx_nc_b2 on Tb

--without nonclustered index, select's estimated subtree cost: 0.0032875
--with nonclustered index, select's estimated subtree cost: 0.0032831
--cpu cost also decreases