SELECT 
    MAX(TotalSales),
    BillingCountry
FROM
    (SELECT
        DISTINCT BillingCountry,
        SUM(Total) as TotalSales
    FROM Invoice GROUP BY BillingCountry)
