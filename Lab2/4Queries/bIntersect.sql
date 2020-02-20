select EpisodeTitle
from Episodes
where EpisodeNr = 1
INTERSECT
select EpisodeTitle
from Episodes
where DateAired>2000