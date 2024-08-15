SELECT ip, COUNT(*) as request_count
FROM logs
GROUP BY ip
ORDER BY request_count DESC
