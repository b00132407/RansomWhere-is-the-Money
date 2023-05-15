USE ransomwaredatabase;

SELECT addressGroup, DATEDIFF(MAX(date), MIN(date)) AS daysSinceFirstLastTransaction 

FROM transactions INNER JOIN addresses ON transactions.destinationWallet = addresses.addressID 

GROUP BY addressGroup order by daysSinceFirstLastTransaction asc;
