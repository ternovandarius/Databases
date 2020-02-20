--Selects the actors younger than 50, whose first names start with the letter "K".

select Actors.FirstName, Actors.LastName
from (select * from Actors where Actors.FirstName like 'K%') AS Actors
where Actors.Age<50

--Selects the episodes with titles of at least 10 characters, from the list of episodes that aired before 2000.

select Episodes.EpisodeTitle
from (select Episodes.EpisodeTitle from Episodes where Episodes.DateAired<'2000-01-01') as Episodes
where Episodes.EpisodeTitle like '%__________%'