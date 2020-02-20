--Selects all the shows with at least one season which had more than 10 episodes.

select Shows.Name, Shows.ShowID from Shows where exists
(select Seasons.SeasonNr
from Seasons
where exists (select distinct Episodes.SeasonID from Episodes where Seasons.ShowID=Shows.ShowID and EpisodeNr > 10 and Episodes.SeasonID=Seasons.SeasonID))

--Selects all the studios who have produced at least a tv show.

select distinct Studios.Name
from Studios
where exists (select Shows.StudioID from Shows where Shows.StudioID=Studios.StudioID)