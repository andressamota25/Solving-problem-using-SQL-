
-- *** The Lost Letter ***
SELECT id FROM addresses WHERE address = "900 Somerville Avenue";
SELECT "to_address_id", contents FROM packages WHERE from_address_id = "432";
SELECT "id", "contents" FROM packages  WHERE to_address_id = (
 SELECT "id" FROM addresses WHERE id = "854"
);
SELECT "address" FROM addresses WHERE id IN (
SELECT "address_id" FROM scans WHERE package_id = "384");
SELECT address_id FROM scans WHERE action = "Drop" AND package_id = "384";
SELECT type, address FROM addresses WHERE id = "854";

-- *** The Devious Delivery ***
SELECT * FROM packages WHERE from_address_id IS NULL
SELECT address_id FROM scans WHERE action = "Drop" AND package_id = "5098";
SELECT type, id FROM addresses WHERE id = "348";
SELECT contents from packages WHERE id = "5098";

-- *** The Forgotten Gift ***
SELECT id, address FROM addresses WHERE address LIKE '%Tileston%' AND type = "Residential";
SELECT  id, contents FROM packages WHERE from_address_id = "9873";

SELECT address_id FROM scans WHERE action = "Drop" AND package_id = "9523";
SELECT address FROM addresses WHERE id = "7432";
SELECT action FROM scans WHERE package_id = "9523";
SELECT driver_id FROM scans WHERE package_id = "9523";
SELECT name FROM drivers WHERE id = "17";


