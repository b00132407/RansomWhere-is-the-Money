use ransomwaredatabase;

SELECT YEAR(date) AS TXYear, COUNT(*) AS TXCount

FROM transactions GROUP BY TXYear ORDER BY TXYear;
