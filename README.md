# Operational Risk Data Quality – SQL Project

This project demonstrates **Operational Risk Data Quality checks** using **SQLite**.  
We simulate a small operational risk events table with some intentional data issues,  
then run SQL queries to detect problems in **completeness, accuracy, validity, consistency, and timeliness**.

### 📌 Sample Data

<div style="overflow-x: auto;">

| event_id | event_date | business_line     | branch_location | risk_category       | loss_amount | status   | reported_date |
|----------|------------|-------------------|-----------------|---------------------|-------------|----------|---------------|
| 1        | 2024-01-05 | Retail Banking    | New York        | Fraud               | 1500.00     | Open     | 2024-01-06    |
| 2        | 2024-01-07 | Corporate Banking | NULL            | System Failure      | 2500.00     | Closed   | 2024-01-10    |
| 3        | 2024-01-08 | Retail Banking    | Chicago         | Fraud               | -500.00     | Open     | 2024-01-09    |
| 4        | 2024-01-10 | Retail Banking    | Los Angeles     | InvalidCategory     | 1000.00     | Closed   | 2024-01-12    |
| 5        | 2024-01-10 | Retail Banking    | New York        | Fraud               | 1200.00     | Open     | 2024-01-25    |
| 6        | 2024-01-10 | Retail Banking    | New York        | Fraud               | 1200.00     | Open     | 2024-01-25    |

</div>


## 📷 Sample Output

Below are screenshots of each data quality check query and its results.

*1. Completeness – Missing Branch Location*
![Completeness Check](<img width="661" height="261" alt="image" src="https://github.com/user-attachments/assets/5a742046-aac0-451d-92d3-4b239a8dce70" />
)

*2. Accuracy – Negative or Zero Loss Amount*
![Accuracy Check](<img width="645" height="157" alt="image" src="https://github.com/user-attachments/assets/2ab93b16-3c0e-47ac-addf-500b1eff3bd4" />
)

*3. Validity – Invalid Risk Category*
![Validity Check](<img width="682" height="149" alt="image" src="https://github.com/user-attachments/assets/c3841ef3-33c7-4d26-b0f9-9a4e058f5a78" />
)

*4. Consistency – Duplicate Event Records*
![Consistency Check](<img width="578" height="162" alt="image" src="https://github.com/user-attachments/assets/aa90e1ae-d954-4496-aa75-a8d68eca3aed" />
)

*5. Timeliness – Events Reported > 7 Days Late*
![Timeliness Check](<img width="641" height="217" alt="image" src="https://github.com/user-attachments/assets/c6a54031-487b-4212-ba71-fab3d5a448a1" />
)



## ❓ Why This Project Exists

Operational risk data often contains inconsistencies, missing values, or delayed reporting,  
which can lead to **poor decision-making, regulatory issues, and financial loss**.  

This project exists to **demonstrate how to detect and address common data quality problems**  
in an operational risk dataset using SQL.  

By simulating realistic data issues — such as missing branch locations, invalid categories,  
duplicate records, and late reporting — the project helps learners and professionals:

- Understand key **data quality dimensions** (completeness, accuracy, validity, consistency, timeliness)
- Practice writing **SQL queries** to find and investigate data issues
- Build habits for **data quality checks** before analytics or reporting

📜 License

This project is licensed under the MIT License 
