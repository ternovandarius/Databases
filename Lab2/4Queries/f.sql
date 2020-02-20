select Actors.FirstName, Actors.LastName
from Actors
where Age> all (select Actors.Age from Actors where Country in ('England', 'Scotland'))

select Writers.FirstName, Writers.LastName
from Writers
where Age> all (select Actors.Age from Actors where Country in ('England', 'Scotland'))

select Seasons.SeasonID
from Seasons
where SeasonID = any (select Episodes.SeasonID from Episodes where DateAired>'2000-01-01')

