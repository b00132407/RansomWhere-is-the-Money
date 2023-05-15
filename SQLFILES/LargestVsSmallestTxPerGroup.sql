use ransomwaredatabase;

SELECT a.addressGroup, MIN(t.amount) AS smallestAmount, MAX(t.amount) AS largestAmount

FROM transactions t JOIN addresses a ON t.destinationWallet = a.addressID

GROUP BY a.addressGroup;


