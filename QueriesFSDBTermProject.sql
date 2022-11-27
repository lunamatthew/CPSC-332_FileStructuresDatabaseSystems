-- Queries for the File Systems and Database class term project

-- ================= STUDENT RECORDS ================================================
-- (cwid PK or Primary Key should be made a string for less storage space/faster retrieval?)

INSERT INTO student(cwid, first_name, last_name, major, student_address, tel_number)
VALUES (012345678, "Sebastian", "Yarrick", 1, "123 Operating Systems St", "9491234567");


INSERT INTO student(cwid, first_name, last_name, major, student_address, tel_number)
VALUES (012345677, "John", "Holt", 2, "542 Kernel St", "4994991234");


INSERT INTO student(cwid, first_name, last_name, major, student_address, tel_number)
VALUES (012345676, "Frederick", "Bizmark", 1, "112 West Database Av", "1112223333");


INSERT INTO student(cwid, first_name, last_name, major, student_address, tel_number)
VALUES (012345675, "Otto", "Lichtenburg", 1, "225 East Memory Leak", "9990001111");


INSERT INTO student(cwid, first_name, last_name, major, student_address, tel_number)
VALUES (012345674, "Ashley", "Summers", 2, "321 Red Black Tree Way", "7145553333");


INSERT INTO student(cwid, first_name, last_name, major, student_address, tel_number)
VALUES (012345673, "Heather", "Light", 2, "421 Debian Linux St", "6162419292");


INSERT INTO student(cwid, first_name, last_name, major, student_address, tel_number)
VALUES (012345672, "Zaya", "Higgins", 1, "335 Compilers Ln", "7142520110");


INSERT INTO student(cwid, first_name, last_name, major, student_address, tel_number)
VALUES (012345671, "Adam", "Smith", 1, "212 Algorithm Av", "9491114444");

-- ==================================================================================

-- =============== Example of using UPDATE to change a record =======================
-- (This goes into the students table, and for the record with cwid 012345677, changes
--      the tel_number to 49939929999)

UPDATE students
SET tel_number = "49939929999"
WHERE cwid = 012345677

-- ==================================================================================

-- ======================= COURSE RECORDS ===========================================
-- (course_number (PK or Primary Key) should be made a string to take letters?)

INSERT INTO course(course_number, course_title, department, textbook, units)
VALUES (1231, "Operating Systems", 1, "Operating Systems & You! by Jannus Tillman", 3);


INSERT INTO course(course_number, course_title, department, textbook, units)
VALUES (1266, "Cybersecuirty Fundamentals", 1, "Cybersecurity & Malware by John Smith", 3);


INSERT INTO course(course_number, course_title, department, textbook, units)
VALUES (1383, "File Systems & Database Design", 1, "Database Systems & Data Science Principles by Henry Myers", 4);


INSERT INTO course(course_number, course_title, department, textbook, units)
VALUES (1391, "Algorithm Engineering", 1, "Algorithm Structures In Computer Science by Natalie Chang", 5);


INSERT INTO course(course_number, course_title, department, textbook, units)
VALUES (2233, "Calculus 2", 2, "Mathematical Studies in Calculus by Michael Yu", 4);


INSERT INTO course(course_number, course_title, department, textbook, units)
VALUES (2257, "Linear Algebra", 2, "Linear Algebra Practices by Tom Woods", 4);

-- ==================================================================================

-- ===================== SECTION RECORDS ============================================
-- (section_number is auto increment, meaning we dont need to put a value. However, this is marked
-- as the primary key PK for section. Isn't this not necessary because section is a weak entity...
-- it is dependent on the key coming from Course, there cannot be a section without a corresponding course...)
-- I believe that section_number should be the weak entity key with course_number being the key that is apart of
-- the primary key, as it is dependent (owned) by course. I think section_number is not necessary and is wrong perhaps

INSERT INTO section(begin_time, classroom, course_number, end_time, monday, tuesday, wednesday, thursday, friday, saturday, sunday, instructor, number_of_seats, section_number)
VALUES ("11:30 AM", "CS 301", 1231, "2:00 PM", 1, 0, 1, 0, 0, 0, 0, 111111234, 45, 123);


INSERT INTO section(begin_time, classroom, course_number, end_time, monday, tuesday, wednesday, thursday, friday, saturday, sunday, instructor, number_of_seats, section_number)
VALUES ("1:15 PM", "MH 213", 2233, "4:00 PM", 0, 1, 0, 1, 0, 0, 0, 123111236, 35, 121);


INSERT INTO section(begin_time, classroom, course_number, end_time, monday, tuesday, wednesday, thursday, friday, saturday, sunday, instructor, number_of_seats, section_number)
VALUES ("1:15 PM", "MH 213", 2233, "4:00 PM", 1, 0, 1, 0, 0, 0, 0, 123111236, 35, 124);


INSERT INTO section(begin_time, classroom, course_number, end_time, monday, tuesday, wednesday, thursday, friday, saturday, sunday, instructor, number_of_seats, section_number)
VALUES ("3:00 PM", "CS 101", 1266, "5:00 PM", 1, 0, 1, 0, 1, 0, 0, 321111235, 60, 113);


INSERT INTO section(begin_time, classroom, course_number, end_time, monday, tuesday, wednesday, thursday, friday, saturday, sunday, instructor, number_of_seats, section_number)
VALUES ("8:00 AM", "CS 201", 1383, "12:30 PM", 1, 0, 0, 0, 1, 0, 0, 321111235, 50, 101);


INSERT INTO section(begin_time, classroom, course_number, end_time, monday, tuesday, wednesday, thursday, friday, saturday, sunday, instructor, number_of_seats, section_number)
VALUES ("11:50 AM", "CS 105", 1391, "2:15 PM", 0, 0, 0, 0, 0, 2, 0, 111111234, 40, 105);


INSERT INTO section(begin_time, classroom, course_number, end_time, monday, tuesday, wednesday, thursday, friday, saturday, sunday, instructor, number_of_seats, section_number)
VALUES ("5:50 PM", "MH 302", 2257, "7:30 PM", 1, 0, 1, 0, 0, 0, 0, 111111234, 30, 303);

-- ==================================================================================

-- ==================== ENROLLMENT RECORDS ==========================================
-- Section ID was not consistent with increment, (Possibly caused when updating a record)
-- so section_id may be different when transferring

INSERT INTO enrollment(section_id, student_id, grade)
VALUES (1, 012345678, "B-");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (2, 012345678, "A+");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (6, 012345678, "C+");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (5, 012345678, "B");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (6, 012345677, "D");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (7, 012345677, "C+");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (8, 012345677, "B");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (1, 012345677, "A");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (2, 012345677, "A+");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (5, 012345676, "A+");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (7, 012345676, "B-");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (8, 012345675, "C-");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (4, 012345674, "D+");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (6, 012345674, "A");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (1, 012345673, "B");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (5, 012345673, "A");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (7, 012345673, "A+");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (2, 012345672, "C+");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (8, 012345672, "B");


INSERT INTO enrollment(section_id, student_id, grade)
VALUES (4, 012345671, "A+");


-- ==================================================================================


