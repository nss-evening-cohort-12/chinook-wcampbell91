SELECT 
    Invoice.InvoiceId,
    Employee.FirstName,
    Employee.LastName
FROM Invoice 
INNER JOIN Customer ON Customer.CustomerId = Invoice.CustomerId
INNER JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
WHERE Employee.Title = 'Sales Support Agent'
