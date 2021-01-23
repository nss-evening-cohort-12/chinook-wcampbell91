SELECT 
    SUM(Invoice.Total) as "Total Sales",
    Employee.FirstName,
    Employee.LastName
From Invoice
INNER JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
INNER JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.EmployeeId
