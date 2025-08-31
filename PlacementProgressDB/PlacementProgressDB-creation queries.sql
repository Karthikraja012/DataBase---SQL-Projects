create database PlacementProgressDB ;
use PlacementProgressDB;
-- STUDENT MASTER TABLE
CREATE TABLE placementprogressdb.Student_table (
    RegisterNo VARCHAR(20) PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    YearOfStudy INT,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15) UNIQUE
);

-- ACADEMICS TABLE
CREATE TABLE placementprogressdb.Academics_table (
    AcadID INT PRIMARY KEY,
    Semester INT,
    GPA DECIMAL(3,2),
    CGPA DECIMAL(3,2),
    RegisterNo VARCHAR(20),
    FOREIGN KEY (RegisterNo) REFERENCES Student_table(RegisterNo)
);

-- TOOL SKILLS
CREATE TABLE placementprogressdb.ToolSkills_table (
    ToolID INT PRIMARY KEY,
    ToolName VARCHAR(50),
    ProficiencyLevel VARCHAR(50),
    RegisterNo VARCHAR(20),
    FOREIGN KEY (RegisterNo) REFERENCES Student_table(RegisterNo)
);

-- PROGRAMMING SKILLS
CREATE TABLE placementprogressdb.ProgrammingSkills_table (
    ProgID INT PRIMARY KEY,
    LanguageName VARCHAR(50),
    ProficiencyLevel VARCHAR(50),
    RegisterNo VARCHAR(20),
    FOREIGN KEY (RegisterNo) REFERENCES Student_table(RegisterNo)
);

-- SOFT SKILLS
CREATE TABLE placementprogressdb.SoftSkills_table (
    SoftID INT PRIMARY KEY,
    SkillName VARCHAR(50),
    ProficiencyLevel VARCHAR(50),
    RegisterNo VARCHAR(20),
    FOREIGN KEY (RegisterNo) REFERENCES Student_table(RegisterNo)
);

-- HARD SKILLS
CREATE TABLE placementprogressdb.HardSkills_table (
    HardID INT PRIMARY KEY,
    SkillName VARCHAR(50),
    ProficiencyLevel VARCHAR(50),
    RegisterNo VARCHAR(20),
    FOREIGN KEY (RegisterNo) REFERENCES Student_table(RegisterNo)
);

-- COMMUNICATION SKILLS (Linked with SoftSkills)
CREATE TABLE placementprogressdb.CommunicationSkills_table (
    CommID INT PRIMARY KEY,
    SkillType VARCHAR(50),
    ProficiencyLevel VARCHAR(50),
    RegisterNo VARCHAR(20),
    SoftID INT,
    FOREIGN KEY (RegisterNo) REFERENCES Student_table(RegisterNo),
    FOREIGN KEY (SoftID) REFERENCES SoftSkills_table(SoftID)
);

-- APTITUDE SKILLS (Linked with HardSkills)
CREATE TABLE placementprogressdb.AptitudeSkills_table (
    AptID INT PRIMARY KEY,
    SkillType VARCHAR(50),
    ProficiencyLevel VARCHAR(50),
    RegisterNo VARCHAR(20),
    HardID INT,
    FOREIGN KEY (RegisterNo) REFERENCES Student_table(RegisterNo),
    FOREIGN KEY (HardID) REFERENCES HardSkills_table(HardID)
);


INSERT INTO placementprogressdb.students_table(RegisterNo, Name, Department, YearOfStudy, Email, Phone)
VALUES 
('23BDA040', 'Karthik Raja', 'Data Science', 3, 'karthik@example.com', '9876543210'),
('23BDA041', 'Priya Sharma', 'Data Science', 2, 'priya.sharma@example.com', '9876501234'),
('23BDA042', 'Arun Kumar', 'Computer Science', 1, 'arun.k@example.com', '9876512345'),
('23BDA043', 'Meena Rani', 'Information Technology', 4, 'meena.rani@example.com', '9876523456'),
('23BDA044', 'Rahul Varma', 'Artificial Intelligence', 3, 'rahul.varma@example.com', '9876534567'),
('23BDA045', 'Sneha Iyer', 'Business Analytics', 2, 'sneha.iyer@example.com', '9876545678'),
('23BDA046', 'Vikram Singh', 'Data Science', 1, 'vikram.singh@example.com', '9876556789'),
('23BDA047', 'Ananya Gupta', 'Computer Science', 3, 'ananya.g@example.com', '9876567890'),
('23BDA048', 'Rohit Menon', 'Information Technology', 2, 'rohit.menon@example.com', '9876578901'),
('23BDA049', 'Divya Nair', 'Artificial Intelligence', 4, 'divya.nair@example.com', '9876589012');

INSERT INTO placementprogressdb.Academics_table(AcademicID, Semester, RegisterNo, GPA, CGPA)
VALUES
(1, 5, '23BDA040', 8.5, 8.2),
(2, 3, '23BDA041', 8.2, 8.0),
(3, 1, '23BDA042', 7.8, 7.8),
(4, 7, '23BDA043', 8.9, 8.4),
(5, 5, '23BDA044', 9.1, 8.7),
(6, 3, '23BDA045', 8.0, 7.9),
(7, 1, '23BDA046', 7.5, 7.5),
(8, 5, '23BDA047', 8.4, 8.1),
(9, 3, '23BDA048', 7.9, 7.8),
(10, 7, '23BDA049', 9.0, 8.6);



INSERT INTO placementprogressdb.toolskills_table (ToolID, ToolName, RegisterNo, ProficiencyLevel)
VALUES
(1, 'PowerBI', '23BDA040', 'Intermediate'),
(2, 'Python', '23BDA040', 'Advanced'),
(3, 'SQL', '23BDA041', 'Beginner'),
(4, 'Excel', '23BDA041', 'Intermediate'),
(5, 'Tableau', '23BDA042', 'Beginner'),
(6, 'R', '23BDA042', 'Beginner'),
(7, 'Python', '23BDA043', 'Advanced'),
(8, 'SQL', '23BDA043', 'Advanced'),
(9, 'Excel', '23BDA044', 'Advanced'),
(10, 'PowerBI', '23BDA044', 'Intermediate'),
(11, 'Python', '23BDA045', 'Intermediate'),
(12, 'Tableau', '23BDA045', 'Intermediate'),
(13, 'R', '23BDA046', 'Beginner'),
(14, 'Excel', '23BDA046', 'Beginner'),
(15, 'Python', '23BDA047', 'Advanced'),
(16, 'SQL', '23BDA047', 'Intermediate'),
(17, 'PowerBI', '23BDA048', 'Beginner'),
(18, 'Excel', '23BDA048', 'Intermediate'),
(19, 'Python', '23BDA049', 'Advanced'),
(20, 'Tableau', '23BDA049', 'Advanced');


INSERT INTO placementprogressdb.programmingskills_table (
ProgID, 
LanguageName ,
ProficiencyLevel , 
RegisterNo)
 VALUES
(1, 'Python', 'Advanced', '23BDA040'),
(2, 'R', 'Intermediate', '23BDA040'),
(3, 'C++', 'Beginner', '23BDA041'),
(4, 'Java', 'Intermediate', '23BDA041'),
(5, 'SQL', 'Advanced', '23BDA042'),
(6, 'Python', 'Intermediate', '23BDA042'),
(7, 'Java', 'Advanced', '23BDA043'),
(8, 'C', 'Intermediate', '23BDA043'),
(9, 'Python', 'Intermediate', '23BDA044'),
(10, 'R', 'Beginner', '23BDA044'),
(11, 'C++', 'Intermediate', '23BDA045'),
(12, 'SQL', 'Intermediate', '23BDA045'),
(13, 'Java', 'Beginner', '23BDA046'),
(14, 'Python', 'Intermediate', '23BDA046'),
(15, 'R', 'Advanced', '23BDA047'),
(16, 'SQL', 'Advanced', '23BDA047'),
(17, 'Python', 'Beginner', '23BDA048'),
(18, 'C', 'Intermediate', '23BDA048'),
(19, 'Java', 'Advanced', '23BDA049'),
(20, 'SQL', 'Intermediate', '23BDA049');







INSERT INTO placementprogressdb.softskills_table(SoftID , 
SkillName, 
ProficiencyLevel, 
RegisterNo) VALUES
(1, 'Communication', 'Advanced', '23BDA040'),
(2, 'Teamwork', 'Intermediate', '23BDA040'),
(3, 'Problem Solving', 'Advanced', '23BDA041'),
(4, 'Adaptability', 'Intermediate', '23BDA041'),
(5, 'Time Management', 'Advanced', '23BDA042'),
(6, 'Leadership', 'Beginner', '23BDA042'),
(7, 'Critical Thinking', 'Advanced', '23BDA043'),
(8, 'Creativity', 'Intermediate', '23BDA043'),
(9, 'Decision Making', 'Advanced', '23BDA044'),
(10, 'Conflict Resolution', 'Intermediate', '23BDA044'),
(11, 'Work Ethic', 'Advanced', '23BDA045'),
(12, 'Teamwork', 'Intermediate', '23BDA045'),
(13, 'Communication', 'Beginner', '23BDA046'),
(14, 'Adaptability', 'Intermediate', '23BDA046'),
(15, 'Leadership', 'Advanced', '23BDA047'),
(16, 'Time Management', 'Advanced', '23BDA047'),
(17, 'Problem Solving', 'Intermediate', '23BDA048'),
(18, 'Creativity', 'Beginner', '23BDA048'),
(19, 'Decision Making', 'Advanced', '23BDA049'),
(20, 'Work Ethic', 'Intermediate', '23BDA049');



insert into placementprogressdb.hardskills_table(
HardID ,
SkillName ,
ProficiencyLevel , 
RegisterNo ) VALUES
(1, 'Data Analysis', 'Advanced', '23BDA040'),
(2, 'Machine Learning', 'Intermediate', '23BDA040'),
(3, 'Database Management', 'Advanced', '23BDA041'),
(4, 'Data Visualization', 'Intermediate', '23BDA041'),
(5, 'Cloud Computing', 'Beginner', '23BDA042'),
(6, 'Cybersecurity Basics', 'Intermediate', '23BDA042'),
(7, 'Web Development', 'Advanced', '23BDA043'),
(8, 'Software Testing', 'Intermediate', '23BDA043'),
(9, 'Big Data Tools', 'Advanced', '23BDA044'),
(10, 'ETL Processes', 'Intermediate', '23BDA044'),
(11, 'Statistical Modeling', 'Advanced', '23BDA045'),
(12, 'Data Warehousing', 'Intermediate', '23BDA045'),
(13, 'Cloud Platforms (AWS)', 'Beginner', '23BDA046'),
(14, 'Data Cleaning', 'Intermediate', '23BDA046'),
(15, 'Natural Language Processing', 'Advanced', '23BDA047'),
(16, 'Deep Learning', 'Intermediate', '23BDA047'),
(17, 'Networking Fundamentals', 'Beginner', '23BDA048'),
(18, 'Operating Systems', 'Intermediate', '23BDA048'),
(19, 'Business Intelligence Tools', 'Advanced', '23BDA049'),
(20, 'Data Mining', 'Intermediate', '23BDA049');



insert into placementprogressdb.communicationskills_table(
CommID ,
SkillType , 
ProficiencyLevel ,
RegisterNo ,
SoftID ) 
VALUES
(1, 'Verbal Communication', 'Advanced', '23BDA040', 1),
(2, 'Written Communication', 'Intermediate', '23BDA040', 2),
(3, 'Presentation Skills', 'Advanced', '23BDA041', 3),
(4, 'Active Listening', 'Intermediate', '23BDA041', 4),
(5, 'Public Speaking', 'Advanced', '23BDA042', 5),
(6, 'Negotiation', 'Beginner', '23BDA042', 6),
(7, 'Email Etiquette', 'Advanced', '23BDA043', 7),
(8, 'Group Discussion', 'Intermediate', '23BDA043', 8),
(9, 'Verbal Communication', 'Advanced', '23BDA044', 9),
(10, 'Presentation Skills', 'Intermediate', '23BDA044', 10),
(11, 'Written Communication', 'Advanced', '23BDA045', 11),
(12, 'Public Speaking', 'Intermediate', '23BDA045', 12),
(13, 'Active Listening', 'Beginner', '23BDA046', 13),
(14, 'Email Etiquette', 'Intermediate', '23BDA046', 14),
(15, 'Negotiation', 'Advanced', '23BDA047', 15),
(16, 'Group Discussion', 'Advanced', '23BDA047', 16),
(17, 'Verbal Communication', 'Intermediate', '23BDA048', 17),
(18, 'Presentation Skills', 'Beginner', '23BDA048', 18),
(19, 'Written Communication', 'Advanced', '23BDA049', 19),
(20, 'Public Speaking', 'Intermediate', '23BDA049', 20);


INSERT INTO placementprogressdb.aptitudeskills_table(
AptID ,
SkillType , 
ProficiencyLevel , 
RegisterNo , 
HardID )

VALUES
(1, 'Quantitative Ability', 'Advanced', '23BDA040', 1),
(2, 'Logical Reasoning', 'Intermediate', '23BDA040', 2),
(3, 'Numerical Ability', 'Advanced', '23BDA041', 3),
(4, 'Data Interpretation', 'Intermediate', '23BDA041', 4),
(5, 'Analytical Thinking', 'Beginner', '23BDA042', 5),
(6, 'Problem Solving', 'Intermediate', '23BDA042', 6),
(7, 'Critical Reasoning', 'Advanced', '23BDA043', 7),
(8, 'Puzzles', 'Intermediate', '23BDA043', 8),
(9, 'Quantitative Ability', 'Advanced', '23BDA044', 9),
(10, 'Data Interpretation', 'Intermediate', '23BDA044', 10),
(11, 'Logical Reasoning', 'Advanced', '23BDA045', 11),
(12, 'Analytical Thinking', 'Intermediate', '23BDA045', 12),
(13, 'Problem Solving', 'Beginner', '23BDA046', 13),
(14, 'Numerical Ability', 'Intermediate', '23BDA046', 14),
(15, 'Critical Reasoning', 'Advanced', '23BDA047', 15),
(16, 'Puzzles', 'Advanced', '23BDA047', 16),
(17, 'Quantitative Ability', 'Intermediate', '23BDA048', 17),
(18, 'Analytical Thinking', 'Beginner', '23BDA048', 18),
(19, 'Logical Reasoning', 'Advanced', '23BDA049', 19),
(20, 'Data Interpretation', 'Intermediate', '23BDA049', 20);



