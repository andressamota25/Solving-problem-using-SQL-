
-- *** The Lost Letter ***
-- ***1: Retrieves the unique id of the address 900 Somerville Avenue from the addresses table. This helps identify the sender's location in the database. *** --
SELECT id FROM addresses WHERE address = "900 Somerville Avenue";
-- ***2: Finds all packages sent from the address with ID 432, returning their destination (to_address_id) and contents.*** --
SELECT "to_address_id", contents FROM packages WHERE from_address_id = "432";
-- ***3: Identifies all packages that were sent to address ID 854, retrieving their ID and contents.*** --
SELECT "id", "contents" FROM packages  WHERE to_address_id = (
 SELECT "id" FROM addresses WHERE id = "854"
);
-- ***4: Finds all locations where package ID 384 was scanned by looking up address_id in the scans table and mapping it to actual addresses.*** --
SELECT "address" FROM addresses WHERE id IN (
SELECT "address_id" FROM scans WHERE package_id = "384");
-- ***5: Retrieves the final drop-off location (address_id) of package ID 384 based on scan records where the action was "Drop".*** --
SELECT address_id FROM scans WHERE action = "Drop" AND package_id = "384";
-- ***6: Gets the type (e.g., home, business, post office) and full address for address ID 854, providing context on the package’s destination.*** --
SELECT type, address FROM addresses WHERE id = "854";

-- *** The Devious Delivery ***
-- ***1: Retrieves all packages that do not have a sender address (from_address_id IS NULL). This could indicate anonymous shipments or missing sender data.*** --
SELECT * FROM packages WHERE from_address_id IS NULL
 -- ***2:Finds the final drop-off location (address_id) of package ID 5098 by looking at scan records where the action was "Drop".*** --
SELECT address_id FROM scans WHERE action = "Drop" AND package_id = "5098";
-- ***3: Retrieves the type (e.g., home, business, post office) and unique ID for address ID 348, helping to classify the destination.*** --
SELECT type, id FROM addresses WHERE id = "348";
-- ***4: Extracts the contents of package ID 5098, revealing what was inside the package.** --
SELECT contents from packages WHERE id = "5098";

-- *** The Forgotten Gift ***
-- ***1: Retrieves the ID and full address of any residential location that contains "Tileston" in its address. This helps identify the sender’s home address.***--
SELECT id, address FROM addresses WHERE address LIKE '%Tileston%' AND type = "Residential";
-- ***2: Finds all packages sent from address ID 9873, returning their ID and contents to understand what was shipped.*** --
SELECT  id, contents FROM packages WHERE from_address_id = "9873";
-- ***3: Identifies the final drop-off location (address_id) for package ID 9523 based on scan records.*** --
SELECT address_id FROM scans WHERE action = "Drop" AND package_id = "9523";
-- ***4: Retrieves the full address associated with address ID 7432, possibly revealing the delivery destination.*** --
SELECT address FROM addresses WHERE id = "7432";
-- ***5: Lists all actions recorded for package ID 9523 in the scanning system (e.g., "Pickup," "Transit," "Drop"). This helps track its journey.*** --
SELECT action FROM scans WHERE package_id = "9523";
-- ***6: Retrieves the driver ID responsible for handling package ID 9523, which can help trace its delivery history.*** --
SELECT driver_id FROM scans WHERE package_id = "9523";
-- ***7: Finds the name of the driver with ID 17, possibly identifying the person who last handled the package.*** --
SELECT name FROM drivers WHERE id = "17";


