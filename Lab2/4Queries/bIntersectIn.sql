select FirstName, LastName
from Writers
where Country in ('Romania', 'England')
intersect
select FirstName, LastName
from Writers
where Age between 40 and 50