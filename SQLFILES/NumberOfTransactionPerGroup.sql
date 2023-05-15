use ransomwaredatabase;

SELECT addresses.addressGroup, COUNT(transactions.destinationWallet) AS transactionCount 

FROM  addresses  LEFT JOIN transactions  ON addresses.addressID = transactions.destinationWallet 

GROUP BY addresses.addressGroup ORDER BY transactionCount asc ;





