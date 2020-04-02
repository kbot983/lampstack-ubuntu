CREATE DATABASE school_database;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'kbot';
CREATE USER 'kbot'@'%' IDENTIFIED BY 'kbot';
USE school_database;
CREATE TABLE student_info (
    id INTEGER,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    PRIMARY KEY (id)
);
CREATE TABLE student_contacts (
    id INTEGER,
    name VARCHAR(255),
    phone VARCHAR(10),
    PRIMARY KEY (id)
);
CREATE TABLE student_attendance (
    object_id INTEGER NOT NULL AUTO_INCREMENT,
    student_id INT,
    code CHAR,
    credit FLOAT,
    PRIMARY KEY (object_id)
);

INSERT INTO student_info (id, first_name, last_name) 
VALUES
    (0, "Abe", "Johnson"),
    (1, "Om", "Patel"),
    (2, "Kie", "Nguyen"),
    (3, "Curtis", "Mayfield"),
    (4, "Emily", "Gao");

INSERT INTO student_contacts (id, name, phone) 
VALUES
    (0, "Frank Johnson", "7235555555"),
    (2, "Parik Nguyen", "6095555555"),
    (3, "Olga Preel", "2125555555");

GRANT SELECT ON school_database.student_contacts TO 'kbot'@'%';
GRANT INSERT ON school_database.student_attendance TO 'kbot'@'%';
FLUSH PRIVILEGES;
