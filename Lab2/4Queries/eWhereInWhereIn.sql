update Studios set Country = 'United States' where Country='USA'

select Shows.Name
from Shows
where StudioID in (select Studios.StudioID from Studios where Country in (select Networks.Country from Networks))