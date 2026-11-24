# Piano Students Database (`piano_students`)

Group final project for **NSCC DBAS 1007 (Database Systems)** built with **MariaDB** and **Microsoft Access**, documented via an **ERD** and **Data Dictionary**, and managed with **Git / GitHub**.

## Team Members
* Sean
* Natalie
* Didi

*All group members collaborated on the database design, normalization, documentation, and testing, dividing up the final write-ups and implementation deliverables.*

## Project Overview
The `piano_students` relational database tracks piano curriculum hierarchies, students, repertoire (`songs`), and technical skills (`skills`) across 7 normalized tables:
* `series` — Piano curriculum series (e.g., *Royal Conservatory of Music*, *Piano Adventures*, *Alfred Music*)
* `category` — Program categories within a series (e.g., *Basic Program*, *Older Beginner*, *Adult Program*)
* `level` — Specific grade or level within a category
* `students` — Student profiles, age, contact details (`phone_number` / `email`), and assigned `level_id`
* `songs` — Repertoire pieces, composers, optional arrangers/books, and target `level_id`
* `skills` — Technical piano skills associated with a `level_id`
* `song_skills` — Junction table mapping many-to-many relationships between `songs` and `skills`

## Repository Contents
* `piano_students.sql` — Creates the `piano_students` database, tables, keys, and constraints
* `test-data.sql` — Populates sample curriculum rows, students, songs, skills, and song-skill links
* `FinalDiagram.drawio` — Entity-Relationship Diagram (ERD)
* `Data Dictionary.xlsx` — Table and column specifications, data types, formats, and constraints
* `Why MariaDB is Optimal for our Database.docx` — Rationale for choosing MariaDB
* `.gitignore` — Ignores temporary Access lock files (`.laccdb`, `.ldb`) and OS/editor artifacts