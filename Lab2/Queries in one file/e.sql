--Selects the actors with no studios in their country.

select Actors.FirstName, Actors.LastName, Actors.Country
from Actors
where Actors.Country not in (select Country from Studios)

--Selects all the shows produced in a country that aired on a network in the same country.

select Shows.Name
from Shows
where StudioID in (select Studios.StudioID from Studios where Country in (select Networks.Country from Networks))