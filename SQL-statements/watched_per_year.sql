-- Showing films watched per year
SELECT year, COUNT(*) AS films_watched
FROM watched
GROUP BY year;