create table Ta (aid int primary key, a2 int unique)
create table Tb (bid int primary key, b2 int)
create table Tc (cid int primary key, c2 int, aid int references Ta(aid), bid int references Tb(bid))