select Actors.FirstName, Actors.LastName, Actors.Country
from Actors
where Actors.Country in (select top 5 Country from Writers)