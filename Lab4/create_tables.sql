create table SingleColumnPK
(
	id int not null primary key,
	name varchar(50) not null
)

create table MultiColumnPK
(
	id1 int not null,
	id2 int not null,
	name varchar(50) not null,
	primary key(id1, id2)
)

create table ForeignKey
(
	id int not null primary key,
	foreignKey int references SingleColumnPK(id),
	name varchar(50)
)