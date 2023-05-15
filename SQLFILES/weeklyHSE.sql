SELECT DATE_FORMAT(date, '%Y-%u') AS year_week, SUM(amount) AS total_amount
FROM ransomwaredatabase.hse
WHERE date BETWEEN '2021-03-01' AND '2021-07-30' 
GROUP BY year_week;