select Avg(Age) as AverageAge, Country
from Writers
group by Country
having Avg(Age)>(select Avg(Age) from Writers)