SELECT
    TotalSales,
    Artist
FROM
    (SELECT 
        SUM(il.Quantity) as TotalSales,
        t.Name,
        a.Name as Artist
    FROM InvoiceLine as il 
    INNER JOIN Invoice as i ON i.InvoiceId = il.InvoiceId
    INNER JOIN Track as t ON t.TrackId = il.TrackId
    INNER JOIN Album as al on t.AlbumId = al.AlbumId
    INNER JOIN Artist as a on a.ArtistId = al.ArtistId
    GROUP BY a.ArtistId)
ORDER BY TotalSales DESC
LIMIT 3
