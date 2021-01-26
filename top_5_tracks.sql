SELECT
    TotalSales,
    Name
FROM
    (SELECT 
        SUM(il.Quantity) as TotalSales,
        t.Name,
        il.TrackId
    FROM InvoiceLine as il 
    INNER JOIN Invoice as i ON i.InvoiceId = il.InvoiceId
    INNER JOIN Track as t ON t.TrackId = il.TrackId
    GROUP BY il.TrackId)
ORDER BY TotalSales DESC
LIMIT 5
