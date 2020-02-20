select Actors.FirstName, Actors.LastName, Characters.FirstName, Characters.LastName
from Actors
left join PlayedBy on Actors.ActorID=PlayedBy.ActorID
left join Characters on PlayedBy.CharacterID=Characters.CharacterID