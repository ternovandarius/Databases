select 100-Actors.Age as ReversedAge, Actors.FirstName, Actors.LastName
from (select top 10 * from Actors where Actors.FirstName like 'D%') AS Actors
where Actors.Age<50

select Episodes.EpisodeTitle
from (select top 10 * from Episodes where Episodes.DateAired>'2000-01-01') as Episodes
where Episodes.EpisodeTitle like '%__________%'