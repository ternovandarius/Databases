--Selects the actors who are older than all the actors in English speaking countries.

select Actors.FirstName, Actors.LastName
from Actors
where Age> all (select Actors.Age from Actors where Country in ('England', 'Scotland', 'United States', 'Canada'))

select Actors.FirstName, Actors.LastName
from Actors
where Age> (select MAX (Actors.Age) from Actors where Country in ('England', 'Scotland', 'United States', 'Canada'))

--Selects the writers that are older than all the actors in their country.

select Writers.FirstName, Writers.LastName, Writers.Age, Writers.Country
from Writers
where Age> all (select Actors.Age from Actors where Actors.Country=Writers.Country)

select Writers.FirstName, Writers.LastName, Writers.Country
from Writers
where Age > (select MAX(Actors.Age) from Actors where Actors.Country=Writers.Country group by Actors.Country)

--Selects the name of shows who had a third season.

select Shows.Name
from Shows
where Shows.ShowID = any (select Seasons.ShowID from Seasons where Seasons.SeasonNr=3)

select Shows.Name
from Shows
where Shows.ShowID in (select Seasons.ShowID from Seasons where Seasons.SeasonNr=3)

--Selects the name of episodes which appeared in seasons 3 or later.

select Episodes.EpisodeTitle
from Episodes
where Episodes.SeasonID = any (select Seasons.SeasonID from Seasons where Seasons.SeasonNr>=3)

select Episodes.EpisodeTitle
from Episodes
where Episodes.SeasonID in (select Seasons.SeasonID from Seasons where Seasons.SeasonNr>=3)