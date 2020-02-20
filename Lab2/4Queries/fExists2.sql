select distinct Networks.Country
from Networks
where exists (select NetworkID from Airing where Airing.NetworkID=Networks.NetworkID)