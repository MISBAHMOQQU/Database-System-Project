CREATE DATABASE pharmacy;
USE pharmacy;
-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-01 12:29:43.127

-- tables
-- Table: Checkups
CREATE TABLE Checkups (
    Checkup_id int NOT NULL,
    Patient_id int NOT NULL,
    Treatment_id int NOT NULL,
    Equip_id int NOT NULL,
    Medicine_id int NOT NULL,
    Findings text NOT NULL,
    CONSTRAINT Checkups_pk PRIMARY KEY (Checkup_id)
);

-- Table: Equipments
CREATE TABLE Equipments (
    Equip_id int NOT NULL,
    Equip_name varchar(100) NOT NULL,
    CONSTRAINT Equipments_pk PRIMARY KEY (Equip_id)
);

-- Table: Medicines
CREATE TABLE Medicines (
    Medicine_id int NOT NULL,
    Name varchar(100) NOT NULL,
    Quantity int NOT NULL,
    Description text NOT NULL,
    CONSTRAINT Medicines_pk PRIMARY KEY (Medicine_id)
);

-- Table: Patients
CREATE TABLE Patients (
    Patient_id int NOT NULL,
    Name varchar(100) NOT NULL,
    Address varchar(100) NOT NULL,
    CONSTRAINT Patients_pk PRIMARY KEY (Patient_id)
);

-- Table: Treatments
CREATE TABLE Treatments (
    Treatment_id int NOT NULL,
    Treat_type varchar(100) NOT NULL,
    Cost float NOT NULL,
    CONSTRAINT Treatments_pk PRIMARY KEY (Treatment_id)
);

-- foreign keys
-- Reference: Checkups_Equipments (table: Checkups)
ALTER TABLE Checkups ADD CONSTRAINT Checkups_Equipments FOREIGN KEY Checkups_Equipments (Equip_id)
    REFERENCES Equipments (Equip_id);

-- Reference: Checkups_Medicines (table: Checkups)
ALTER TABLE Checkups ADD CONSTRAINT Checkups_Medicines FOREIGN KEY Checkups_Medicines (Medicine_id)
    REFERENCES Medicines (Medicine_id);

-- Reference: Checkups_Patients (table: Checkups)
ALTER TABLE Checkups ADD CONSTRAINT Checkups_Patients FOREIGN KEY Checkups_Patients (Patient_id)
    REFERENCES Patients (Patient_id);

-- Reference: Checkups_Treatments (table: Checkups)
ALTER TABLE Checkups ADD CONSTRAINT Checkups_Treatments FOREIGN KEY Checkups_Treatments (Treatment_id)
    REFERENCES Treatments (Treatment_id);

-- End of file.

