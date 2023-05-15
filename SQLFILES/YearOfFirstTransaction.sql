use ransomwaredatabase;

SELECT addressGroup, YEAR(MIN(date)) AS firstTransactionYear 

FROM addresses INNER JOIN transactions ON addresses.addressID = transactions.destinationWallet 

GROUP BY addressGroup ORDER BY firstTransactionYear asc;
