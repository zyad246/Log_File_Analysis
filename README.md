# Log File Analysis 

## Overview

The **Log File Analysis** is a Python project that processes web server logs and stores the data in a PostgreSQL database. It uses an ETL (Extract, Transform, Load) process to automate the extraction of raw logs, transform them into a structured format, and load them into the database for analysis.

## How It Works

1. **Extract**:
   - Loads raw log files from a directory.
   - Identifies new log entries that haven't been processed before.

2. **Transform**:
   - Parses logs into structured data (e.g., timestamp, IP address, status code).
   - Cleans and formats the data.

3. **Load**:
   - Stores the transformed data in a PostgreSQL database.

## SQL Analysis

Here are some key analyses you can run using SQL:

1. **HTTP Status Code Distribution**:
   - See how often different status codes (e.g., 200, 404) appear.
   ```sql
   SELECT status, COUNT(*) as count
   FROM logs
   GROUP BY status
   ORDER BY count DESC;
   ```
   
2. IP addresses that make the most requests.

    ```sql
    SELECT ip, COUNT(*) as count
    FROM logs
    GROUP BY ip
    ORDER BY count DESC
    LIMIT 10;
    ```

3.  Daily Request Count

    ```sql
    SELECT DATE(timestamp) as date, COUNT(*) as count
    FROM logs
    GROUP BY date
    ORDER BY date;
    ```


## Future Improvements

- **Automation**: Schedule the script to run daily.
- **Alerts**: Add alerts for unusual log patterns.
- **Visuals**: Create charts and graphs for the data.

