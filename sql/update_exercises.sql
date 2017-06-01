-- Album exercise
-- Update exercise

USE codeup_test_db;

# Original
SELECT 'All albums' AS '';
SELECT name
FROM albums;

# Update
UPDATE albums
SET sales = (sales * 10);

# Select update
SELECT name, sales
FROM albums;

# Original
SELECT 'All albums released before 1980' AS '';
SELECT name
FROM albums
WHERE release_date < 1980;

# Update
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

# Select update
SELECT name, release_date
FROM albums
WHERE release_date < 1980;

# Original
SELECT 'All albums by Michael Jackson' AS '';
SELECT name
FROM albums
WHERE artist LIKE '%Michael Jackson%';

# Update
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist LIKE '%Michael Jackson%';

# Select update
SELECT name, artist
FROM albums
WHERE artist LIKE '%Peter Jackson%';