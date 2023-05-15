use ransomwaredatabase;

SELECT YEAR(date) AS TXYear, SUM(amount) AS totalBTCPerYear

FROM transactions GROUP BY TXYear ORDER BY TXYear;
