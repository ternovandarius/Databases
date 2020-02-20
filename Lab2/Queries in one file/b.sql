--Selects the first episodes of seasons aired after the year 2000.

select EpisodeTitle
from Episodes
where EpisodeNr = 1
INTERSECT
select EpisodeTitle
from Episodes
where DateAired>'2000-01-01'


--Selects the complete names of the old (between 50 and 80 years old) writers from Romania and Hungary

select FirstName, LastName
from Writers
where Country in ('Romania', 'Hungary')
intersect
select FirstName, LastName
from Writers
where Age between 50 and 80