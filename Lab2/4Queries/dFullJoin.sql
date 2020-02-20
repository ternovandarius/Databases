select Actors.FirstName, Actors.LastName, Characters.FirstName, Characters.LastName, Episodes.EpisodeTitle, Starring.NrOfScenesAppears
from Actors
full join PlayedBy on Actors.ActorID=PlayedBy.ActorID
full join Characters on PlayedBy.CharacterID=Characters.CharacterID
full join Starring on Characters.CharacterID=Starring.CharacterID
full join Episodes on Starring.EpisodeID=Episodes.EpisodeID