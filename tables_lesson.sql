-- Tables lesson

USE codeup_test_db;

CREATE TABLE airport(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  airport_code CHAR(3) NOT NULL,
  location VARCHAR(255),
  description TEXT
)