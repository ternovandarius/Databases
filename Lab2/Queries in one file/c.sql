--Selects the episodes whose titles have the word "The", but not "Pilot" (to exclude the common first episode name, "The Pilot")

select EpisodeTitle
from Episodes
where EpisodeTitle like 'The%'
except
select EpisodeTitle
from Episodes
where EpisodeTitle like '%Pilot'


--Selects the full names of actors (and their country) from non-English speaking countries, excluding those older than 40

select FirstName, LastName, Country
from Actors
where Country not in ('United States', 'England', 'Scotland', 'Canada')
except
select FirstName, LastName, Country
from Actors
where Age > 40