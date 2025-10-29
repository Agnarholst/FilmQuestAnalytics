-- Limit test
SELECT DISTINCT year, title 
FROM watched
ORDER BY year DESC
LIMIT 10, 10;