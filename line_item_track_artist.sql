SELECT
    InvoiceLine.*,
    Track.Name AS 'Track Name',
    Artist.Name AS 'Artist Name'
FROM InvoiceLine 
INNER JOIN Track ON InvoiceLine.TrackId = Track.TrackId
INNER JOIN Artist ON Track.Composer = Artist.Name
