select FirstName, LastName
from Actors
where Country not in ('United States', 'Romania')
except
select FirstName, LastName
from Actors
where Age > 40