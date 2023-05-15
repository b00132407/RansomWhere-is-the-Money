use ransomwaredatabase;

SELECT  addresses.addressID, addresses.addressGroup 

FROM addresses LEFT JOIN transactions ON addresses.addressID = transactions.destinationWallet 

WHERE transactions.destinationWallet IS NULL;



