-- CTE Table for years 1900-2025
SELECT year, COUNT(*) AS films_watched_yearly
FROM watched
GROUP BY year;