SELECT 
    Customer.FirstName,
    Customer.LastName,
    Invoice.InvoiceId,
    Invoice.InvoiceDate,
    Invoice.BillingCountry
FROM Invoice
INNER JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
WHERE Customer.Country = 'Brazil'
