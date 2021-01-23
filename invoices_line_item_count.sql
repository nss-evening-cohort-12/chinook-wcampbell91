SELECT
    Invoice.*,
    count(InvoiceLine.InvoiceLineId)
FROM Invoice
INNER JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId
