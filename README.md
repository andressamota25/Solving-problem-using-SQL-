📦 SQL Mystery Solver: Tracking Missing Packages

🕵️ The Challenge
In this project, I used SQL to investigate and locate missing packages reported by different customers. Each package has a unique story, and through structured queries, I tracked its journey from the sender to the recipient.

🔍 Case Files (Solution provided in the answer file):
1️⃣ The Lost Letter – A heartfelt letter sent to a friend, but did it arrive?
2️⃣ The Devious Delivery – A mysterious package with no return address. Can we find it?
3️⃣ The Forgotten Gift – A grandparent’s birthday surprise that never reached its destination. Where did it go?

🛠️ Approach
To solve these mysteries, I analyzed package movement using SQL queries on a postal service database. The main tables used are:

addresses – Stores locations (residential, business, post office, etc.)
packages – Contains package details (ID of package, sender address, recipient address)
scans – Logs each package's journey with timestamps and locations
drivers – Records details of delivery personnel
🗂️ Process & Key SQL Queries
Each query helps us uncover crucial details about a package’s journey.

📌 Step 1: Identify Sender & Recipient
SELECT id FROM addresses WHERE address = "900 Somerville Avenue";
📍 Finds the sender's unique address ID from the addresses table.

📌 Step 2: Track Package Movement
SELECT to_address_id, contents FROM packages WHERE from_address_id = "432";
📦 Retrieves the destination and contents of a package sent from a known location.

📌 Step 3: Locate the Final Drop-off
SELECT address_id FROM scans WHERE action = "Drop" AND package_id = "384";
📍 Finds where the package was last scanned before delivery.

📌 Step 4: Identify the Delivery Driver
SELECT driver_id FROM scans WHERE package_id = "9523";
🚚 Finds which driver was responsible for the package.

📌 Step 5: Retrieve Driver’s Name
SELECT name FROM drivers WHERE id = "17";
👤 Identifies the delivery person to verify the last handler.

✅ Conclusion
Using structured SQL queries, I successfully tracked down missing packages by analyzing sender information, tracking package movements, and identifying responsible drivers. This project showcases SQL’s power in real-world problem-solving, particularly in logistics and package tracking.

📌 Project by: Andressa Mota // From CS50 course!
