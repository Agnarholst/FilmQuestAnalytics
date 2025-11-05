SELECT title, length(title) AS title_length
FROM watched 
ORDER BY title_length DESC;


SELECT title, SUBSTRING(title, 0,4) AS opening_characters, 
COUNT(*) as amount_of_the
FROM watched
WHERE opening_characters = 'The'
ORDER BY opening_characters;

SELECT title, COUNT(*) as num
FROM watched
WHERE title LIKE "%:%";