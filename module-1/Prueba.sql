CREATE DATABASE school;
USE school;

CREATE TABLE teacher (
	teacher_id INT PRIMARY KEY,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	language_1 VARCHAR(3) NOT NULL,
	language_2 VARCHAR(3),
	dob DATE,
	tax_id INT UNIQUE,
	phone_no VARCHAR(20)
);

CREATE TABLE client (
	client_id INT PRIMARY KEY,
	client_name VARCHAR(40) NOT NULL, 
	address VARCHAR(40) NOT NULL,
	industry VARCHAR(40)
);
	
CREATE TABLE participant (
	participant_id INT PRIMARY KEY,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL, 
	phone_no VARCHAR(20),
	client INT
);

CREATE TABLE IF NOT EXISTS course (
	course_id INT PRIMARY KEY,
	course_name VARCHAR(40) NOT NULL,
	language VARCHAR(3) NOT NULL,
	level VARCHAR(2),
	course_length_weeks INT,
	start_date DATE,
	in_school BOOLEAN,
	teacher INT,
	client INT
);

ALTER TABLE participant
ADD FOREIGN KEY(client)
REFERENCES client(client_id)
ON DELETE SET NULL;


ALTER TABLE course
ADD FOREIGN KEY(teacher)
REFERENCES teacher(teacher_id)
ON DELETE SET NULL;

ALTER TABLE course
ADD FOREIGN KEY(client)
REFERENCES teacher(client_id)
ON DELETE SET NULL;


CREATE TABLE takes_course (
participant_id INT,
course_id INT,
PRIMARY KEY(participant_id, course_id),
FOREIGN KEY(participant_id) REFERENCES participant(paritipant_id) ON DELETE CASCADE,
FOREIGN KEY(course_id) REFERENCES course(course_id) ON DELETE CASCADE
);
