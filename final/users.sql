CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    grade_level INT,  -- For students
    subjects_taught VARCHAR(255),  -- For educators
    date_joined DATETIME DEFAULT CURRENT_TIMESTAMP,
    last_login DATETIME,
    user_role ENUM('student', 'educator', 'admin') DEFAULT 'student',
    status ENUM('active', 'inactive') DEFAULT 'active'
);
