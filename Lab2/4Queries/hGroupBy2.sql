select Avg(Age) as AverageAge, Country
from Actors
group by Country
having avg(Age)>(select avg(Age) from Actors)