DROP DATABASE IF EXISTS piano_students;
CREATE DATABASE piano_students;
USE piano_students;

CREATE TABLE series (
    series_id INT AUTO_INCREMENT NOT NULL,
    series_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (series_id),
    UNIQUE (series_name)
);

CREATE TABLE category (
    category_id INT AUTO_INCREMENT NOT NULL,
    category_name VARCHAR(100) NOT NULL,
    series_id INT NOT NULL,
    PRIMARY KEY (category_id),
    FOREIGN KEY (series_id) REFERENCES series (series_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE level (
    level_id INT AUTO_INCREMENT NOT NULL,
    level_name VARCHAR(50) NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY (level_id),
    FOREIGN KEY (category_id) REFERENCES category (category_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE students (
    student_id INT AUTO_INCREMENT NOT NULL,
    student_first_name VARCHAR(50) NOT NULL,
    student_last_name VARCHAR(50) NOT NULL,
    student_age INT NOT NULL,
    phone_number VARCHAR(20) NULL,
    email VARCHAR(100) NULL,
    level_id INT NOT NULL,
    PRIMARY KEY (student_id),
    UNIQUE (email),
    CHECK (
        (email IS NOT NULL AND TRIM(email) <> '')
        OR (phone_number IS NOT NULL AND TRIM(phone_number) <> '')
    ),
    FOREIGN KEY (level_id) REFERENCES level (level_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE songs (
    song_id INT AUTO_INCREMENT NOT NULL,
    song_name VARCHAR(150) NOT NULL,
    composer_name VARCHAR(100) NOT NULL,
    arranger_name VARCHAR(100) NULL,
    book_name VARCHAR(150) NULL,
    level_id INT NOT NULL,
    PRIMARY KEY (song_id),
    FOREIGN KEY (level_id) REFERENCES level (level_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE skills (
    skill_id INT AUTO_INCREMENT NOT NULL,
    skill_name VARCHAR(100) NOT NULL,
    level_id INT NOT NULL,
    PRIMARY KEY (skill_id),
    FOREIGN KEY (level_id) REFERENCES level (level_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE song_skills (
    song_id INT NOT NULL,
    skill_id INT NOT NULL,
    PRIMARY KEY (song_id, skill_id),
    FOREIGN KEY (song_id) REFERENCES songs (song_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (skill_id) REFERENCES skills (skill_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);