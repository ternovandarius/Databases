select Shows.Name, Studios.Name
from Shows
right join Studios on Studios.StudioID=Shows.StudioID