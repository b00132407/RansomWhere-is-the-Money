SELECT DATE_FORMAT(DATE(date), '%Y-%m') as year_montht, SUM(amount) as total_amount
FROM ransomwaredatabase.hse
WHERE date BETWEEN '2021-03-01' AND '2021-07-30' 
GROUP BY year_montht;