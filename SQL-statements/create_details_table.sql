-- Created a table and manually inserted the
-- film details. This needs to be done with an api. 
-- For now I'm just testing this schema. 

-- Later I want to create the film_details table based
-- on the watched table. Each row will copy over with 
-- the same tite, year and letterboxd_url, 
-- then it will based on the url I hope use an api to
-- collect all the wnated details. Can be quite a lot of 
-- details. 

-- CREATE TABLE film_details (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     title TEXT,
--     year INTEGER,
--     director TEXT, 
--     writer TEXT,
--     budget REAL, 
--     imdb_rating REAL, 
--     letterboxd_url TEXT
--     );


INSERT INTO film_details
VALUES (
    1,
    'Nosferatu',
    2024,
    'Robert Eggers',
    'Robert Egger, Henrik Galeen, Bram Stoker',
    50000000,
    7.1,
    'https://boxd.it/f5eG'
);

INSERT INTO film_details
VALUES (
    2,
    'Jurassic Park',
    1993,
    'Steven Spielberg',
    'Michael Crichton, David Koepp',
    63000000,
    8.2,
    'https://boxd.it/2aA2'
);

INSERT INTO film_details
VALUES (
    3,
    'Shutter Island',
    2010,
    'Martin Scorsese',
    'Laeta Kalogridis, Dennis Lehane',
    80000000,
    8.2,
    'https://boxd.it/1U82'
);


