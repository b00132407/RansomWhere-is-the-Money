use ransomwaredatabase;

SELECT transactions.amount FROM transactions

INNER JOIN addresses ON transactions.destinationWallet = addresses.addressID

WHERE addresses.addressGroup = 'Crypt Console';
