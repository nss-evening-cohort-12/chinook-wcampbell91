SELECT
    MAX(TotalSales),
FROM
    (SELECT 
        SUM(il.Quantity) as TotalSales,
        t.Name,
        il.TrackId,
        i.InvoiceDate
    FROM InvoiceLine as il 
    INNER JOIN Invoice as i ON i.InvoiceId = il.InvoiceId
    INNER JOIN Track as t ON t.TrackId = il.TrackId
    WHERE i.InvoiceDate LIKE '%2013%'
    GROUP BY il.TrackId)
