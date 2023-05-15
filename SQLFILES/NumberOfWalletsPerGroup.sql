use ransomwaredatabase;

SELECT addressGroup, COUNT(*) AS NumberOfWallets

FROM addresses GROUP BY addressGroup ORDER BY NumberOfWallets asc;
