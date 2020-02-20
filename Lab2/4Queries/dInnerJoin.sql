select Actors.FirstName, Actors.LastName, PlayedBy.NrEpisodes, Characters.FirstName, Characters.LastName
from Actors
Inner join PlayedBy on PlayedBy.ActorID=Actors.ActorID
Inner join Characters on Characters.CharacterID = PlayedBy.CharacterID