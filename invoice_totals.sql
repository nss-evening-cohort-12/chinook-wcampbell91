SELECT 
    Invoice.Total,
    Customer.Country,
    Employee.FirstName AS 'employee first',
    Employee.LastName AS 'employye last',
    Customer.FirstName AS 'customer first',
    Customer.LastName AS 'customer last'
FROM Invoice
INNER JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
INNER JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
WHERE Employee.Title = 'Sales Support Agent'
