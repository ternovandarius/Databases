select Country
from Studios
group by Country
having min(YearEstablished)>(select min(YearEstablished) from Studios)