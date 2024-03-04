CREATE DATABASE IF NOT EXISTS FitnessClubDB;
USE FitnessClubDB;

CREATE TABLE IF NOT EXISTS Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    PhoneNumber TEXT UNIQUE NOT NULL,
    MembershipTier ENUM('Basic', 'Premium', 'VIP') NOT NULL,
    JoinDate DATE NOT NULL,
    BirthYear YEAR NOT NULL,
    LastCheckInDate DATE NOT NULL
);



CREATE TABLE IF NOT EXISTS Trainers (
    TrainerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Specialty VARCHAR(255) NOT NULL,
    CertificationDate DATE NOT NULL
);


CREATE TABLE IF NOT EXISTS Classes (
    ClassID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    DifficultyLevel ENUM('Beginner', 'Intermediate', 'Advanced') NOT NULL,
    Schedule VARCHAR(255) NOT NULL,
    TrainerID INT,
    FOREIGN KEY (TrainerID) REFERENCES Trainers(TrainerID) ON DELETE SET NULL ON UPDATE CASCADE
);
