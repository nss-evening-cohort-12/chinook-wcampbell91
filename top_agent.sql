SELECT 
    MAX(TotalSales),
    FirstName,
    LastName
FROM
    (SELECT 
        SUM(Invoice.Total) as "TotalSales",
        Employee.FirstName,
        Employee.LastName
    From Invoice
    JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
    JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
    GROUP BY Employee.EmployeeId)
