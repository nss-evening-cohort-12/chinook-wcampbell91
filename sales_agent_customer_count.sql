SELECT 
    COUNT(FirstName),
    SupportRepId
FROM Customer
GROUP BY SupportRepId
