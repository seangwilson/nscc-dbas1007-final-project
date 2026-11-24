USE piano_students;

-- Series
INSERT INTO series (series_id, series_name) VALUES
    (1, 'Royal Conservatory of Music'),
    (2, 'Piano Adventures'),
    (3, 'Alfred Music');

-- Category
INSERT INTO category (category_id, category_name, series_id) VALUES
    (1, 'Basic Program', 1),
    (2, 'Basic Program', 2),
    (3, 'Older Beginner', 2),
    (4, 'Adult Program', 2),
    (5, 'Basic Program', 3),
    (6, 'Adult Program', 3);

-- Level
INSERT INTO level (level_id, level_name, category_id) VALUES
    (1, 'Prep A', 1),
    (2, 'Prep B', 1),
    (3, 'Level 1', 1),
    (4, 'Level 2', 1),
    (5, 'Level 3', 1),
    (6, 'Level 4', 1),
    (7, 'Level 5', 1),
    (8, 'Level 6', 1),
    (9, 'Level 7', 1),
    (10, 'Level 8', 1),
    (11, 'Primer', 2),
    (12, 'Level 1', 2),
    (13, 'Level 2A', 2),
    (14, 'Level 2B', 2),
    (15, 'Level 3A', 2),
    (16, 'Level 3B', 2),
    (17, 'Level 4', 2),
    (18, 'Level 5', 2),
    (19, 'Level 1', 3),
    (20, 'Level 2', 3),
    (21, 'Level 1', 4),
    (22, 'Level 2', 4),
    (23, 'Level 1A', 5),
    (24, 'Level 1B', 5),
    (25, 'Level 2', 5),
    (26, 'Level 3', 5),
    (27, 'Level 4', 5),
    (28, 'Level 5', 5),
    (29, 'Level 6', 5),
    (30, 'Level 1', 6),
    (31, 'Level 2', 6),
    (32, 'Level 3', 6);

-- Students
INSERT INTO students (student_id, student_first_name, student_last_name, student_age, phone_number, email, level_id) VALUES
    (1, 'Natalie', 'Pianolady', 20, '902-555-5555', 'pianoqueen@gmail.com', 10),
    (2, 'Sean', 'Allthumbs', 45, NULL, 'nophone@hotmail.com', 1),
    (3, 'Didi', 'Musicgenius', 30, '902-556-5555', NULL, 13);

-- Songs
INSERT INTO songs (song_id, song_name, composer_name, arranger_name, book_name, level_id) VALUES
 (1, "My Daydream", "Crystal Bowman","Nancy Faber", NULL,  13 ),
 (2, "Pirate of the North Sea", "Nancy Faber", NULL, NULL, 13 ),
 (3, "Rockets", "Morton Manus", NULL, NULL, 30 ),
 (4, "Lone Star Waltz", "Amanda Lethco", NULL, NULL, 30 );

-- Skills
INSERT INTO skills (skill_id, skill_name, level_id) VALUES
(1, "Eighth Notes", 13 ),
(2, "A Major Hand Position", 13 ),
(3, "Sharps and Flats", 30 ),
(4, "C Major Triads", 30 );

-- Song_Skills
INSERT INTO song_skills (song_id, skill_id) VALUES
    (1,1),
    (1,2),
    (2,1),
    (2,4);