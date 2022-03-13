DROP DATABASE IF EXISTS blog_db;

CREATE DATABASE blog_db;

CREATE TABLE users (
    user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    username TEXT NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
)

CREATE TABLE posts (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title TEXT NOT NULL,
    FOREIGN KEY (author_user_id)
    REFERENCES users(user_id)
)