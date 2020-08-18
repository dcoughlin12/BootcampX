-- SELECT SUM(completed_at - started_at)/COUNT(*)
-- FROM assistance_requests

SELECT AVG(completed_at - started_at)
FROM assistance_requests