--Selects all of the actors in the database who play a character, as well as the number of episodes and the character name.

select Actors.FirstName, Actors.LastName, PlayedBy.NrEpisodes, Characters.FirstName, Characters.LastName
from Actors
Inner join PlayedBy on PlayedBy.ActorID=Actors.ActorID
Inner join Characters on Characters.CharacterID = PlayedBy.CharacterID

--Selects all of the actors in the database, regardless of whether they play a character or not. Where possible, the character name is displayed.

select Actors.FirstName, Actors.LastName, Characters.FirstName, Characters.LastName
from Actors
left join PlayedBy on Actors.ActorID=PlayedBy.ActorID
left join Characters on PlayedBy.CharacterID=Characters.CharacterID


--Selects all the television studios, displaying the tv shows they created, where possible.

select Shows.Name, Studios.Name
from Shows
right join Studios on Studios.StudioID=Shows.StudioID

--Selects all the episodes, all the actors, all the characters, along with the possible relationships between them.

select Episodes.EpisodeTitle, Actors.FirstName, Actors.LastName, Characters.FirstName, Characters.LastName, Starring.NrOfScenesAppears
from Actors
full join PlayedBy on Actors.ActorID=PlayedBy.ActorID
full join Characters on PlayedBy.CharacterID=Characters.CharacterID
full join Starring on Characters.CharacterID=Starring.CharacterID
full join Episodes on Starring.EpisodeID=Episodes.EpisodeID
order by Episodes.EpisodeTitle desc