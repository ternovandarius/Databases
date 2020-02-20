select Episodes.EpisodeTitle, Episodes.EpisodeNr
from Episodes
group by Episodes.EpisodeNr, Episodes.EpisodeTitle