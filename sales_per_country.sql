SELECT
    DISTINCT BillingCountry,
    SUM(Total)
FROM Invoice GROUP BY BillingCountry
