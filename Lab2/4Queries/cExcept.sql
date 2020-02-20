select EpisodeTitle
from Episodes
where EpisodeTitle like 'The%'
except
select EpisodeTitle
from Episodes
where EpisodeTitle like '%Pilot'