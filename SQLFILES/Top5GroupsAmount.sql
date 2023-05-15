USE ransomwaredatabase;

SELECT addressGroup, ROUND(SUM(amount), 2) AS totalBitcoinAmount

FROM transactions INNER JOIN addresses ON transactions.destinationWallet = addresses.addressID

WHERE addressGroup IN ('Locky', 'Netwalker', 'Cuba', 'DMALockerv3', 'Ryuk') GROUP BY addressGroup;

