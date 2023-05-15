CREATE TABLE transactions_with_address_group AS
SELECT t.*, a.addressGroup
FROM transactions t
JOIN addresses a ON t.destinationWallettransactions_with_address_group = a.addressId;
