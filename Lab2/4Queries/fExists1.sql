select Seasons.SeasonNr
from Seasons
where exists (select distinct Episodes.SeasonID from Episodes where EpisodeNr > 10 and Episodes.SeasonID=Seasons.SeasonID)