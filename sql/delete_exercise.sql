-- Albums exercise
-- Delete demo

USE codeup_test_db;

SELECT 'Albums released after 1991' AS '';
SELECT
  name,
  release_date
FROM albums
WHERE release_date > 1991;

SELECT 'Albums with the genre ''disco''' AS '';
SELECT
  name,
  genre
FROM albums
WHERE genre LIKE '%disco%';

SELECT 'Albums by ''Whitney Houston''' AS '';
SELECT
  name,
  artist
FROM albums
WHERE artist LIKE '%Whitney Houston%';