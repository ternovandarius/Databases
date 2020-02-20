Update Shows
Set Language = 'US English'
Where Language = 'English' AND (StudioID < 3 OR StudioID > 3)

Update Shows
Set Language = 'British English'
Where Language = 'English' AND (StudioID = 3)