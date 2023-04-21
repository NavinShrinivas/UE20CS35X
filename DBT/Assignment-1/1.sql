-- CREATE DATABASE Electives;
-- USE Electives;
-- DROP TABLE IF EXISTS teacher_info;
-- DROP TABLE IF EXISTS student_electives;
-- DROP TABLE IF EXISTS electives;
-- DROP TABLE IF EXISTS students;
-- DROP TABLE IF EXISTS teachers;

-- DROP TABLE IF EXISTS teacher_info_no_index;
-- DROP TABLE IF EXISTS student_electives_no_index;
-- DROP TABLE IF EXISTS electives_no_index;
-- DROP TABLE IF EXISTS students_no_index;
-- DROP TABLE IF EXISTS teachers_no_index;

-- CREATE TABLE teachers(ID VARCHAR(20), teacher_name varchar(20), PRIMARY KEY(ID));
-- CREATE TABLE students (SRN VARCHAR(15), student_name varchar(20), DOB DATETIME, branch CHAR(3), section char(1),PRIMARY KEY(SRN));
-- CREATE TABLE electives(elective_name VARCHAR(20), course_code VARCHAR(10), PRIMARY KEY(course_code), anchor_ID VARCHAR(20), FOREIGN KEY(anchor_ID) REFERENCES teachers(ID));
-- CREATE TABLE student_electives(SRN VARCHAR(15),first_elective VARCHAR(10), second_elective VARCHAR(10), FOREIGN KEY(first_elective) REFERENCES electives(course_code), FOREIGN KEY(second_elective) REFERENCES electives(course_code),FOREIGN KEY(SRN) REFERENCES students(SRN));
-- create table teacher_info (ID VARCHAR(20) FOREIGN KEY (ID) REFERENCES teachers(ID),Department VARCHAR(50),Address VARCHAR(50));

-- CREATE TABLE teachers_no_index(ID VARCHAR(20), teacher_name varchar(20)); 
-- CREATE TABLE students_no_index(SRN VARCHAR(15), student_name varchar(20), DOB DATETIME, branch CHAR(3), section char(1));
-- CREATE TABLE electives_no_index(elective_name VARCHAR(20), course_code VARCHAR(10), anchor_ID VARCHAR(20));
-- CREATE TABLE student_electives_no_index(SRN VARCHAR(20),first_elective VARCHAR(10), second_elective VARCHAR(10));
-- create table teacher_info_no_index (ID VARCHAR(20),Department VARCHAR(50),Address VARCHAR(50));


-- insert into teachers (ID, teacher_name) values ('PES54139359', 'Ellsworth');
-- insert into teachers (ID, teacher_name) values ('PES94977757', 'Daryle');
-- insert into teachers (ID, teacher_name) values ('PES53303419', 'Inez');
-- insert into teachers (ID, teacher_name) values ('PES55234803', 'Elsworth');
-- insert into teachers (ID, teacher_name) values ('PES90115102', 'Leola');
-- insert into teachers (ID, teacher_name) values ('PES81697663', 'Elisa');
-- insert into teachers (ID, teacher_name) values ('PES01638155', 'Joete');
-- insert into teachers (ID, teacher_name) values ('PES78329853', 'Trstram');
-- insert into teachers (ID, teacher_name) values ('PES00714776', 'Cass');
-- insert into teachers (ID, teacher_name) values ('PES13868380', 'Raymond');
-- insert into teachers (ID, teacher_name) values ('PES44421579', 'Austine');
-- insert into teachers (ID, teacher_name) values ('PES61377814', 'Ned');
-- insert into teachers (ID, teacher_name) values ('PES34874886', 'Terra');
-- insert into teachers (ID, teacher_name) values ('PES61835276', 'Wadsworth');
-- insert into teachers (ID, teacher_name) values ('PES55460525', 'Stacia');
-- insert into teachers (ID, teacher_name) values ('PES39342682', 'Ambrosius');
-- insert into teachers (ID, teacher_name) values ('PES92063080', 'Camila');
-- insert into teachers (ID, teacher_name) values ('PES78029703', 'Willie');
-- insert into teachers (ID, teacher_name) values ('PES30320591', 'Karine');
-- insert into teachers (ID, teacher_name) values ('PES47134242', 'Paolina');
-- insert into teachers (ID, teacher_name) values ('PES64501997', 'Emlyn');
-- insert into teachers (ID, teacher_name) values ('PES87318129', 'Laird');
-- insert into teachers (ID, teacher_name) values ('PES02338834', 'Joly');
-- insert into teachers (ID, teacher_name) values ('PES80261021', 'Gerik');
-- insert into teachers (ID, teacher_name) values ('PES89422355', 'Eleanora');
-- insert into teachers (ID, teacher_name) values ('PES02572293', 'Jamaal');
-- insert into teachers (ID, teacher_name) values ('PES29881515', 'Teddi');
-- insert into teachers (ID, teacher_name) values ('PES72269310', 'Elinor');
-- insert into teachers (ID, teacher_name) values ('PES40997292', 'Godard');
-- insert into teachers (ID, teacher_name) values ('PES71547040', 'Winne');
-- insert into teachers (ID, teacher_name) values ('PES71063412', 'Bekki');
-- insert into teachers (ID, teacher_name) values ('PES07942010', 'Ingar');
-- insert into teachers (ID, teacher_name) values ('PES06218831', 'Wainwright');
-- insert into teachers (ID, teacher_name) values ('PES42259961', 'Lucinda');
-- insert into teachers (ID, teacher_name) values ('PES14918611', 'Lauretta');
-- insert into teachers (ID, teacher_name) values ('PES21150319', 'Dniren');
-- insert into teachers (ID, teacher_name) values ('PES85975496', 'Ronna');
-- insert into teachers (ID, teacher_name) values ('PES46420318', 'Myrtice');
-- insert into teachers (ID, teacher_name) values ('PES21716424', 'Harbert');
-- insert into teachers (ID, teacher_name) values ('PES70785763', 'Horace');
-- insert into teachers (ID, teacher_name) values ('PES55382491', 'Nikki');
-- insert into teachers (ID, teacher_name) values ('PES62531222', 'Nanette');
-- insert into teachers (ID, teacher_name) values ('PES40292370', 'Theo');
-- insert into teachers (ID, teacher_name) values ('PES94730263', 'Henrieta');
-- insert into teachers (ID, teacher_name) values ('PES67058415', 'Berty');
-- insert into teachers (ID, teacher_name) values ('PES71028191', 'Ellynn');
-- insert into teachers (ID, teacher_name) values ('PES34663869', 'Sloane');
-- insert into teachers (ID, teacher_name) values ('PES98202001', 'Bruno');
-- insert into teachers (ID, teacher_name) values ('PES77274324', 'Kalli');
-- insert into teachers (ID, teacher_name) values ('PES15345014', 'Bartlett');
-- insert into teachers (ID, teacher_name) values ('PES43921564', 'Jinny');
-- insert into teachers (ID, teacher_name) values ('PES75021652', 'Angel');
-- insert into teachers (ID, teacher_name) values ('PES60949279', 'Lorant');
-- insert into teachers (ID, teacher_name) values ('PES93785828', 'Ann-marie');
-- insert into teachers (ID, teacher_name) values ('PES95200546', 'Kathleen');
-- insert into teachers (ID, teacher_name) values ('PES55330603', 'Glori');
-- insert into teachers (ID, teacher_name) values ('PES51504017', 'Jon');
-- insert into teachers (ID, teacher_name) values ('PES34152946', 'Ilse');
-- insert into teachers (ID, teacher_name) values ('PES51999355', 'Ario');
-- insert into teachers (ID, teacher_name) values ('PES43834215', 'Barbara-anne');
-- insert into teachers (ID, teacher_name) values ('PES82388875', 'Saloma');
-- insert into teachers (ID, teacher_name) values ('PES17910654', 'Abigael');
-- insert into teachers (ID, teacher_name) values ('PES89238140', 'George');
-- insert into teachers (ID, teacher_name) values ('PES39291577', 'Karlie');
-- insert into teachers (ID, teacher_name) values ('PES16774371', 'Audry');
-- insert into teachers (ID, teacher_name) values ('PES20392528', 'Gertrudis');
-- insert into teachers (ID, teacher_name) values ('PES40512285', 'Roddy');
-- insert into teachers (ID, teacher_name) values ('PES50344381', 'Karita');
-- insert into teachers (ID, teacher_name) values ('PES14237168', 'Papageno');
-- insert into teachers (ID, teacher_name) values ('PES58752624', 'Booth');
-- insert into teachers (ID, teacher_name) values ('PES37238387', 'Davidde');
-- insert into teachers (ID, teacher_name) values ('PES17147224', 'Tersina');
-- insert into teachers (ID, teacher_name) values ('PES30393811', 'Cly');
-- insert into teachers (ID, teacher_name) values ('PES22859718', 'Shawn');
-- insert into teachers (ID, teacher_name) values ('PES50010257', 'Bobinette');
-- insert into teachers (ID, teacher_name) values ('PES95521581', 'Brett');
-- insert into teachers (ID, teacher_name) values ('PES30782843', 'Myrtle');
-- insert into teachers (ID, teacher_name) values ('PES29670166', 'Shirl');
-- insert into teachers (ID, teacher_name) values ('PES98646032', 'Brena');
-- insert into teachers (ID, teacher_name) values ('PES53779054', 'Weston');
-- insert into teachers (ID, teacher_name) values ('PES45531524', 'Kattie');
-- insert into teachers (ID, teacher_name) values ('PES34034666', 'Debera');
-- insert into teachers (ID, teacher_name) values ('PES16431603', 'Sadye');
-- insert into teachers (ID, teacher_name) values ('PES02862023', 'Theda');
-- insert into teachers (ID, teacher_name) values ('PES88182466', 'Magda');
-- insert into teachers (ID, teacher_name) values ('PES23513559', 'Teena');
-- insert into teachers (ID, teacher_name) values ('PES76054751', 'Iorgo');
-- insert into teachers (ID, teacher_name) values ('PES45871407', 'Perl');
-- insert into teachers (ID, teacher_name) values ('PES79466685', 'Matthias');
-- insert into teachers (ID, teacher_name) values ('PES65186529', 'Tadeas');
-- insert into teachers (ID, teacher_name) values ('PES48781045', 'Karilynn');
-- insert into teachers (ID, teacher_name) values ('PES11045255', 'Teddy');
-- insert into teachers (ID, teacher_name) values ('PES67211925', 'Wilfrid');
-- insert into teachers (ID, teacher_name) values ('PES59682876', 'Darryl');
-- insert into teachers (ID, teacher_name) values ('PES68775770', 'Isidoro');
-- insert into teachers (ID, teacher_name) values ('PES40161907', 'Diane-marie');
-- insert into teachers (ID, teacher_name) values ('PES72725175', 'Peyton');
-- insert into teachers (ID, teacher_name) values ('PES25755738', 'Viviene');
-- insert into teachers (ID, teacher_name) values ('PES04572483', 'Jameson');
-- insert into teachers (ID, teacher_name) values ('PES18050459', 'Linnet');

-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS182', 'Bar', '2/8/2022', 'W');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS458', 'Shae', '1/25/2021', 'R');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS569', 'Dagmar', '1/6/2022', 'S');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS278', 'Wesley', '10/29/2021', 'O');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS400', 'Erma', '6/13/2021', 'E');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS294', 'Diahann', '10/18/2022', 'C');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS068', 'Benson', '8/1/2020', 'X');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS391', 'Kalindi', '4/14/2021', 'V');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS638', 'Dilly', '12/19/2020', 'W');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS901', 'Una', '1/28/2023', 'O');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS690', 'Chas', '12/15/2020', 'K');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS176', 'Kelcy', '8/24/2020', 'C');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS928', 'Cesare', '1/1/2021', 'D');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS676', 'Shane', '7/25/2020', 'H');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS549', 'Bruis', '12/18/2021', 'B');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS699', 'Bertie', '7/23/2022', 'K');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS725', 'Matelda', '9/18/2020', 'W');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS060', 'Vale', '8/13/2022', 'A');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS334', 'Mac', '12/1/2022', 'Q');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS611', 'Geoff', '8/6/2020', 'S');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS375', 'Osmond', '11/1/2020', 'H');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS609', 'Clarissa', '3/27/2022', 'K');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS470', 'Booth', '5/15/2021', 'X');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS164', 'Beauregard', '2/6/2021', 'O');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS174', 'Pauly', '7/25/2020', 'A');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS545', 'Colan', '1/7/2022', 'S');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS832', 'Waldemar', '1/8/2022', 'I');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS163', 'Doralyn', '3/3/2022', 'F');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS075', 'Benedick', '10/17/2020', 'A');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS488', 'Amelia', '8/31/2021', 'D');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS672', 'Woody', '9/19/2020', 'H');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS883', 'Launce', '6/10/2021', 'Y');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS937', 'Midge', '1/24/2021', 'Q');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS850', 'Tatum', '10/21/2020', 'L');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS901', 'Daron', '2/3/2021', 'X');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS679', 'Hendrika', '7/28/2020', 'O');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS822', 'Arlina', '7/3/2022', 'R');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS365', 'Lilias', '5/30/2021', 'L');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS997', 'Fredericka', '1/14/2021', 'L');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS873', 'Bil', '2/6/2022', 'V');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS592', 'Nate', '7/25/2021', 'O');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS484', 'Vanna', '4/28/2022', 'O');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS424', 'Ron', '1/17/2023', 'R');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS468', 'Felita', '8/27/2021', 'Q');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS071', 'Maurice', '8/26/2020', 'F');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS135', 'Beret', '8/13/2020', 'J');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS988', 'Ephrayim', '5/10/2021', 'I');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS206', 'Gwenneth', '4/15/2021', 'V');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS608', 'Jillane', '8/2/2022', 'C');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS817', 'Chelsy', '9/17/2020', 'O');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS002', 'Kienan', '3/31/2022', 'A');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS585', 'Cristina', '5/23/2021', 'R');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS534', 'Mara', '8/7/2021', 'P');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS335', 'Micki', '11/22/2021', 'A');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS714', 'Nikki', '1/29/2023', 'Q');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS949', 'Ilario', '10/21/2020', 'Y');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS332', 'Randall', '7/16/2021', 'D');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS659', 'Everard', '7/5/2022', 'X');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS488', 'Marshal', '5/6/2021', 'I');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS149', 'Matias', '3/10/2022', 'N');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS086', 'Zelig', '5/31/2021', 'U');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS258', 'Sutton', '9/6/2021', 'E');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS449', 'Berty', '3/20/2022', 'C');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS571', 'Jules', '8/30/2020', 'D');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS272', 'Ewan', '10/27/2021', 'F');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS946', 'Bran', '11/8/2020', 'O');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS413', 'Joe', '4/24/2022', 'A');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS464', 'Natalya', '10/4/2020', 'G');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS114', 'Holli', '4/17/2021', 'P');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS247', 'Charley', '7/31/2022', 'C');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS534', 'Diane', '7/11/2022', 'I');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS013', 'Elysee', '8/29/2021', 'V');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS517', 'Curry', '11/21/2020', 'L');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS868', 'Winthrop', '4/21/2022', 'J');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS367', 'Valeria', '2/14/2023', 'Q');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS065', 'Veda', '10/11/2020', 'V');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS125', 'Elfreda', '11/9/2022', 'T');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS779', 'Barton', '3/21/2022', 'O');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS711', 'Roz', '4/8/2022', 'E');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS020', 'Carlie', '12/14/2022', 'O');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS096', 'Horatio', '4/19/2021', 'Q');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS681', 'Skell', '12/12/2021', 'N');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS998', 'Juanita', '9/20/2021', 'G');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS653', 'Hastie', '3/3/2021', 'F');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS415', 'Renie', '1/27/2022', 'A');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS839', 'Gerhardt', '11/21/2020', 'R');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS486', 'Grata', '8/25/2021', 'V');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS236', 'Viki', '7/18/2021', 'C');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS978', 'Norris', '3/22/2021', 'G');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS206', 'Lyda', '12/10/2021', 'G');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS393', 'Enid', '4/14/2022', 'U');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS235', 'Dani', '5/21/2022', 'T');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS225', 'Sully', '11/2/2021', 'O');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS411', 'Giorgia', '1/28/2023', 'L');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS850', 'Verna', '8/24/2021', 'L');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS764', 'Jaime', '11/28/2020', 'Q');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS954', 'Brenn', '12/23/2020', 'M');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS588', 'Koralle', '9/18/2020', 'H');
-- insert into students (SRN, student_name, DOB, section) values ('PES2UG20CS998', 'Simonette', '9/16/2021', 'G');
-- insert into students (SRN, student_name, DOB, section) values ('PES1UG20CS982', 'Lacee', '4/29/2022', 'E');


-- insert into electives (elective_name, course_code, anchor_id) values ('BD', 'UE20CS968', 'PES54139359');
-- insert into electives (elective_name, course_code, anchor_id) values ('DBT', 'UE20CS496', 'PES43921564');
-- insert into electives (elective_name, course_code, anchor_id) values ('AIWR', 'UE20CS759', 'PES58752624');
-- insert into electives (elective_name, course_code, anchor_id) values ('TDL', 'UE20CS694', 'PES58752624');

-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS998', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS176', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS002', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS135', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS653', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS679', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS949', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS393', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS060', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS424', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS013', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS954', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS424', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS901', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS676', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS176', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS393', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS588', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS954', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS468', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS294', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS725', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS332', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS569', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS954', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS569', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS653', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS949', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS086', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS235', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS182', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS571', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS294', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS393', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS569', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS020', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS609', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS149', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS672', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS488', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS484', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS517', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS135', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS125', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS464', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS225', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS883', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS367', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS571', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS020', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS149', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS400', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS413', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS020', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS681', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS711', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS779', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS534', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS982', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS839', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS588', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS125', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS247', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS468', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS901', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS060', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS468', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS086', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS470', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS206', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS928', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS609', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS163', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS367', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS164', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS978', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS458', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS135', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS690', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS817', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS653', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS470', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS672', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS163', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS458', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS334', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS998', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS174', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS334', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS135', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS609', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS335', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS174', 'UE20CS496', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS659', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS998', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS592', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS998', 'UE20CS968', 'UE20CS759');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES2UG20CS458', 'UE20CS968', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS988', 'UE20CS496', 'UE20CS694');
-- insert into student_electives (srn, first_elective, second_elective) values ('PES1UG20CS592', 'UE20CS496', 'UE20CS694');


-- insert into teacher_info (ID, Department, Address) values ('PES17910654', 'Marketing', '8 Sheridan Lane');
-- insert into teacher_info (ID, Department, Address) values ('PES71028191', 'Business Development', '3104 Fisk Parkway');
-- insert into teacher_info (ID, Department, Address) values ('PES21150319', 'Legal', '285 Mosinee Parkway');
-- insert into teacher_info (ID, Department, Address) values ('PES67058415', 'Training', '1874 Little Fleur Court');
-- insert into teacher_info (ID, Department, Address) values ('PES88182466', 'Human Resources', '66 Oriole Center');
-- insert into teacher_info (ID, Department, Address) values ('PES62531222', 'Legal', '095 Cambridge Hill');
-- insert into teacher_info (ID, Department, Address) values ('PES40512285', 'Human Resources', '5547 Hayes Park');
-- insert into teacher_info (ID, Department, Address) values ('PES39291577', 'Engineering', '2 Packers Circle');
-- insert into teacher_info (ID, Department, Address) values ('PES77274324', 'Training', '1 Continental Crossing');
-- insert into teacher_info (ID, Department, Address) values ('PES72269310', 'Research and Development', '2 Burrows Hill');
-- insert into teacher_info (ID, Department, Address) values ('PES72725175', 'Sales', '261 Ilene Plaza');
-- insert into teacher_info (ID, Department, Address) values ('PES79466685', 'Research and Development', '69261 Schlimgen Way');
-- insert into teacher_info (ID, Department, Address) values ('PES48781045', 'Marketing', '4 Moulton Trail');
-- insert into teacher_info (ID, Department, Address) values ('PES89238140', 'Research and Development', '2018 High Crossing Hill');
-- insert into teacher_info (ID, Department, Address) values ('PES13868380', 'Engineering', '735 Portage Road');
-- insert into teacher_info (ID, Department, Address) values ('PES30393811', 'Legal', '3 Corben Hill');
-- insert into teacher_info (ID, Department, Address) values ('PES77274324', 'Research and Development', '6 Dottie Plaza');
-- insert into teacher_info (ID, Department, Address) values ('PES16774371', 'Services', '37 Lukken Pass');
-- insert into teacher_info (ID, Department, Address) values ('PES14237168', 'Engineering', '5907 Trailsway Park');
-- insert into teacher_info (ID, Department, Address) values ('PES70785763', 'Training', '2421 Amoth Avenue');
-- insert into teacher_info (ID, Department, Address) values ('PES94730263', 'Marketing', '68746 Rigney Hill');
-- insert into teacher_info (ID, Department, Address) values ('PES75021652', 'Sales', '25803 Mitchell Crossing');
-- insert into teacher_info (ID, Department, Address) values ('PES42259961', 'Services', '15824 East Terrace');
-- insert into teacher_info (ID, Department, Address) values ('PES64501997', 'Business Development', '06959 Starling Alley');
-- insert into teacher_info (ID, Department, Address) values ('PES43921564', 'Services', '7 Boyd Drive');
-- insert into teacher_info (ID, Department, Address) values ('PES02862023', 'Accounting', '30 Bashford Hill');
-- insert into teacher_info (ID, Department, Address) values ('PES71028191', 'Legal', '79 Farmco Street');
-- insert into teacher_info (ID, Department, Address) values ('PES67058415', 'Services', '046 Daystar Lane');
-- insert into teacher_info (ID, Department, Address) values ('PES87318129', 'Accounting', '62988 Marquette Point');
-- insert into teacher_info (ID, Department, Address) values ('PES45531524', 'Engineering', '280 Buell Point');
-- insert into teacher_info (ID, Department, Address) values ('PES02862023', 'Legal', '58257 Gale Plaza');
-- insert into teacher_info (ID, Department, Address) values ('PES78029703', 'Services', '8386 Tomscot Street');
-- insert into teacher_info (ID, Department, Address) values ('PES76054751', 'Support', '8098 Magdeline Lane');
-- insert into teacher_info (ID, Department, Address) values ('PES17147224', 'Marketing', '7081 Lerdahl Center');
-- insert into teacher_info (ID, Department, Address) values ('PES07942010', 'Training', '5 Delladonna Way');
-- insert into teacher_info (ID, Department, Address) values ('PES82388875', 'Legal', '1 Ridge Oak Drive');
-- insert into teacher_info (ID, Department, Address) values ('PES39342682', 'Human Resources', '7432 Kipling Parkway');
-- insert into teacher_info (ID, Department, Address) values ('PES45871407', 'Legal', '9885 Schlimgen Junction');
-- insert into teacher_info (ID, Department, Address) values ('PES21150319', 'Services', '107 Service Park');
-- insert into teacher_info (ID, Department, Address) values ('PES55330603', 'Business Development', '707 Glacier Hill Center');
-- insert into teacher_info (ID, Department, Address) values ('PES92063080', 'Business Development', '306 Monterey Alley');
-- insert into teacher_info (ID, Department, Address) values ('PES87318129', 'Marketing', '8271 Gerald Plaza');
-- insert into teacher_info (ID, Department, Address) values ('PES40512285', 'Services', '856 Hooker Lane');
-- insert into teacher_info (ID, Department, Address) values ('PES50010257', 'Support', '96 American Alley');
-- insert into teacher_info (ID, Department, Address) values ('PES15345014', 'Human Resources', '868 Cordelia Road');
-- insert into teacher_info (ID, Department, Address) values ('PES70785763', 'Sales', '396 Clarendon Terrace');
-- insert into teacher_info (ID, Department, Address) values ('PES88182466', 'Product Management', '37571 Hallows Crossing');
-- insert into teacher_info (ID, Department, Address) values ('PES94730263', 'Business Development', '41 Fuller Court');
-- insert into teacher_info (ID, Department, Address) values ('PES14237168', 'Research and Development', '4572 Declaration Road');
-- insert into teacher_info (ID, Department, Address) values ('PES88182466', 'Research and Development', '219 Knutson Parkway');
-- insert into teacher_info (ID, Department, Address) values ('PES50344381', 'Marketing', '180 Del Sol Plaza');
-- insert into teacher_info (ID, Department, Address) values ('PES94977757', 'Engineering', '64827 Hollow Ridge Plaza');
-- insert into teacher_info (ID, Department, Address) values ('PES42259961', 'Accounting', '68 Nevada Way');
-- insert into teacher_info (ID, Department, Address) values ('PES72269310', 'Services', '6 Northridge Lane');
-- insert into teacher_info (ID, Department, Address) values ('PES88182466', 'Training', '0 Bayside Park');
-- insert into teacher_info (ID, Department, Address) values ('PES54139359', 'Human Resources', '735 Bonner Hill');
-- insert into teacher_info (ID, Department, Address) values ('PES75021652', 'Product Management', '948 Fieldstone Avenue');
-- insert into teacher_info (ID, Department, Address) values ('PES59682876', 'Training', '949 Corscot Lane');
-- insert into teacher_info (ID, Department, Address) values ('PES67058415', 'Product Management', '75406 Pierstorff Pass');
-- insert into teacher_info (ID, Department, Address) values ('PES71547040', 'Human Resources', '0579 Rockefeller Road');
-- insert into teacher_info (ID, Department, Address) values ('PES46420318', 'Product Management', '0096 Eastlawn Pass');
-- insert into teacher_info (ID, Department, Address) values ('PES75021652', 'Accounting', '545 South Terrace');
-- insert into teacher_info (ID, Department, Address) values ('PES43921564', 'Training', '4237 Forster Junction');
-- insert into teacher_info (ID, Department, Address) values ('PES13868380', 'Research and Development', '00 Clove Terrace');
-- insert into teacher_info (ID, Department, Address) values ('PES70785763', 'Support', '55120 Melrose Parkway');
-- insert into teacher_info (ID, Department, Address) values ('PES71028191', 'Sales', '90315 Crowley Pass');
-- insert into teacher_info (ID, Department, Address) values ('PES34034666', 'Marketing', '222 Commercial Avenue');
-- insert into teacher_info (ID, Department, Address) values ('PES55330603', 'Legal', '0215 Chive Alley');
-- insert into teacher_info (ID, Department, Address) values ('PES48781045', 'Accounting', '9 Talisman Parkway');
-- insert into teacher_info (ID, Department, Address) values ('PES17147224', 'Accounting', '2 Clove Center');
-- insert into teacher_info (ID, Department, Address) values ('PES29670166', 'Legal', '1 Fordem Alley');
-- insert into teacher_info (ID, Department, Address) values ('PES61377814', 'Accounting', '82 Macpherson Way');
-- insert into teacher_info (ID, Department, Address) values ('PES55234803', 'Legal', '8023 Anniversary Crossing');
-- insert into teacher_info (ID, Department, Address) values ('PES14918611', 'Accounting', '07400 Walton Hill');
-- insert into teacher_info (ID, Department, Address) values ('PES21716424', 'Human Resources', '08 Golf Course Point');
-- insert into teacher_info (ID, Department, Address) values ('PES02572293', 'Training', '1 Cambridge Pass');
-- insert into teacher_info (ID, Department, Address) values ('PES67058415', 'Training', '9 Forest Dale Point');
-- insert into teacher_info (ID, Department, Address) values ('PES42259961', 'Support', '89 Brickson Park Hill');
-- insert into teacher_info (ID, Department, Address) values ('PES40161907', 'Marketing', '89346 Mariners Cove Alley');
-- insert into teacher_info (ID, Department, Address) values ('PES11045255', 'Support', '6950 Hagan Road');
-- insert into teacher_info (ID, Department, Address) values ('PES94730263', 'Support', '941 Dakota Place');
-- insert into teacher_info (ID, Department, Address) values ('PES46420318', 'Business Development', '57 Melvin Drive');
-- insert into teacher_info (ID, Department, Address) values ('PES55382491', 'Business Development', '7 3rd Alley');
-- insert into teacher_info (ID, Department, Address) values ('PES60949279', 'Accounting', '3 Stoughton Circle');
-- insert into teacher_info (ID, Department, Address) values ('PES93785828', 'Marketing', '3 Bartelt Plaza');
-- insert into teacher_info (ID, Department, Address) values ('PES98646032', 'Sales', '58740 Little Fleur Alley');
-- insert into teacher_info (ID, Department, Address) values ('PES95200546', 'Human Resources', '2226 Menomonie Alley');
-- insert into teacher_info (ID, Department, Address) values ('PES43834215', 'Support', '19 Chinook Pass');
-- insert into teacher_info (ID, Department, Address) values ('PES95200546', 'Training', '5428 Oak Valley Lane');
-- insert into teacher_info (ID, Department, Address) values ('PES98202001', 'Services', '3828 Troy Park');
-- insert into teacher_info (ID, Department, Address) values ('PES01638155', 'Research and Development', '6698 Elmside Terrace');
-- insert into teacher_info (ID, Department, Address) values ('PES68775770', 'Business Development', '4506 Anniversary Avenue');
-- insert into teacher_info (ID, Department, Address) values ('PES80261021', 'Human Resources', '14 American Way');
-- insert into teacher_info (ID, Department, Address) values ('PES47134242', 'Human Resources', '19748 Carpenter Circle');
-- insert into teacher_info (ID, Department, Address) values ('PES61835276', 'Business Development', '40 Colorado Junction');
-- insert into teacher_info (ID, Department, Address) values ('PES54139359', 'Training', '13675 Carberry Pass');
-- insert into teacher_info (ID, Department, Address) values ('PES21716424', 'Product Management', '74 Oneill Place');
-- insert into teacher_info (ID, Department, Address) values ('PES89238140', 'Training', '97732 Northport Hill');
-- insert into teacher_info (ID, Department, Address) values ('PES78029703', 'Accounting', '18 Hauk Park');
-- insert into teacher_info (ID, Department, Address) values ('PES01638155', 'Marketing', '31127 Di Loreto Avenue');


-- insert into teachers_no_index (ID, teacher_name) values ('PES54139359', 'Ellsworth');
-- insert into teachers_no_index (ID, teacher_name) values ('PES94977757', 'Daryle');
-- insert into teachers_no_index (ID, teacher_name) values ('PES53303419', 'Inez');
-- insert into teachers_no_index (ID, teacher_name) values ('PES55234803', 'Elsworth');
-- insert into teachers_no_index (ID, teacher_name) values ('PES90115102', 'Leola');
-- insert into teachers_no_index (ID, teacher_name) values ('PES81697663', 'Elisa');
-- insert into teachers_no_index (ID, teacher_name) values ('PES01638155', 'Joete');
-- insert into teachers_no_index (ID, teacher_name) values ('PES78329853', 'Trstram');
-- insert into teachers_no_index (ID, teacher_name) values ('PES00714776', 'Cass');
-- insert into teachers_no_index (ID, teacher_name) values ('PES13868380', 'Raymond');
-- insert into teachers_no_index (ID, teacher_name) values ('PES44421579', 'Austine');
-- insert into teachers_no_index (ID, teacher_name) values ('PES61377814', 'Ned');
-- insert into teachers_no_index (ID, teacher_name) values ('PES34874886', 'Terra');
-- insert into teachers_no_index (ID, teacher_name) values ('PES61835276', 'Wadsworth');
-- insert into teachers_no_index (ID, teacher_name) values ('PES55460525', 'Stacia');
-- insert into teachers_no_index (ID, teacher_name) values ('PES39342682', 'Ambrosius');
-- insert into teachers_no_index (ID, teacher_name) values ('PES92063080', 'Camila');
-- insert into teachers_no_index (ID, teacher_name) values ('PES78029703', 'Willie');
-- insert into teachers_no_index (ID, teacher_name) values ('PES30320591', 'Karine');
-- insert into teachers_no_index (ID, teacher_name) values ('PES47134242', 'Paolina');
-- insert into teachers_no_index (ID, teacher_name) values ('PES64501997', 'Emlyn');
-- insert into teachers_no_index (ID, teacher_name) values ('PES87318129', 'Laird');
-- insert into teachers_no_index (ID, teacher_name) values ('PES02338834', 'Joly');
-- insert into teachers_no_index (ID, teacher_name) values ('PES80261021', 'Gerik');
-- insert into teachers_no_index (ID, teacher_name) values ('PES89422355', 'Eleanora');
-- insert into teachers_no_index (ID, teacher_name) values ('PES02572293', 'Jamaal');
-- insert into teachers_no_index (ID, teacher_name) values ('PES29881515', 'Teddi');
-- insert into teachers_no_index (ID, teacher_name) values ('PES72269310', 'Elinor');
-- insert into teachers_no_index (ID, teacher_name) values ('PES40997292', 'Godard');
-- insert into teachers_no_index (ID, teacher_name) values ('PES71547040', 'Winne');
-- insert into teachers_no_index (ID, teacher_name) values ('PES71063412', 'Bekki');
-- insert into teachers_no_index (ID, teacher_name) values ('PES07942010', 'Ingar');
-- insert into teachers_no_index (ID, teacher_name) values ('PES06218831', 'Wainwright');
-- insert into teachers_no_index (ID, teacher_name) values ('PES42259961', 'Lucinda');
-- insert into teachers_no_index (ID, teacher_name) values ('PES14918611', 'Lauretta');
-- insert into teachers_no_index (ID, teacher_name) values ('PES21150319', 'Dniren');
-- insert into teachers_no_index (ID, teacher_name) values ('PES85975496', 'Ronna');
-- insert into teachers_no_index (ID, teacher_name) values ('PES46420318', 'Myrtice');
-- insert into teachers_no_index (ID, teacher_name) values ('PES21716424', 'Harbert');
-- insert into teachers_no_index (ID, teacher_name) values ('PES70785763', 'Horace');
-- insert into teachers_no_index (ID, teacher_name) values ('PES55382491', 'Nikki');
-- insert into teachers_no_index (ID, teacher_name) values ('PES62531222', 'Nanette');
-- insert into teachers_no_index (ID, teacher_name) values ('PES40292370', 'Theo');
-- insert into teachers_no_index (ID, teacher_name) values ('PES94730263', 'Henrieta');
-- insert into teachers_no_index (ID, teacher_name) values ('PES67058415', 'Berty');
-- insert into teachers_no_index (ID, teacher_name) values ('PES71028191', 'Ellynn');
-- insert into teachers_no_index (ID, teacher_name) values ('PES34663869', 'Sloane');
-- insert into teachers_no_index (ID, teacher_name) values ('PES98202001', 'Bruno');
-- insert into teachers_no_index (ID, teacher_name) values ('PES77274324', 'Kalli');
-- insert into teachers_no_index (ID, teacher_name) values ('PES15345014', 'Bartlett');
-- insert into teachers_no_index (ID, teacher_name) values ('PES43921564', 'Jinny');
-- insert into teachers_no_index (ID, teacher_name) values ('PES75021652', 'Angel');
-- insert into teachers_no_index (ID, teacher_name) values ('PES60949279', 'Lorant');
-- insert into teachers_no_index (ID, teacher_name) values ('PES93785828', 'Ann-marie');
-- insert into teachers_no_index (ID, teacher_name) values ('PES95200546', 'Kathleen');
-- insert into teachers_no_index (ID, teacher_name) values ('PES55330603', 'Glori');
-- insert into teachers_no_index (ID, teacher_name) values ('PES51504017', 'Jon');
-- insert into teachers_no_index (ID, teacher_name) values ('PES34152946', 'Ilse');
-- insert into teachers_no_index (ID, teacher_name) values ('PES51999355', 'Ario');
-- insert into teachers_no_index (ID, teacher_name) values ('PES43834215', 'Barbara-anne');
-- insert into teachers_no_index (ID, teacher_name) values ('PES82388875', 'Saloma');
-- insert into teachers_no_index (ID, teacher_name) values ('PES17910654', 'Abigael');
-- insert into teachers_no_index (ID, teacher_name) values ('PES89238140', 'George');
-- insert into teachers_no_index (ID, teacher_name) values ('PES39291577', 'Karlie');
-- insert into teachers_no_index (ID, teacher_name) values ('PES16774371', 'Audry');
-- insert into teachers_no_index (ID, teacher_name) values ('PES20392528', 'Gertrudis');
-- insert into teachers_no_index (ID, teacher_name) values ('PES40512285', 'Roddy');
-- insert into teachers_no_index (ID, teacher_name) values ('PES50344381', 'Karita');
-- insert into teachers_no_index (ID, teacher_name) values ('PES14237168', 'Papageno');
-- insert into teachers_no_index (ID, teacher_name) values ('PES58752624', 'Booth');
-- insert into teachers_no_index (ID, teacher_name) values ('PES37238387', 'Davidde');
-- insert into teachers_no_index (ID, teacher_name) values ('PES17147224', 'Tersina');
-- insert into teachers_no_index (ID, teacher_name) values ('PES30393811', 'Cly');
-- insert into teachers_no_index (ID, teacher_name) values ('PES22859718', 'Shawn');
-- insert into teachers_no_index (ID, teacher_name) values ('PES50010257', 'Bobinette');
-- insert into teachers_no_index (ID, teacher_name) values ('PES95521581', 'Brett');
-- insert into teachers_no_index (ID, teacher_name) values ('PES30782843', 'Myrtle');
-- insert into teachers_no_index (ID, teacher_name) values ('PES29670166', 'Shirl');
-- insert into teachers_no_index (ID, teacher_name) values ('PES98646032', 'Brena');
-- insert into teachers_no_index (ID, teacher_name) values ('PES53779054', 'Weston');
-- insert into teachers_no_index (ID, teacher_name) values ('PES45531524', 'Kattie');
-- insert into teachers_no_index (ID, teacher_name) values ('PES34034666', 'Debera');
-- insert into teachers_no_index (ID, teacher_name) values ('PES16431603', 'Sadye');
-- insert into teachers_no_index (ID, teacher_name) values ('PES02862023', 'Theda');
-- insert into teachers_no_index (ID, teacher_name) values ('PES88182466', 'Magda');
-- insert into teachers_no_index (ID, teacher_name) values ('PES23513559', 'Teena');
-- insert into teachers_no_index (ID, teacher_name) values ('PES76054751', 'Iorgo');
-- insert into teachers_no_index (ID, teacher_name) values ('PES45871407', 'Perl');
-- insert into teachers_no_index (ID, teacher_name) values ('PES79466685', 'Matthias');
-- insert into teachers_no_index (ID, teacher_name) values ('PES65186529', 'Tadeas');
-- insert into teachers_no_index (ID, teacher_name) values ('PES48781045', 'Karilynn');
-- insert into teachers_no_index (ID, teacher_name) values ('PES11045255', 'Teddy');
-- insert into teachers_no_index (ID, teacher_name) values ('PES67211925', 'Wilfrid');
-- insert into teachers_no_index (ID, teacher_name) values ('PES59682876', 'Darryl');
-- insert into teachers_no_index (ID, teacher_name) values ('PES68775770', 'Isidoro');
-- insert into teachers_no_index (ID, teacher_name) values ('PES40161907', 'Diane-marie');
-- insert into teachers_no_index (ID, teacher_name) values ('PES72725175', 'Peyton');
-- insert into teachers_no_index (ID, teacher_name) values ('PES25755738', 'Viviene');
-- insert into teachers_no_index (ID, teacher_name) values ('PES04572483', 'Jameson');
-- insert into teachers_no_index (ID, teacher_name) values ('PES18050459', 'Linnet');

-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS182', 'Bar', '2/8/2022', 'W');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS458', 'Shae', '1/25/2021', 'R');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS569', 'Dagmar', '1/6/2022', 'S');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS278', 'Wesley', '10/29/2021', 'O');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS400', 'Erma', '6/13/2021', 'E');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS294', 'Diahann', '10/18/2022', 'C');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS068', 'Benson', '8/1/2020', 'X');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS391', 'Kalindi', '4/14/2021', 'V');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS638', 'Dilly', '12/19/2020', 'W');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS901', 'Una', '1/28/2023', 'O');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS690', 'Chas', '12/15/2020', 'K');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS176', 'Kelcy', '8/24/2020', 'C');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS928', 'Cesare', '1/1/2021', 'D');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS676', 'Shane', '7/25/2020', 'H');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS549', 'Bruis', '12/18/2021', 'B');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS699', 'Bertie', '7/23/2022', 'K');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS725', 'Matelda', '9/18/2020', 'W');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS060', 'Vale', '8/13/2022', 'A');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS334', 'Mac', '12/1/2022', 'Q');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS611', 'Geoff', '8/6/2020', 'S');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS375', 'Osmond', '11/1/2020', 'H');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS609', 'Clarissa', '3/27/2022', 'K');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS470', 'Booth', '5/15/2021', 'X');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS164', 'Beauregard', '2/6/2021', 'O');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS174', 'Pauly', '7/25/2020', 'A');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS545', 'Colan', '1/7/2022', 'S');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS832', 'Waldemar', '1/8/2022', 'I');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS163', 'Doralyn', '3/3/2022', 'F');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS075', 'Benedick', '10/17/2020', 'A');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS488', 'Amelia', '8/31/2021', 'D');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS672', 'Woody', '9/19/2020', 'H');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS883', 'Launce', '6/10/2021', 'Y');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS937', 'Midge', '1/24/2021', 'Q');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS850', 'Tatum', '10/21/2020', 'L');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS901', 'Daron', '2/3/2021', 'X');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS679', 'Hendrika', '7/28/2020', 'O');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS822', 'Arlina', '7/3/2022', 'R');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS365', 'Lilias', '5/30/2021', 'L');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS997', 'Fredericka', '1/14/2021', 'L');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS873', 'Bil', '2/6/2022', 'V');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS592', 'Nate', '7/25/2021', 'O');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS484', 'Vanna', '4/28/2022', 'O');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS424', 'Ron', '1/17/2023', 'R');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS468', 'Felita', '8/27/2021', 'Q');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS071', 'Maurice', '8/26/2020', 'F');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS135', 'Beret', '8/13/2020', 'J');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS988', 'Ephrayim', '5/10/2021', 'I');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS206', 'Gwenneth', '4/15/2021', 'V');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS608', 'Jillane', '8/2/2022', 'C');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS817', 'Chelsy', '9/17/2020', 'O');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS002', 'Kienan', '3/31/2022', 'A');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS585', 'Cristina', '5/23/2021', 'R');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS534', 'Mara', '8/7/2021', 'P');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS335', 'Micki', '11/22/2021', 'A');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS714', 'Nikki', '1/29/2023', 'Q');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS949', 'Ilario', '10/21/2020', 'Y');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS332', 'Randall', '7/16/2021', 'D');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS659', 'Everard', '7/5/2022', 'X');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS488', 'Marshal', '5/6/2021', 'I');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS149', 'Matias', '3/10/2022', 'N');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS086', 'Zelig', '5/31/2021', 'U');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS258', 'Sutton', '9/6/2021', 'E');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS449', 'Berty', '3/20/2022', 'C');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS571', 'Jules', '8/30/2020', 'D');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS272', 'Ewan', '10/27/2021', 'F');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS946', 'Bran', '11/8/2020', 'O');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS413', 'Joe', '4/24/2022', 'A');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS464', 'Natalya', '10/4/2020', 'G');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS114', 'Holli', '4/17/2021', 'P');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS247', 'Charley', '7/31/2022', 'C');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS534', 'Diane', '7/11/2022', 'I');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS013', 'Elysee', '8/29/2021', 'V');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS517', 'Curry', '11/21/2020', 'L');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS868', 'Winthrop', '4/21/2022', 'J');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS367', 'Valeria', '2/14/2023', 'Q');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS065', 'Veda', '10/11/2020', 'V');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS125', 'Elfreda', '11/9/2022', 'T');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS779', 'Barton', '3/21/2022', 'O');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS711', 'Roz', '4/8/2022', 'E');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS020', 'Carlie', '12/14/2022', 'O');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS096', 'Horatio', '4/19/2021', 'Q');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS681', 'Skell', '12/12/2021', 'N');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS998', 'Juanita', '9/20/2021', 'G');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS653', 'Hastie', '3/3/2021', 'F');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS415', 'Renie', '1/27/2022', 'A');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS839', 'Gerhardt', '11/21/2020', 'R');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS486', 'Grata', '8/25/2021', 'V');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS236', 'Viki', '7/18/2021', 'C');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS978', 'Norris', '3/22/2021', 'G');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS206', 'Lyda', '12/10/2021', 'G');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS393', 'Enid', '4/14/2022', 'U');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS235', 'Dani', '5/21/2022', 'T');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS225', 'Sully', '11/2/2021', 'O');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS411', 'Giorgia', '1/28/2023', 'L');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS850', 'Verna', '8/24/2021', 'L');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS764', 'Jaime', '11/28/2020', 'Q');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS954', 'Brenn', '12/23/2020', 'M');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS588', 'Koralle', '9/18/2020', 'H');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES2UG20CS998', 'Simonette', '9/16/2021', 'G');
-- insert into students_no_index (SRN, student_name, DOB, section) values ('PES1UG20CS982', 'Lacee', '4/29/2022', 'E');

-- insert into electives_no_index (elective_name, course_code, anchor_id) values ('BD', 'UE20CS968', 'PES54139359');
-- insert into electives_no_index (elective_name, course_code, anchor_id) values ('DBT', 'UE20CS496', 'PES43921564');
-- insert into electives_no_index (elective_name, course_code, anchor_id) values ('AIWR', 'UE20CS759', 'PES58752624');
-- insert into electives_no_index (elective_name, course_code, anchor_id) values ('TDL', 'UE20CS694', 'PES58752624');

-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS998', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS176', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS002', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS135', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS653', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS679', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS949', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS393', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS060', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS424', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS013', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS954', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS424', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS901', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS676', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS176', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS393', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS588', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS954', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS468', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS294', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS725', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS332', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS569', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS954', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS569', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS653', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS949', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS086', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS235', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS182', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS571', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS294', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS393', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS569', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS020', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS609', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS149', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS672', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS488', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS484', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS517', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS135', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS125', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS464', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS225', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS883', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS367', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS571', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS020', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS149', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS400', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS413', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS020', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS681', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS711', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS779', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS534', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS982', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS839', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS588', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS125', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS247', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS468', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS901', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS060', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS468', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS086', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS470', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS206', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS928', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS609', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS163', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS367', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS164', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS978', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS458', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS135', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS690', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS817', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS653', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS470', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS672', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS163', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS458', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS334', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS998', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS174', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS334', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS135', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS609', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS335', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS174', 'UE20CS496', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS659', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS998', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS592', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS998', 'UE20CS968', 'UE20CS759');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES2UG20CS458', 'UE20CS968', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS988', 'UE20CS496', 'UE20CS694');
-- insert into student_electives_no_index (srn, first_elective, second_elective) values ('PES1UG20CS592', 'UE20CS496', 'UE20CS694');

-- insert into teacher_info_no_index (ID, Department, Address) values ('PES17910654', 'Marketing', '8 Sheridan Lane');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES71028191', 'Business Development', '3104 Fisk Parkway');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES21150319', 'Legal', '285 Mosinee Parkway');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES67058415', 'Training', '1874 Little Fleur Court');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES88182466', 'Human Resources', '66 Oriole Center');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES62531222', 'Legal', '095 Cambridge Hill');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES40512285', 'Human Resources', '5547 Hayes Park');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES39291577', 'Engineering', '2 Packers Circle');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES77274324', 'Training', '1 Continental Crossing');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES72269310', 'Research and Development', '2 Burrows Hill');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES72725175', 'Sales', '261 Ilene Plaza');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES79466685', 'Research and Development', '69261 Schlimgen Way');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES48781045', 'Marketing', '4 Moulton Trail');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES89238140', 'Research and Development', '2018 High Crossing Hill');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES13868380', 'Engineering', '735 Portage Road');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES30393811', 'Legal', '3 Corben Hill');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES77274324', 'Research and Development', '6 Dottie Plaza');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES16774371', 'Services', '37 Lukken Pass');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES14237168', 'Engineering', '5907 Trailsway Park');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES70785763', 'Training', '2421 Amoth Avenue');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES94730263', 'Marketing', '68746 Rigney Hill');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES75021652', 'Sales', '25803 Mitchell Crossing');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES42259961', 'Services', '15824 East Terrace');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES64501997', 'Business Development', '06959 Starling Alley');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES43921564', 'Services', '7 Boyd Drive');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES02862023', 'Accounting', '30 Bashford Hill');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES71028191', 'Legal', '79 Farmco Street');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES67058415', 'Services', '046 Daystar Lane');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES87318129', 'Accounting', '62988 Marquette Point');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES45531524', 'Engineering', '280 Buell Point');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES02862023', 'Legal', '58257 Gale Plaza');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES78029703', 'Services', '8386 Tomscot Street');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES76054751', 'Support', '8098 Magdeline Lane');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES17147224', 'Marketing', '7081 Lerdahl Center');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES07942010', 'Training', '5 Delladonna Way');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES82388875', 'Legal', '1 Ridge Oak Drive');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES39342682', 'Human Resources', '7432 Kipling Parkway');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES45871407', 'Legal', '9885 Schlimgen Junction');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES21150319', 'Services', '107 Service Park');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES55330603', 'Business Development', '707 Glacier Hill Center');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES92063080', 'Business Development', '306 Monterey Alley');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES87318129', 'Marketing', '8271 Gerald Plaza');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES40512285', 'Services', '856 Hooker Lane');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES50010257', 'Support', '96 American Alley');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES15345014', 'Human Resources', '868 Cordelia Road');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES70785763', 'Sales', '396 Clarendon Terrace');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES88182466', 'Product Management', '37571 Hallows Crossing');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES94730263', 'Business Development', '41 Fuller Court');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES14237168', 'Research and Development', '4572 Declaration Road');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES88182466', 'Research and Development', '219 Knutson Parkway');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES50344381', 'Marketing', '180 Del Sol Plaza');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES94977757', 'Engineering', '64827 Hollow Ridge Plaza');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES42259961', 'Accounting', '68 Nevada Way');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES72269310', 'Services', '6 Northridge Lane');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES88182466', 'Training', '0 Bayside Park');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES54139359', 'Human Resources', '735 Bonner Hill');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES75021652', 'Product Management', '948 Fieldstone Avenue');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES59682876', 'Training', '949 Corscot Lane');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES67058415', 'Product Management', '75406 Pierstorff Pass');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES71547040', 'Human Resources', '0579 Rockefeller Road');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES46420318', 'Product Management', '0096 Eastlawn Pass');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES75021652', 'Accounting', '545 South Terrace');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES43921564', 'Training', '4237 Forster Junction');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES13868380', 'Research and Development', '00 Clove Terrace');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES70785763', 'Support', '55120 Melrose Parkway');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES71028191', 'Sales', '90315 Crowley Pass');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES34034666', 'Marketing', '222 Commercial Avenue');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES55330603', 'Legal', '0215 Chive Alley');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES48781045', 'Accounting', '9 Talisman Parkway');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES17147224', 'Accounting', '2 Clove Center');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES29670166', 'Legal', '1 Fordem Alley');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES61377814', 'Accounting', '82 Macpherson Way');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES55234803', 'Legal', '8023 Anniversary Crossing');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES14918611', 'Accounting', '07400 Walton Hill');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES21716424', 'Human Resources', '08 Golf Course Point');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES02572293', 'Training', '1 Cambridge Pass');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES67058415', 'Training', '9 Forest Dale Point');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES42259961', 'Support', '89 Brickson Park Hill');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES40161907', 'Marketing', '89346 Mariners Cove Alley');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES11045255', 'Support', '6950 Hagan Road');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES94730263', 'Support', '941 Dakota Place');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES46420318', 'Business Development', '57 Melvin Drive');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES55382491', 'Business Development', '7 3rd Alley');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES60949279', 'Accounting', '3 Stoughton Circle');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES93785828', 'Marketing', '3 Bartelt Plaza');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES98646032', 'Sales', '58740 Little Fleur Alley');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES95200546', 'Human Resources', '2226 Menomonie Alley');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES43834215', 'Support', '19 Chinook Pass');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES95200546', 'Training', '5428 Oak Valley Lane');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES98202001', 'Services', '3828 Troy Park');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES01638155', 'Research and Development', '6698 Elmside Terrace');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES68775770', 'Business Development', '4506 Anniversary Avenue');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES80261021', 'Human Resources', '14 American Way');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES47134242', 'Human Resources', '19748 Carpenter Circle');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES61835276', 'Business Development', '40 Colorado Junction');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES54139359', 'Training', '13675 Carberry Pass');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES21716424', 'Product Management', '74 Oneill Place');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES89238140', 'Training', '97732 Northport Hill');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES78029703', 'Accounting', '18 Hauk Park');
-- insert into teacher_info_no_index (ID, Department, Address) values ('PES01638155', 'Marketing', '31127 Di Loreto Avenue');

-- -- A)

-- -- select * from student_electives;
-- -- select * from student_electives_no_index;

-- -- select * from teachers;
-- -- select * from electives;

-- -- B) SCANS
-- -- Query on tables with no index
-- -- SELECT * FROM students_no_index WHERE SRN LIKE 'PES2%';
-- -- Index
-- -- SELECT * FROM students WHERE SRN LIKE 'PES2%';

-- -- C) 
-- -- No index
-- -- SELECT * FROM students_no_index AS s,student_electives_no_index AS se where s.SRN like 'PES2%' AND se.SRN=s.SRN;
-- -- Query on tables with index
-- -- SELECT * FROM students AS s,student_electives AS se where s.SRN like 'PES2%' AND se.SRN=s.SRN;

-- -- Join with non clustered index : 
-- create NONCLUSTERED INDEX no_pk_srn_students ON students_no_index (SRN);
-- create NONCLUSTERED INDEX no_pk_srn_students_elective ON student_electives_no_index (SRN);
-- SELECT * FROM students_no_index AS s,student_electives_no_index AS se where s.SRN like 'PES2%' AND se.SRN=s.SRN;




-- -- 2A
-- -- Find the address and name of the anchor teacher for all the electives : 
-- select e.elective_name,t.teacher_name,ti.address 
-- from electives as e join teachers as t ON e.anchor_ID = t.ID 
-- JOIN teacher_info as ti ON t.id = ti.ID;

-- -- Find the teachers of the first electives that students have selected
-- -- (Student_elective -> elective(anchro id) -> name of teacher in teacher)
-- select students.student_name,student_electives.first_elective,electives.elective_name ,teachers.teacher_name
-- FROM students JOIN student_electives ON students.SRN = student_electives.SRN 
-- JOIN electives ON student_electives.first_elective=electives.course_code 
-- JOIN teachers ON teachers.ID = electives.anchor_ID;


-- -- 2B : 
-- select students.student_name,student_electives.first_elective,electives.elective_name ,teachers.teacher_name
-- FROM students LEFT OUTER JOIN student_electives ON students.SRN = student_electives.SRN 
-- JOIN electives ON student_electives.first_elective=electives.course_code 
-- JOIN teachers ON teachers.ID = electives.anchor_ID;

-- select students.student_name,student_electives.first_elective,electives.elective_name ,teachers.teacher_name
-- FROM students JOIN teachers ON teachers.ID = electives.anchor_ID 
-- JOIN student_electives ON students.SRN = student_electives.SRN 
-- JOIN electives ON student_electives = electives.course_code;

-- -- 2B 
-- -- subqueries to find number of people in each section along with number of people in each elective 
-- select section,elective_name,count(SRN) as number_of_student_in_elective_in_this_class from 
-- (select students.SRN,section,first_elective,elective_name from students,student_electives,electives 
-- WHERE students.SRN = student_electives.SRN AND student_electives.first_elective=electives.course_code) 
-- AS temp group by section, first_elective,elective_name order by section;

-- select section,elective_name,count(SRN) as number_of_student_in_elective_in_this_class from 
-- (select students.SRN,section,first_elective,elective_name from students
-- JOIN student_electives ON  students.SRN = student_electives.SRN  
-- JOIN electives ON student_electives.first_elective=electives.course_code) 
-- AS temp group by section, first_elective,elective_name order by section;


-- 3
use partdb

EXEC sp_configure 'show advanced options', 1;  
GO  
RECONFIGURE WITH OVERRIDE;  
GO  
EXEC sp_configure 'max degree of parallelism', 4;  
GO  
RECONFIGURE WITH OVERRIDE;  
GO    

CREATE PARTITION FUNCTION CustRangePF11 (char)  
    AS RANGE LEFT FOR VALUES ('c','e') ;  -- ab cd ef left ranges
GO

ALTER DATABASE [partdb] ADD FILEGROUP [FG1]
GO
USE [partdb]
GO
ALTER DATABASE [partdb] ADD FILEGROUP [FG2]
GO
ALTER DATABASE [partdb] ADD FILE ( NAME = N'testFG1', FILENAME = '/var/opt/mssql/data/test1.md' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FG1]
GO
ALTER DATABASE [partdb] ADD FILE ( NAME = N'testFG2', FILENAME = '/var/opt/mssql/data/test2.md' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FG2]
GO
ALTER DATABASE [partdb] ADD FILEGROUP [FG3]
GO
ALTER DATABASE [partdb] ADD FILE ( NAME = N'testFG3', FILENAME = '/var/opt/mssql/data/test3.md' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FG3]
GO

CREATE PARTITION SCHEME CustRangePS1  
    AS PARTITION CustRangePF11  
    TO (FG1, FG2, FG3) ;  
GO 


CREATE TABLE students_no_index(SRN VARCHAR(15), student_name varchar(20), DOB DATETIME, branch CHAR(3), section char(1)) ON CustRangePS1 (section) ;

CREATE TABLE teachers_no_index(teacher_name varchar(20), DOB DATETIME, branch CHAR(3), section char(1)) ON CustRangePS1 (section) ;


DECLARE @counter BIGINT;  
SET @counter = 0;  
WHILE @counter < 1000000
   BEGIN  
      DECLARE @localsection char;
      SELECT @localsection = CHAR(cast((5) * rand() + 65 AS INTEGER));
      insert into students_no_index values ('PES2UG20CS23'+@localsection,'andomlygenerated'+@localsection,'11/10/2002','CSE',@localsection);
      SET @counter = @counter + 1  
   END;  
GO 


DECLARE @counter BIGINT;  
SET @counter = 0;  
WHILE @counter < 1000000
   BEGIN  
      DECLARE @localsection char;
      SELECT @localsection = CHAR(cast((5) * rand() + 65 AS INTEGER));
      insert into teachers_no_index values ('teacherrandom'+@localsection,'11/10/2002','CSE',@localsection);
      SET @counter = @counter + 1  
   END;  
GO 


select count(*) from students_no_index as s JOIN teachers_no_index as t ON s.section=t.section AND s.section = 'C';

select count(*) from students_no_index as s JOIN teachers_no_index as t ON s.branch=t.branch AND s.section='C';