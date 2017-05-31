-- Albums exercise
-- Demo select

USE codeup_test_db;

SELECT name AS 'The name of all Pink Floyd albums'
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released'
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'Neverminds''s genre'
FROM albums
WHERE name = 'Nevermind';

SELECT name AS 'Albums released in the 90''s'
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT name AS 'Albums with less than 20 million sales'
FROM albums
WHERE sales < 20;

SELECT name AS 'All albums that are ONLY rock'
FROM albums
WHERE genre = 'rock';
# This will only give albums that are just rock, not rock, and pop, or any combination thereof