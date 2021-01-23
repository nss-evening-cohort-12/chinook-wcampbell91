SELECT 
    invoiceId,
    COUNT(*)
    FROM InvoiceLine GROUP BY InvoiceId
