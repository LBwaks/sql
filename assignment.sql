-- CREATE DATABASE IF NOT EXISTS Video_Reviews;
-- Check if the database exists
SELECT SCHEMA_NAME
FROM INFORMATION_SCHEMA.SCHEMATA
WHERE SCHEMA_NAME = 'Video_Reviews';
-- create database if does not exists 
CREATE DATABASE Video_Reviews;
-- CREATE TABLE Videos(
--     video_id INT NOT NULL AUTO_INCREMENT,
--     title VARCHAR(255) NOT NULL,
--     duration DECIMAL(5, 2) NOT NULL,
--     url_link VARCHAR(255) NOT NULL
--     CONSTRAINT PK_Videos PRIMARY KEY (video_id)
--     CONSTRAINT UC_Videos UNIQUE (video_id)
-- -- );