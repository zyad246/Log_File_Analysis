SELECT DATE(timestamp) as log_date, COUNT(*) as total_requests
FROM logs
GROUP BY log_date
ORDER BY log_date;
