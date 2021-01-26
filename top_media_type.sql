SELECT
    Max(TotalSales),
    MediaType
FROM
    (SELECT 
        SUM(il.Quantity) as TotalSales,
        t.Name,
        mt.Name as MediaType
    FROM InvoiceLine as il 
    INNER JOIN Invoice as i ON i.InvoiceId = il.InvoiceId
    INNER JOIN Track as t ON t.TrackId = il.TrackId
    INNER JOIN MediaType as mt ON mt.MediaTypeId = t.MediaTypeId
    GROUP BY mt.MediaTypeId)
ORDER BY TotalSales DESC
LIMIT 5
