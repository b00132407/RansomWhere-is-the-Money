SELECT * FROM ransomwaredatabase.transactions_with_address_group
WHERE addressGroup = 'Conti' AND date BETWEEN '2021-03-01' AND '2021-07-30'
ORDER BY date

;
