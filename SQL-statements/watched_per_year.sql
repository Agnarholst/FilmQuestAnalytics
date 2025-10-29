-- Showing films watched per year
SELECT year, COUNT(*) AS y
FROM watched
GROUP BY year;