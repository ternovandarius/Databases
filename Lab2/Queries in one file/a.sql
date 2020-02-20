--Selects all the names of the actors, writers and producers in the database, ordered by their last name.

Select LastName, FirstName from Actors
Union all
Select LastName, FirstName from Writers
Union all
Select LastName, FirstName from Producers
Order by LastName

--Selects the names of the actors, writers and producers born in English speaking countries, ordered by their first name.

Select FirstName, LastName, Country from Actors
Where Country = 'United States' or Country = 'England'
Union
Select FirstName, LastName, Country from Writers
Where Country = 'United States' or Country = 'England'
Union
Select FirstName, LastName, Country from Producers
Where Country = 'United States' or Country = 'England'
Order by FirstName