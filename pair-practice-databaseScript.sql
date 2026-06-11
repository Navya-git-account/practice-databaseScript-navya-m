START TRANSACTION;

DROP TABLE IF EXISTS coursematerials;
DROP TABLE IF EXISTS libraryResources;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    department_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL
);

CREATE TABLE libraryResources (
    resource_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    department_id INT NOT NULL,
    content TEXT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE coursematerials (
    course_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

COMMIT;