Update Writers
Set Country = 'Romania'
Where FirstName like 'Da%'

Update Writers
Set FirstName = 'Oldie'
Where Age IS NOT NULL AND Age NOT BETWEEN 0 AND 60