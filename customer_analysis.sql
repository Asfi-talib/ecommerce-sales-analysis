-- RFM Analysis
SELECT 
    CustomerID,
    DATEDIFF('2011-12-31', MAX(STR_TO_DATE(InvoiceDate, '%m/%d/%Y %H:%i'))) AS Recency,
    COUNT(DISTINCT InvoiceNo) AS Frequency,
    ROUND(SUM(TotalSales), 2) AS Monetary
FROM sales
GROUP BY CustomerID
ORDER BY Monetary DESC
LIMIT 10;