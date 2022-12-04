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
VALUES ("11:50 AM", "CS 105", 1391, "2:15 PM", 0, 0, 0, 0, 0, 1, 0, 111111234, 40, 105);


INSERT INTO section(begin_time, classroom, course_number, end_time, monday, tuesday, wednesday, thursday, friday, saturday, sunday, instructor, number_of_seats, section_number)
VALUES ("5:50 PM", "MH 302", 2257, "7:30 PM", 1, 0, 1, 0, 0, 0, 0, 111111234, 30, 303);

-- ==================================================================================

-- ==================== ENROLLMENT RECORDS ==========================================
-- Section ID was not consistent with increment, (Possibly caused when updating a record)
-- so section_id may be different when transferring
-- (Updated after 11/27/2022, above issues have been rectfied)

INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (1231, 123, 12345677, "C");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (1383, 101, 12345677, "B");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (1391, 105, 12345677, "A+");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (1266, 113, 12345677, "A-");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (2233, 123, 12345671, "B");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (1231, 123, 12345671, "C+");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (2257, 303, 12345671, "D+");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (2233, 124, 12345672, "B+");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (1383, 101, 12345672, "A");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (1391, 105, 12345673, "C");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (2233, 123, 12345674, "B-");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (1231, 222, 12345674, "A");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (2257, 303, 12345674, "B+");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (1266, 113, 12345674, "A");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (2233, 124, 12345675, "C-");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (1231, 222, 12345675, "B+");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (1231, 123, 12345676, "B-");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (2233, 123, 12345676, "A+");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (2257, 303, 12345678, "B");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (1383, 101, 12345678, "A-");


INSERT INTO enrollment(course_number, section_number, stu_cwid, grade)
VALUES (1383, 101, 12345673, "A-");


-- ==================================================================================

-- =================== (SECTION TABLE) ==============================================

USE Univeristy;

CREATE TABLE section (course_number INT, section_number INT, classroom VARCHAR(32), number_of_seats INT, begin_time VARCHAR(16), end_time VARCHAR(16),
instructor INT, monday BIT NOT NULL DEFAULT 0, tuesday BIT NOT NULL DEFAULT 0, wednesday BIT NOT NULL DEFAULT 0, thursday BIT NOT NULL DEFAULT 0,
friday BIT NOT NULL DEFAULT 0, saturday BIT NOT NULL DEFAULT 0, sunday BIT NOT NULL DEFAULT 0, PRIMARY KEY (section_number, course_number) );


ALTER TABLE section
ADD CONSTRAINT fk_course_number FOREIGN KEY (course_number)
REFERENCES course(course_number) ON DELETE CASCADE


ALTER TABLE section
ADD CONSTRAINT fk_instructor FOREIGN KEY (instructor)
REFERENCES professor(professor_ssn) ON DELETE CASCADE


CREATE UNIQUE INDEX idx_course_number_section_number ON section(course_number, section_number)


-- ==================================================================================

-- =================== (ENROLLMENT TABLE) ===========================================

USE University;

CREATE TABLE enrollment (course_number INT, section_number INT, stu_cwid INT, grade VARCHAR(4), PRIMARY KEY (course_number, section_number, stu_cwid));


ALTER TABLE enrollment
ADD CONSTRAINT fk_enroll_course_number FOREIGN KEY (course_number, section_number)
REFERENCES section(course_number, section_number) ON DELETE CASCADE


ALTER TABLE enrollment
ADD CONSTRAINT fk_student_cwid FOREIGN KEY (stu_cwid)
REFERENCES student(cwid) ON DELETE CASCADE


-- ==================================================================================

-- ================= DELETE EXAMPLE (Delete a row) ==================================
-- This should delete from enrollment table the record where section number = 222

DELETE FROM enrollment WHERE section_number = 222;

-- ==================================================================================

-- ================= FOR THE PROFESSORS Section =====================================
-- (Part B needs revisions)
-- (Part B should be fixed now!)

-- A.
SELECT prof.title, sect.classroom, sect.monday, sect.tuesday, sect.wednesday, sect.thursday, sect.friday, sect.saturday, sect.sunday , sect.begin_time, sect.end_time FROM professor prof, section sect
WHERE prof.professor_ssn = 111111234
AND prof.professor_ssn = sect.instructor;

-- B.
SELECT DISTINCT grade, count(grade) FROM enrollment enroll
WHERE enroll.course_number = 1383 AND enroll.section_number = 101
GROUP BY enroll.grade;


-- ==================================================================================

-- =============== FOR THE STUDENTS section =========================================
-- (This probably needs revisions)
-- (Tested and works well!)

-- A
SELECT sect.section_number, sect.classroom, sect.monday, sect.tuesday, sect.wednesday, sect.thursday, sect.friday, sect.saturday, sect.sunday, sect.begin_time, sect.end_time, count(enroll.stu_cwid) FROM section sect, enrollment enroll
WHERE enroll.course_number = 2233 AND sect.course_number = 2233
AND enroll.course_number = sect.course_number
GROUP BY sect.section_number;

-- B
SELECT enroll.course_number, enroll.grade FROM enrollment enroll
WHERE enroll.stu_cwid = 12345678;

-- =================================================================================

-- ==================== TESTING ====================================================

SELECT cour.course_number, sect.classroom, CAST(sect.monday IN (1) AS UNSIGNED), CAST(sect.tuesday IN (1) AS UNSIGNED), CAST(sect.wednesday IN (1) AS UNSIGNED), CAST(sect.thursday IN (1) AS UNSIGNED), CAST(sect.friday IN (1) AS UNSIGNED), CAST(sect.saturday IN (1) AS UNSIGNED), CAST(sect.sunday IN (1) AS UNSIGNED) , sect.begin_time, sect.end_time FROM professor prof, section sect, course cour
WHERE prof.professor_ssn = sect.instructor AND cour.course_number = sect.course_number AND prof.professor_ssn= 111111234;

SELECT CAST(monday IN (1) as UNSIGNED) FROM section;

-- ================================================================================

-- =================== TESTING 2 ==================================================

<html>
<body>

<?php
// username and password need to be replaced by your username and password
// dbname is the same as your username

$link = mysqli_connect('mariadb', 'cs332g16', 'cHK7FZ21','cs332g16');
if (!$link) {
  die('Could not connect: ' . mysql_error());
  }

echo 'Connected successfully<p>';

$query = "SELECT cour.course_title, sect.classroom, sect.monday, sect.tuesday, sect.wednesday, sect.thursday, sect.friday, sect.saturday, sect.sunday, sect.begin_time, sect.end_time FROM course cour, section sect, professor prof WHERE cour.course_number = sect.course_number AND prof.professor_ssn =" . $_POST["professor_ssn"];
$result = $link->query($query);
$nor=$result->num_rows;
for($i=0; $i<$nor; $i++)
{
$row=$result->fetch_assoc();

printf("Class Title: %s<br>", $row["course_title"]);

printf("Days: ");

if ($row["monday"]) {
printf("Monday ");
}
if ($row["tuesday"]) {
printf("Tuesday ");
}
if ($row["wednesday"]) {
printf("Wednesday ");
}
if ($row["thursday"]) {
printf("Thursday ");
}
if ($row["friday"]) {
printf("Friday ");
}
if ($row["saturday"]) {
printf("Saturday ");
}
if ($row["sunday"]) {
printf("Sunday");
}

printf("<br>");
printf("Classroom: %s<br>", $row["classroom"]);
printf("Begin: %s - End: %s<br><br>", $row["begin_time"], $row["end_time"]);
}

$result->free_result();
$link->close();

?>

</body>

</html>


-- =====================================================================

