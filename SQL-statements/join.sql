SELECT * 
FROM watched AS w
INNER JOIN film_details AS d
    ON w.letterboxd_url = d.letterboxd_url
    ORDER BY year;