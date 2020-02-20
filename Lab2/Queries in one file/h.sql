--Groups all the episodes of all shows and seasons by their number.

select Episodes.EpisodeTitle, Episodes.EpisodeNr
from Episodes
group by Episodes.EpisodeNr, Episodes.EpisodeTitle

--Selects the average ages of actors in each country whose average age is greater than the global average age of actors.

select Avg(Age) as AverageAge, Country
from Actors
group by Country
having avg(Age)>(select avg(Age) from Actors)

--Selects the average ages of writerss in each country whose average age is lower than the global average of writers.

select Avg(Age) as AverageAge, Country
from Writers
group by Country
having Avg(Age)<(select Avg(Age) from Writers)

--Selects the countries which have all studios established after the global average.

select Country
from Studios
group by Country
having min(YearEstablished)>(select avg(YearEstablished) from Studios)