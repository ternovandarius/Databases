Select FirstName from Actors
Union all
Select FirstName from Writers
Order by FirstName

Select Country from Networks
Where Country = 'United States' or Country = 'England'
Union
Select Country from Studios
Where Country = 'USA' or Country = 'Wales'
Order by Country desc