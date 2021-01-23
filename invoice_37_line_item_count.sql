SELECT
    InvoiceLine.*,
    Track.Name
FROM InvoiceLine 
INNER JOIN Track WHERE InvoiceLine.TrackId = Track.TrackId
