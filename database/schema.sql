CREATE DATABASE IF NOT EXISTS ukrainian_routes
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE ukrainian_routes;

CREATE TABLE cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    slug VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    slug VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE places (
    id INT AUTO_INCREMENT PRIMARY KEY,

    city_id INT NOT NULL,
    category_id INT NOT NULL,

    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    address VARCHAR(255),

    latitude DECIMAL(10, 7) NOT NULL,
    longitude DECIMAL(10, 7) NOT NULL,

    duration_minutes INT NOT NULL DEFAULT 30,
    image VARCHAR(255),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (city_id) REFERENCES cities(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);