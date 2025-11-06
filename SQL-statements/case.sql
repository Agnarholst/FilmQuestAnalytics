-- Case statements
SELECT title, year,
CASE
    WHEN year >= 2000 THEN "new movie"
    WHEN year BETWEEN 1960 AND 2000 THEN "old movie"
    WHEN year BETWEEN 1800 AND 1960 THEN "ancient movie"
END AS movie_age
FROM watched;