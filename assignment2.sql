-- Create the Video_Reviews database schema
CREATE DATABASE  Video_Reviews;

-- Switch to the Video_Reviews schema
USE Video_Reviews;

-- Create the 'videos' table
CREATE TABLE EXISTS videos (
    video_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    length_minutes DECIMAL(5, 2) NOT NULL,
    url VARCHAR(255) NOT NULL
);

-- Insert at least three videos
INSERT INTO videos (title, length_minutes, url)
VALUES
    ('Video 1', 15.5, 'https://www.youtube.com/watch?v=video1'),
    ('Video 2', 22.0, 'https://www.youtube.com/watch?v=video2'),
    ('Video 3', 10.5, 'https://www.youtube.com/watch?v=video3');

-- Create the 'user_reviews' table
CREATE TABLE  EXISTS user_reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    rating DECIMAL(3, 1),
    text_review TEXT,
    video_id INT,
    FOREIGN KEY (video_id) REFERENCES videos(video_id)
);

-- Insert at least two reviews for each video
INSERT INTO user_reviews (user_name, rating, text_review, video_id)
VALUES
    ('Luis', 4.5, 'Great video!', 1),
    ('Sonya', 3.0, 'It was okay.', 1),
    ('David', 5.0, 'Awesome content!', 2),
    ('Alice', 2.5, 'Not my favorite.', 2),
    ('John', 4.0, 'Enjoyed it!', 3),
    ('Ella', 4.0, 'Informative.', 3);
