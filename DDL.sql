CREATE DATABASE IF NOT EXISTS ercan_airport;
USE ercan_airport;

 ---Independent Tables---
CREATE TABLE Airlines 
(
  airline_id varchar(10) PRIMARY KEY,
  name varchar(255),
  contacts varchar(255)
);

CREATE TABLE Models 
(
  model_no varchar(255) PRIMARY KEY,
  manufacturer varchar(255),
  capacity int
);

CREATE TABLE Hangar 
(
  hangar_no int PRIMARY KEY,
  location varchar(255)
);

CREATE TABLE Tests 
(
  test_id int PRIMARY KEY,
  test_name varchar(255),
  max_score int
);

CREATE TABLE Routes
(
  route_id int PRIMARY KEY,
  origin varchar(255),
  destination varchar(255),
  price float
);

CREATE TABLE Employees 
(
  ssn varchar(255) PRIMARY KEY,
  first_name varchar(255),
  last_name varchar(255),
  union_membership_no varchar(255),
  employee_type varchar(255)
);

CREATE TABLE Flights 
(
  flight_no varchar(255) PRIMARY KEY,
  route_id int,
  plane_no varchar(255),
  departure_time datetime,
  arrival_time datetime,
  status varchar(255)
);

 ---Dependent Tables---
CREATE TABLE Airplanes 
(
  plane_no varchar(255) PRIMARY KEY,
  model_no varchar(255),
  airline_id varchar(10),
  production_year int
);

CREATE TABLE Technicians 
(
  ssn varchar(255) PRIMARY KEY
);

 ---Event Tables---
CREATE TABLE Technicians_Expertise 
(
  ssn varchar(255),
  model_no varchar(255),
  PRIMARY KEY (ssn, model_no)
);

CREATE TABLE Traffic_Controllers 
(
  ssn varchar(255) PRIMARY KEY,
  recent_medical_exam_date date
);

CREATE TABLE Hangar_Logs 
(
  log_id int PRIMARY KEY,
  plane_no varchar(255),
  hangar_no int,
  time_in datetime,
  time_out datetime
);

CREATE TABLE Testing 
(
  event_id int PRIMARY KEY,
  test_id int,
  plane_no varchar(255),
  ssn varchar(255),
  date date,
  time_spent float,
  score int
);

 --- Adding Constaraints---

ALTER TABLE Airplanes ADD FOREIGN KEY (model_no) REFERENCES Models (model_no);

ALTER TABLE Airplanes ADD FOREIGN KEY (airline_id) REFERENCES Airlines (airline_id);

ALTER TABLE Technicians ADD FOREIGN KEY (ssn) REFERENCES Employees (ssn);

ALTER TABLE Traffic_Controllers ADD FOREIGN KEY (ssn) REFERENCES Employees (ssn);

ALTER TABLE Hangar_Logs ADD FOREIGN KEY (plane_no) REFERENCES Airplanes (plane_no);

ALTER TABLE Hangar_Logs ADD FOREIGN KEY (hangar_no) REFERENCES Hangar (hangar_no);

ALTER TABLE Technicians_Expertise ADD FOREIGN KEY (ssn) REFERENCES Technicians (ssn);

ALTER TABLE Technicians_Expertise ADD FOREIGN KEY (model_no) REFERENCES Models (model_no);

ALTER TABLE Testing ADD FOREIGN KEY (plane_no) REFERENCES Airplanes (plane_no);

ALTER TABLE Testing ADD FOREIGN KEY (ssn) REFERENCES Technicians (ssn);

ALTER TABLE Testing ADD FOREIGN KEY (test_id) REFERENCES Tests (test_id);

ALTER TABLE Flights ADD FOREIGN KEY (route_id) REFERENCES Routes (route_id);

ALTER TABLE Flights ADD FOREIGN KEY (plane_no) REFERENCES Airplanes (plane_no);

