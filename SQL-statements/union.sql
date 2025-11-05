SELECT year, title, 'new movie' AS label
FROM watched 
WHERE year >= 2000
UNION
SELECT year, title, 'old movie' AS label
FROM watched 
WHERE year < 2000
ORDER BY title;