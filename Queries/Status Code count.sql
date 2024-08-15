SELECT status ,COUNT(*) as status_count
FROM logs
GROUP BY status
ORDER BY status_count DESC;
