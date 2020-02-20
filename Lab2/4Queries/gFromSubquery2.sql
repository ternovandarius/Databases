select Episodes.EpisodeTitle
from (select top 10 * from Episodes where Episodes.DateAired>'2000-01-01') as Episodes
where Episodes.EpisodeTitle like '%__________%'