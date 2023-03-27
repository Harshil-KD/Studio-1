PRAGMA FOREIGN_KEYS = ON;

-- Creating Table 1: Parent Table .............

CREATE TABLE Parents(
Parent_ID TEXT NOT NULL PRIMARY KEY,
First_Name TEXT,
Last_Name TEXT,
Parent_Email TEXT,
Parent_Phone INTEGER,
Parent_Address TEXT
);

-- Creating Table 2: Student Table ..........

CREATE TABLE Student(
Student_ID TEXT NOT NULL PRIMARY KEY,
First_Name TEXT,
Last_Name TEXT,
Student_Email TEXT,
Student_Phone INTEGER,
Student_Address TEXT,
Student_Gender TEXT,
Student_DOB TEXT,
Parent_ID TEXT,
FOREIGN KEY (Parent_ID) REFERENCES Parents(Parent_ID)
);

-- Creating  Table 5: Academic Course ..........

CREATE TABLE Academic_Course(
Course_ID TEXT NOT NULL PRIMARY KEY,
Course_Name TEXT,
Teacher_Name TEXT,
Teacher_Email TEXT,
Day TEXT,
Start_Time TEXT,
End_Time TEXT,
Duration Integer
);

--Table 6: After School Activity-----------------

CREATE TABLE AfterSchoolActivity(
Activity_ID TEXT NOT NULL PRIMARY KEY,
Activity_Name TEXT ,
Activity_Description TEXT,
Activity_Instructor TEXT,
Activity_Instructors_Email TEXT,
Activity_Day TEXT,
Activity_Start_Time TEXT,
Activity_End_Time TEXT,
Activity_Address TEXT,
Duration Integer
);

-- Creating Table 4: Activity Enrollment Table ..........

CREATE TABLE Activity_Enrollment(
Student_ID TEXT,
Activity_ID TEXT,
Enrollment_Date1 TEXT,
FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
FOREIGN KEY (Activity_ID) REFERENCES AfterSchoolActivity(Activity_ID)
);


-- Creating  Table 3: AcademicCourse Enrollment Table

CREATE TABLE Course_Enrollment(
Student_ID TEXT,
Course_ID TEXT,
Enrollment_Date2 TEXT,
FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
FOREIGN KEY (Course_ID) REFERENCES Academic_Course(Course_ID)
);


.headers on
.mode columns

INSERT INTO Parents (Parent_ID, First_Name, Last_Name, Parent_Email, Parent_Phone, Parent_Address) VALUES
('P001', 'John', 'Smith', 'john.smith@email.com', 1234567890, '123 Main St'),
('P002', 'Jane', 'Doe', 'jane.doe@email.com', 2345678901, '456 Elm St'),
('P003', 'Bob', 'Johnson', 'bob.johnson@email.com', 3456789012, '789 Oak St'),
('P004', 'Emily', 'Lee', 'emily.lee@email.com', 4567890123, '321 Maple St'),
('P005', 'Mike', 'Brown', 'mike.brown@email.com', 5678901234, '654 Cedar St'),
('P006', 'Karen', 'Taylor', 'karen.taylor@email.com', 6789012345, '987 Pine St'),
('P007', 'David', 'Miller', 'david.miller@email.com', 7890123456, '159 Oak Ln'),
('P008', 'Sara', 'Clark', 'sara.clark@email.com', 8901234567, '357 Maple Ave'),
('P009', 'Eric', 'Garcia', 'eric.garcia@email.com', 9012345678, '753 Elm Ave'),
('P010', 'Jessica', 'Ramirez', 'jessica.ramirez@email.com', 1234567890, '951 Oak Ave');

INSERT INTO Student (Student_ID, First_Name, Last_Name, Student_Email, Student_Phone, Student_Address, Student_Gender, Student_DOB, Parent_ID) VALUES 
('S001', 'Emily', 'Smith', 'emily.smith@email.com', 1234567890, '123 Main St', 'Female', '2015-01-05', 'P001'),
('S002', 'Daniel', 'Lee', 'daniel.lee@email.com', 2345678901, '321 Maple St', 'Male', '2014-03-10', 'P004'),
('S003', 'Sophia', 'Johnson', 'sophia.johnson@email.com', 3456789012, '789 Oak St', 'Female', '2013-06-15', 'P003'),
('S004', 'Ava', 'Garcia', 'ava.garcia@email.com', 5678901234, '753 Elm Ave', 'Female', '2012-10-25', 'P009'),
('S005', 'William', 'Taylor', 'william.taylor@email.com', 6789012345, '987 Pine St', 'Male', '2013-12-30', 'P006'),
('S006', 'Olivia', 'Clark', 'olivia.clark@email.com', 7890123456, '357 Maple Ave', 'Female', '2016-02-01', 'P008'),
('S007', 'Michael', 'Miller', 'michael.miller@email.com', 1234567890, '159 Oak Ave', 'Male', '2011-09-16', 'P007'),
('S008', 'Daniel', 'Clark', 'daniel.clark@student.com', 7890123456, '357 MAple Ave', 'Male', '2012-10-27', 'P008'),
('S009', 'Madison', 'Garcia', 'madison.garcia@student.com', 8901234567, '753 Elm Ave', 'Female', '2013-09-13', 'P009'),
('S010', 'Lucas', 'Ramirez', 'lucas.ramirez@student.com', 9012345678, '951 Oak Ave', 'Male', '2014-04-08', 'P010'),
('S011', 'Sophia', 'Smith', 'sophia.smith@student.com', 3456789012, '123 Main St', 'Female', '2007-08-14', 'P001'),
('S012', 'James', 'Doe', 'james.doe@student.com', 4567890123, '456 Elm St', 'Male', '2008-10-03', 'P002'),
('S013', 'Emma', 'Lee', 'emma.lee@student.com', 5678901234, '321 Maple St', 'Female', '2009-05-12', 'P004'),
('S014', 'Oliver', 'Taylor', 'oliver.taylor@student.com', 6789012345, '987 Pine St', 'Male', '2010-11-08', 'P006'),
('S015', 'Mia', 'Garcia', 'mia.garcia@student.com', 7890123456, '753 Elm Ave', 'Female', '2011-03-21', 'P009'),
('S016', 'Aria', 'Brown', 'aria.brown@student.com', 9012345678, '654 Cedar St', 'Female', '2013-09-17', 'P005');

INSERT INTO Academic_Course (Course_ID, Course_Name, Teacher_Name, Teacher_Email, Day, Start_Time, End_Time, Duration) VALUES 
('C001', 'English Literature', 'Ms. Johnson', 'johnson@email.com', 'Monday', '9:00', '9:40', 40),
('C002', 'Algebra I', 'Mr. Smith', 'smith@email.com', 'Monday', '13:00', '13:40', 40),
('C003', 'Biology', 'Ms. Lee', 'lee@email.com', 'Tuesday', '9:00', '9:40', 40),
('C004', 'World History', 'Mr. Brown', 'brown@email.com', 'Tuesday', '13:00', '13:45', 45),
('C005', 'Chemistry', 'Mr. Garcia', 'garcia@email.com', 'Wednessday', '9:00', '9:45', 45),
('C006', 'French I', 'Ms. Ramirez', 'ramirez@email.com', 'Wednessday', '10:15', '11:00', 45),
('C007', 'Geometry', 'Ms. Taylor', 'taylor@email.com', 'Wednessday', '13:00', '13:45', 45),
('C008', 'Physics', 'Mr. Scott', 'scott@email.com', 'Thursday', '9:00', '9:40', 40),
('C009', 'US History', 'Mr. Johnson', 'johnson2@email.com', 'Thursday', '13:00', '13:40', 40),
('C010', 'Art', 'Ms. Clark', 'clark@email.com', 'Friday', '10:00', '10:45', 45);

INSERT INTO AfterSchoolActivity (Activity_ID, Activity_Name, Activity_Description, Activity_Instructor, Activity_Instructors_Email, Activity_Day, Activity_Start_Time, Activity_End_Time, Activity_Address, Duration) VALUES
('AS01', 'Basketball Club', 'Learn and practice basketball skills with other students', 'Coach Johnson', 'johnson@email.com', 'Monday', '16:00', '17:00', 'Gymnasium', 60),
('AS02', 'Drama Club', 'Learn acting and theatrical skills with other students', 'Mrs. Smith', 'smith@email.com', 'Monday', '17:00', '17:45', 'Auditorium', 45),
('AS03', 'Netball', 'Play and improve your netball skills', 'Sarah Lee', 'sarah.lee@example.com', 'Monday', '16:00', '17:00', '234 Maple Ave', 60),
('AS04', 'Chess Club', 'Learn and play chess with other students', 'Mr. Lee', 'lee@email.com', 'Tuesday', '16:00', '16:45', 'Classroom A', 45),
('AS05', 'Robotics Club', 'Learn and build robots with other students', 'Ms. Patel', 'patel@email.com', 'Tuesday', '17:00', '18:00', 'Science Lab', 60),
('AS06', 'Coding Club', 'Learn and practice coding with other students', 'Mr. Nguyen', 'nguyen@email.com', 'Wednessday', '16:00', '16:30', 'Computer Lab', 30),
('AS07', 'Debate Club', 'Learn and practice debate skills with other students', 'Ms. Rodriguez', 'rodriguez@email.com', 'Wednessday', '17:00', '17:45', 'Classroom B', 45),
('AS08', 'Art Club', 'Learn and create art with other students', 'Ms. Kim', 'kim@email.com', 'Thursday', '17:00', '17:30', 'Art Room', 30),
('AS09', 'Music Club', 'Learn and play music with other students', 'Mr. Davis', 'davis@email.com', 'Thursday', '17:45', '18:15', 'Music Room', 30),
('AS10', 'Surfing', 'Learn to surf and catch some waves', 'David Lee', 'david.lee@example.com', 'Thursday', '16:00', '17:00', '567 Pine St', 60),
('AS11', 'Gardening Club', 'Learn and garden with other students', 'Mrs. Jones', 'jones@email.com', 'Friday', '16:00', '16:30', 'School Garden', 30),
('AS12', 'Cooking Club', 'Learn and cook with other students', 'Ms. Garcia', 'garcia@email.com', 'Friday', '17:00', '18:00', 'Home Economics Room', 60),
('AS13', 'Skating', 'Learn to skate and improve your skills', 'John Smith', 'john.smith@example.com', 'Saturday', '10:00', '10:45', '123 Main St', 45),
('AS14', 'Swimming', 'Improve your swimming techniques and endurance', 'Jane Doe', 'jane.doe@example.com', 'Saturday', '11:15', '12:00', '456 Oak Ave', 45),
('AS15', 'Rugby', 'Learn and play rugby with your peers', 'Bob Johnson', 'bob.johnson@example.com', 'Saturday', '14:00', '15:00', '789 Elm St', 60),
('AS16', 'Volleyball', 'Play and improve your volleyball skills', 'Lisa Brown', 'lisa.brown@example.com', 'Sunday', '9:00', '9:45', '890 Cedar St', 45),
('AS17', 'Golf', 'Learn to play golf and improve your swing', 'Mike Davis', 'mike.davis@example.com', 'Sunday', '10:00', '10:45', '1234 Elm Ave', 45),
('AS18', 'Tennis', 'Improve your tennis skills and play with others', 'Karen Wilson', 'karen.wilson@example.com', 'Sunday', '13:00', '13:45', '5678 Pine Ave', 45),
('AS19', 'Cricket', 'Learn the basics', 'Ravi Shastri', 'ravi@example.com', 'Sunday', '13:45', '14:45', '1234 Elm Ave', 60);


INSERT INTO Course_Enrollment(Student_ID, Course_ID, Enrollment_Date2) VALUES
("S001", "C001", "7/2/2023"),
("S001", "C004", "7/2/2023"),
("S001", "C005", "7/2/2023"),
("S001", "C006", "7/2/2023"),
("S001", "C009", "7/2/2023"),
("S001", "C010", "7/2/2023"),
("S002", "C002", "7/2/2023"),
("S002", "C003", "7/2/2023"),
("S002", "C004", "7/2/2023"),
("S002", "C005", "7/2/2023"),
("S002", "C008", "7/2/2023"),
("S002", "C009", "7/2/2023"),
("S002", "C010", "7/2/2023"),
("S003", "C001", "7/2/2023"),
("S003", "C004", "7/2/2023"),
("S003", "C007", "7/2/2023"),
("S003", "C008", "7/2/2023"),
("S003", "C009", "7/2/2023"),
("S004", "C001", "7/2/2023"),
("S004", "C002", "7/2/2023"),
("S004", "C003", "7/2/2023"),
("S004", "C006", "7/2/2023"),
("S004", "C007", "7/2/2023"),
("S004", "C009", "7/2/2023"),
("S004", "C010", "7/2/2023"),
("S005", "C002", "7/2/2023"),
("S005", "C003", "7/2/2023"),
("S005", "C005", "7/2/2023"),
("S005", "C007", "7/2/2023"),
("S005", "C010", "7/2/2023"),
("S006", "C002", "7/2/2023"),
("S006", "C003", "7/2/2023"),
("S006", "C004", "7/2/2023"),
("S006", "C006", "7/2/2023"),
("S006", "C007", "7/2/2023"),
("S006", "C008", "7/2/2023"),
("S006", "C009", "7/2/2023"),
("S007", "C001", "7/2/2023"),
("S007", "C004", "7/2/2023"),
("S007", "C005", "7/2/2023"),
("S007", "C006", "7/2/2023"),
("S007", "C009", "7/2/2023"),
("S007", "C010", "7/2/2023"),
("S008", "C001", "7/2/2023"),
("S008", "C002", "7/2/2023"),
("S008", "C004", "7/2/2023"),
("S008", "C005", "7/2/2023"),
("S008", "C009", "7/2/2023"),
("S008", "C010", "7/2/2023"),
("S009", "C001", "7/2/2023"),
("S009", "C002", "7/2/2023"),
("S009", "C005", "7/2/2023"),
("S009", "C006", "7/2/2023"),
("S009", "C007", "7/2/2023"),
("S009", "C010", "7/2/2023"),
("S010", "C001", "7/2/2023"),
("S010", "C003", "7/2/2023"),
("S010", "C004", "7/2/2023"),
("S010", "C006", "7/2/2023"),
("S010", "C008", "7/2/2023"),
("S010", "C010", "7/2/2023"),
("S011", "C002", "7/2/2023"),
("S011", "C003", "7/2/2023"),
("S011", "C005", "7/2/2023"),
("S011", "C006", "7/2/2023"),
("S011", "C009", "7/2/2023"),
("S011", "C010", "7/2/2023"),
("S012", "C003", "7/2/2023"),
("S012", "C004", "7/2/2023"),
("S012", "C005", "7/2/2023"),
("S012", "C007", "7/2/2023"),
("S012", "C008", "7/2/2023"),
("S012", "C010", "7/2/2023"),
("S012", "C001", "7/2/2023"),
("S013", "C004", "7/2/2023"),
("S013", "C005", "7/2/2023"),
("S013", "C006", "7/2/2023"),
("S013", "C007", "7/2/2023"),
("S013", "C010", "7/2/2023"),
("S014", "C001", "7/2/2023"),
("S014", "C002", "7/2/2023"),
("S014", "C004", "7/2/2023"),
("S014", "C005", "7/2/2023"),
("S014", "C007", "7/2/2023"),
("S014", "C009", "7/2/2023"),
("S014", "C010", "7/2/2023"),
("S015", "C001", "7/2/2023"),
("S015", "C004", "7/2/2023"),
("S015", "C005", "7/2/2023"),
("S015", "C006", "7/2/2023"),
("S015", "C007", "7/2/2023"),
("S015", "C009", "7/2/2023"),
("S015", "C010", "7/2/2023"),
("S016", "C002", "7/2/2023"),
("S016", "C003", "7/2/2023"),
("S016", "C005", "7/2/2023"),
("S016", "C006", "7/2/2023"),
("S016", "C008", "7/2/2023"),
("S016", "C010", "7/2/2023");

INSERT INTO Activity_Enrollment(Student_ID, Activity_ID, Enrollment_Date1) VALUES
("S001", "AS01", "7/2/2023"),
("S001", "AS02", "7/2/2023"),
("S001", "AS05", "7/2/2023"),
("S001", "AS06", "7/2/2023"),
("S001", "AS07", "7/2/2023"),
("S001", "AS11", "7/2/2023"),
("S001", "AS12", "7/2/2023"),
("S001", "AS15", "7/2/2023"),
("S001", "AS16", "7/2/2023"),
("S001", "AS18", "7/2/2023"),
("S002", "AS03", "7/2/2023"),
("S002", "AS04", "7/2/2023"),
("S002", "AS07", "7/2/2023"),
("S002", "AS08", "7/2/2023"),
("S002", "AS11", "7/2/2023"),
("S002", "AS12", "7/2/2023"),
("S002", "AS15", "7/2/2023"),
("S002", "AS16", "7/2/2023"),
("S002", "AS17", "7/2/2023"),
("S003", "AS01", "7/2/2023"),
("S003", "AS02", "7/2/2023"),
("S003", "AS04", "7/2/2023"),
("S003", "AS07", "7/2/2023"),
("S003", "AS08", "7/2/2023"),
("S003", "AS09", "7/2/2023"),
("S003", "AS11", "7/2/2023"),
("S003", "AS14", "7/2/2023"),
("S003", "AS15", "7/2/2023"),
("S003", "AS16", "7/2/2023"),
("S003", "AS18", "7/2/2023"),
("S004", "AS01", "7/2/2023"),
("S004", "AS02", "7/2/2023"),
("S004", "AS03", "7/2/2023"),
("S004", "AS04", "7/2/2023"),
("S004", "AS06", "7/2/2023"),
("S004", "AS07", "7/2/2023"),
("S004", "AS09", "7/2/2023"),
("S004", "AS10", "7/2/2023"),
("S004", "AS13", "7/2/2023"),
("S004", "AS16", "7/2/2023"),
("S004", "AS17", "7/2/2023"),
("S004", "AS18", "7/2/2023"),
("S005", "AS02", "7/2/2023"),
("S005", "AS03", "7/2/2023"),
("S005", "AS06", "7/2/2023"),
("S005", "AS07", "7/2/2023"),
("S005", "AS10", "7/2/2023"),
("S005", "AS12", "7/2/2023"),
("S005", "AS13", "7/2/2023"),
("S005", "AS16", "7/2/2023"),
("S005", "AS17", "7/2/2023"),
("S005", "AS18", "7/2/2023"),
("S006", "AS03", "7/2/2023"),
("S006", "AS04", "7/2/2023"),
("S006", "AS05", "7/2/2023"),
("S006", "AS08", "7/2/2023"),
("S006", "AS09", "7/2/2023"),
("S006", "AS11", "7/2/2023"),
("S006", "AS13", "7/2/2023"),
("S006", "AS14", "7/2/2023"),
("S006", "AS15", "7/2/2023"),
("S006", "AS18", "7/2/2023"),
("S007", "AS01", "7/2/2023"),
("S007", "AS04", "7/2/2023"),
("S007", "AS06", "7/2/2023"),
("S007", "AS10", "7/2/2023"),
("S007", "AS11", "7/2/2023"),
("S007", "AS12", "7/2/2023"),
("S007", "AS13", "7/2/2023"),
("S007", "AS14", "7/2/2023"),
("S007", "AS15", "7/2/2023"),
("S008", "AS01", "7/2/2023"),
("S008", "AS02", "7/2/2023"),
("S008", "AS05", "7/2/2023"),
("S008", "AS06", "7/2/2023"),
("S008", "AS09", "7/2/2023"),
("S008", "AS10", "7/2/2023"),
("S008", "AS13", "7/2/2023"),
("S008", "AS14", "7/2/2023"),
("S009", "AS02", "7/2/2023"),
("S009", "AS03", "7/2/2023"),
("S009", "AS06", "7/2/2023"),
("S009", "AS07", "7/2/2023"),
("S009", "AS10", "7/2/2023"),
("S009", "AS11", "7/2/2023"),
("S009", "AS12", "7/2/2023"),
("S009", "AS15", "7/2/2023"),
("S009", "AS16", "7/2/2023"),
("S009", "AS18", "7/2/2023"),
("S010", "AS03", "7/2/2023"),
("S010", "AS04", "7/2/2023"),
("S010", "AS06", "7/2/2023"),
("S010", "AS08", "7/2/2023"),
("S010", "AS10", "7/2/2023"),
("S010", "AS11", "7/2/2023"),
("S010", "AS13", "7/2/2023"),
("S010", "AS15", "7/2/2023"),
("S011", "AS01", "7/2/2023"),
("S011", "AS02", "7/2/2023"),
("S011", "AS03", "7/2/2023"),
("S011", "AS07", "7/2/2023"),
("S011", "AS08", "7/2/2023"),
("S011", "AS16", "7/2/2023"),
("S011", "AS17", "7/2/2023"),
("S011", "AS18", "7/2/2023"),
("S012", "AS05", "7/2/2023"),
("S012", "AS06", "7/2/2023"),
("S012", "AS07", "7/2/2023"),
("S012", "AS08", "7/2/2023"),
("S012", "AS11", "7/2/2023"),
("S012", "AS12", "7/2/2023"),
("S012", "AS15", "7/2/2023"),
("S012", "AS16", "7/2/2023"),
("S012", "AS17", "7/2/2023"),
("S013", "AS02", "7/2/2023"),
("S013", "AS03", "7/2/2023"),
("S013", "AS04", "7/2/2023"),
("S013", "AS05", "7/2/2023"),
("S013", "AS06", "7/2/2023"),
("S013", "AS09", "7/2/2023"),
("S013", "AS10", "7/2/2023"),
("S013", "AS11", "7/2/2023"),
("S013", "AS14", "7/2/2023"),
("S013", "AS15", "7/2/2023"),
("S014", "AS01", "7/2/2023"),
("S014", "AS02", "7/2/2023"),
("S014", "AS03", "7/2/2023"),
("S014", "AS07", "7/2/2023"),
("S014", "AS08", "7/2/2023"),
("S014", "AS09", "7/2/2023"),
("S014", "AS12", "7/2/2023"),
("S014", "AS13", "7/2/2023"),
("S014", "AS14", "7/2/2023"),
("S014", "AS17", "7/2/2023"),
("S014", "AS18", "7/2/2023"),
("S015", "AS04", "7/2/2023"),
("S015", "AS05", "7/2/2023"),
("S015", "AS06", "7/2/2023"),
("S015", "AS10", "7/2/2023"),
("S015", "AS11", "7/2/2023"),
("S015", "AS15", "7/2/2023"),
("S015", "AS16", "7/2/2023"),
("S016", "AS01", "7/2/2023"),
("S016", "AS02", "7/2/2023"),
("S016", "AS04", "7/2/2023"),
("S016", "AS05", "7/2/2023"),
("S016", "AS06", "7/2/2023"),
("S016", "AS08", "7/2/2023"),
("S016", "AS09", "7/2/2023"),
("S016", "AS10", "7/2/2023"),
("S016", "AS13", "7/2/2023"),
("S016", "AS16", "7/2/2023"),
("S016", "AS17", "7/2/2023"),
("S016", "AS18", "7/2/2023");


-- Query 1: Viewing Student Personal info
SELECT 
    Student.Parent_ID,
    Student.Student_ID,
    Parents.Last_Name AS "Last Name",
    Parents.First_Name AS "Middle Name",
    Student.First_Name AS "First Name",
    Parents.Parent_Email,
    Student.Student_Email,
    Parents.Parent_Phone,
    Student.Student_Phone,
    Student.Student_DOB,
    Student.Student_Gender,
    Student.Student_Address
FROM Student
INNER JOIN Parents ON (Parents.Parent_ID = Student.Parent_ID)
ORDER BY Student.Student_ID DESC;

-- Query Not Working
SELECT
    Course_Enrollment.Student_ID,
    Student.First_Name,
    Student.Last_Name,
    Course_Enrollment.Course_ID, 
    Academic_Course.Course_Name,
    Academic_Course.Teacher_Name,
    Academic_Course.Teacher_Email,
    Academic_Course.Start_Time,
    Academic_Course.Duration,
    Academic_Course.End_Time,
    Activity_Enrollment.Student_ID,
    Activity_Enrollment.Activity_ID,
    AfterSchoolActivity.Activity_Name,
    AfterSchoolActivity.Activity_Description,
    AfterSchoolActivity.Activity_Start_Time,
    AfterSchoolActivity.Duration,
    AfterSchoolActivity.Activity_End_Time
FROM Course_Enrollment
INNER JOIN Academic_Course ON (Course_Enrollment.Course_ID = Academic_Course.Course_ID) 
INNER JOIN Student ON (Course_Enrollment.Student_ID = Student.Student_ID)
INNER JOIN Activity_Enrollment ON (Activity_Enrollment.Student_ID = Student.Student_ID)
INNER JOIN AfterSchoolActivity ON (AfterSchoolActivity.Activity_ID = Activity_Enrollment.Activity_ID)
WHERE Course_Enrollment.Student_ID = "S001";

--Query 3: View available courses
SELECT DISTINCT
    Academic_Course.Course_ID,
    Academic_Course.Course_Name,
    Academic_Course.Teacher_Name,
    Academic_Course.Teacher_Email,
    Academic_Course.Start_Time,
    Academic_Course.Duration,
    Academic_Course.End_Time
FROM Academic_Course
INNER JOIN Course_Enrollment ON (Course_Enrollment.Course_ID = Academic_Course.Course_ID)
WHERE Course_Enrollment.Student_ID NOT LIKE "S001";

--Query 4: View available activities
SELECT DISTINCT
    AfterSchoolActivity.Activity_ID,
    AfterSchoolActivity.Activity_Name,
    AfterSchoolActivity.Activity_Description,
    AfterSchoolActivity.Activity_Instructor,
    AfterSchoolActivity.Activity_Start_Time,
    AfterSchoolActivity.Duration,
    AfterSchoolActivity.Activity_End_Time
FROM AfterSchoolActivity
INNER JOIN Activity_Enrollment ON (Activity_Enrollment.Activity_ID = AfterSchoolActivity.Activity_ID)
WHERE Activity_Enrollment.Student_ID NOT LIKE "S001";

--Query 5: View Course Schedule
SELECT
    Course_Enrollment.Student_ID,
    Student.First_Name,
    Academic_Course.Course_Name,
    Academic_Course.Start_Time,
    Academic_Course.Duration,
    Academic_Course.End_Time
FROM Course_Enrollment
INNER JOIN Academic_Course ON (Course_Enrollment.Course_ID = Academic_Course.Course_ID)
INNER JOIN Student ON (Course_Enrollment.Student_ID = Student.Student_ID)
WHERE Student.Student_ID = "S001";

--Query 6: View Activity Schedule
SELECT
    Activity_Enrollment.Student_ID,
    Student.First_Name,
    AfterSchoolActivity.Activity_Name,
    AfterSchoolActivity.Activity_Start_Time,
    AfterSchoolActivity.Duration,
    AfterSchoolActivity.Activity_End_Time
FROM Activity_Enrollment
INNER JOIN AfterSchoolActivity ON (Activity_Enrollment.Activity_ID = AfterSchoolActivity.Activity_ID)
INNER JOIN Student ON (Activity_Enrollment.Student_ID = Student.Student_ID)
WHERE Student.Student_ID = "S001";

--Query 7: Search for other available activities that may be interested.
SELECT DISTINCT
    AfterSchoolActivity.Activity_ID,
    AfterSchoolActivity.Activity_Name,
    AfterSchoolActivity.Activity_Description,
    AfterSchoolActivity.Activity_Instructor,
    AfterSchoolActivity.Activity_Start_Time,
    AfterSchoolActivity.Duration,
    AfterSchoolActivity.Activity_End_Time
FROM AfterSchoolActivity
INNER JOIN Activity_Enrollment ON (Activity_Enrollment.Activity_ID = AfterSchoolActivity.Activity_ID)
WHERE Activity_Enrollment.Student_ID NOT LIKE "S001";

--Query 8: Search for other available courses
SELECT DISTINCT
    Academic_Course.Course_ID,
    Academic_Course.Course_Name,
    Academic_Course.Teacher_Name,
    Academic_Course.Teacher_Email,
    Academic_Course.Start_Time,
    Academic_Course.Duration,
    Academic_Course.End_Time
FROM Academic_Course
INNER JOIN Course_Enrollment ON (Academic_Course.Course_ID = Course_Enrollment.Course_ID)
WHERE Course_Enrollment.Student_ID NOT LIKE "S001";

--Query 9: Activity Popularity
SELECT
    Count(Activity_Enrollment.Student_ID) AS "No. of Students Enrolled",
    Activity_Enrollment.Activity_ID,
    AfterSchoolActivity.Activity_Name,
    AfterSchoolActivity.Activity_Description,
    AfterSchoolActivity.Activity_Instructor
FROM Activity_Enrollment
INNER JOIN AfterSchoolActivity ON (AfterSchoolActivity.Activity_ID = Activity_Enrollment.Activity_ID)
GROUP BY Activity_Enrollment.Activity_ID
ORDER BY Count(Activity_Enrollment.Student_ID) DESC;

--Query 10: Course Populaarity
SELECT
    Count(Course_Enrollment.Student_ID) AS "No. of Students Enrolled",
    Course_Enrollment.Course_ID,
    Academic_Course.Course_Name,
    Academic_Course.Teacher_Name
FROM Course_Enrollment
INNER JOIN Academic_Course ON (Course_Enrollment.Course_ID = Academic_Course.Course_ID)
GROUP BY Course_Enrollment.Course_ID
ORDER BY Count(Course_Enrollment.Student_ID) DESC;

--Query 11: Viewing, Updating Course Detail(For Teacher)
SELECT 
    *
FROM Academic_Course
WHERE Academic_Course.Teacher_Name = "Ms. Johnson";

UPDATE Academic_Course
SET Start_Time = "8:50"
WHERE Academic_Course.Course_ID = "C001";

UPDATE Academic_Course
SET End_Time = "9:30"
WHERE Academic_Course.Course_ID = "C001";

SELECT 
    *
FROM Academic_Course
WHERE Academic_Course.Teacher_Name = "Ms. Johnson";

--Query 12: Viewing, Deleting Activity
Select 
    * 
FROM AfterSchoolActivity
WHERE AfterSchoolActivity.Activity_Instructor = "Ravi Shastri";

DELETE FROM AfterSchoolActivity
WHERE Activity_ID = "AS19";

SELECT 
    * 
FROM AfterSchoolActivity;

--Query 13: Manage Course Enrollment
SELECT
    Course_Enrollment.Student_ID,
    Course_Enrollment.Course_ID,
    Academic_Course.Course_Name,
    Academic_Course.Teacher_Name
FROM Course_Enrollment
INNER JOIN Academic_Course ON (Course_Enrollment.Course_ID = Academic_Course.Course_ID)
WHERE Course_Enrollment.Course_ID = "C010";

DELETE FROM Course_Enrollment
WHERE Course_Enrollment.Student_ID = "S014";

SELECT
    Course_Enrollment.Student_ID,
    Course_Enrollment.Course_ID,
    Academic_Course.Course_Name,
    Academic_Course.Teacher_Name
FROM Course_Enrollment
INNER JOIN Academic_Course ON (Course_Enrollment.Course_ID = Academic_Course.Course_ID)
WHERE Course_Enrollment.Course_ID = "C010";


