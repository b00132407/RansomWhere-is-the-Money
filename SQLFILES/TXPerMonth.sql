use ransomwaredatabase;

SELECT month(date) AS TXMonth, COUNT(*) AS TXCount

FROM transactions GROUP BY TXMonth ORDER BY TXMonth;

