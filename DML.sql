USE ercan_airport;

INSERT INTO Airlines(airline_id, name, contacts) VALUES
('TK', 'Turkish Airlines', '+90 212 463 63 63'),
('PC', 'Pegasus Airlines', 'info@flypgs.com'),
('VF', 'AJet', 'info@ajet.com'),
('XQ', 'Sun Express', 'info@sunexpress.com');

INSERT INTO Models(model_no, manufacturer, capacity) VALUES
('B737', 'Boeing', 189),
('B737 MAX 8', 'Boeing', 162),
('A320', 'Airbus', 180),
('A321', 'Airbus', 220),
('B777', 'Boeing', 396);

INSERT INTO Hangar (hangar_no, location) VALUES
(1, 'North Wing A'),
(2, 'North Wing B'),
(3, 'South Wing A'),
(4, 'South Wing B');

INSERT INTO Tests (test_id, test_name, max_score) VALUES
(1, 'Engine Check', 100),
(2, 'Landing Gear Test', 100),
(3, 'Avionics Test', 100),
(4, 'Hydraulics Test', 100),
(5, 'Fuel System Test', 100);

INSERT INTO Routes (route_id, origin, destination, price) VALUES
(1, 'Ercan', 'Istanbul', 50.00),
(2, 'Ercan', 'Ankara', 40.00),
(3, 'Ercan', 'Izmir', 40.00),
(4, 'Ercan', 'Antalya', 60.00);

INSERT INTO Employees (ssn, first_name, last_name, union_membership_no, employee_type) VALUES
('SSN001', 'Mehmet', 'Yilmaz', 'U001', 'Technician'),
('SSN002', 'Ayse', 'Kaya', 'U002', 'Technician'),
('SSN003', 'Ali', 'Demir', 'U003', 'Technician'),
('SSN004', 'Fatma', 'Celik', 'U004', 'Technician'),
('SSN005', 'Hasan', 'Sahin', 'U005', 'Technician'),
('SSN006', 'Zeynep', 'Arslan', 'U006', 'Technician'),
('SSN007', 'Mustafa', 'Ozturk', 'U007', 'Traffic_Controller'),
('SSN008', 'Elif', 'Korkmaz', 'U008', 'Traffic_Controller'),
('SSN009', 'Ibrahim', 'Kurt', 'U009', 'Traffic_Controller'),
('SSN010', 'Hatice', 'Aydin', 'U010', 'Traffic_Controller'),
('SSN011', 'Ahmet', 'Ozkan', 'U011', 'Employee'),
('SSN012', 'Merve', 'Yildiz', 'U012', 'Employee'),
('SSN013', 'Burak', 'Polat', 'U013', 'Employee'),
('SSN014', 'Selin', 'Dogan', 'U014', 'Employee'),
('SSN015', 'Emre', 'Bulut', 'U015', 'Employee');

INSERT INTO Airplanes (plane_no, model_no, airline_id, production_year) VALUES
('TC-JFK', 'B737', 'TK', 2015),
('TC-PCG', 'A320', 'PC', 2018),
('TC-VFA', 'A321', 'VF', 2019),
('TC-XQA', 'B737 MAX 8', 'XQ', 2017),
('TC-TKB', 'A320', 'TK', 2020),
('TC-PCB', 'B737', 'PC', 2021),
('TC-XQB', 'A321', 'XQ', 2019);

INSERT INTO Technicians (ssn) VALUES
('SSN001'),
('SSN002'),
('SSN003'),
('SSN004'),
('SSN005'),
('SSN006');

INSERT INTO Traffic_Controllers (ssn, recent_medical_exam_date) VALUES
('SSN007', '2024-01-15'),
('SSN008', '2024-03-22'),
('SSN009', '2023-11-10'),
('SSN010', '2024-06-05');

INSERT INTO Technicians_Expertise (ssn, model_no) VALUES
('SSN001', 'B737'),
('SSN001', 'A320'),
('SSN002', 'A320'),
('SSN002', 'A321'),
('SSN003', 'B777'),
('SSN003', 'B737'),
('SSN004', 'A321'),
('SSN005', 'B737 MAX 8'),
('SSN005', 'B777'),
('SSN006', 'A320');

INSERT INTO Flights (flight_no, route_id, plane_no, departure_time, arrival_time, status) VALUES
('TK101', 1, 'TC-JFK', '2024-01-15 08:00:00', '2024-01-15 09:30:00', 'Completed'),
('PC202', 2, 'TC-PCG', '2024-01-15 10:00:00', '2024-01-15 11:20:00', 'Completed'),
('VF303', 3, 'TC-VFA', '2024-01-16 09:00:00', '2024-01-16 10:30:00', 'Completed'),
('XQ404', 4, 'TC-XQA', '2024-01-16 14:00:00', '2024-01-16 15:10:00', 'Completed'),
('TK102', 1, 'TC-TKB', '2024-01-17 12:00:00', '2024-01-17 13:30:00', 'Completed'),
('PC203', 2, 'TC-PCB', '2024-01-18 15:00:00', '2024-01-18 16:20:00', 'Completed'),
('XQ405', 3, 'TC-XQB', '2024-01-18 17:00:00', '2024-01-18 18:30:00', 'Completed'),
('TK103', 4, 'TC-JFK', '2024-01-19 08:00:00', '2024-01-19 09:10:00', 'Scheduled'),
('PC204', 1, 'TC-PCG', '2024-01-19 11:00:00', '2024-01-19 12:20:00', 'Scheduled');

INSERT INTO Hangar_Logs (log_id, plane_no, hangar_no, time_in, time_out) VALUES
(1, 'TC-JFK', 1, '2024-01-10 08:00:00', '2024-01-12 10:00:00'),
(2, 'TC-PCG', 2, '2024-01-11 09:00:00', '2024-01-13 11:00:00'),
(3, 'TC-VFA', 3, '2024-01-12 10:00:00', '2024-01-14 12:00:00'),
(4, 'TC-XQA', 4, '2024-01-13 11:00:00', '2024-01-15 13:00:00'),
(7, 'TC-PCB', 3, '2024-01-16 14:00:00', '2024-01-18 16:00:00'),
(8, 'TC-XQB', 4, '2024-01-17 15:00:00', '2024-01-19 17:00:00'),
(9, 'TC-JFK', 2, '2024-01-20 08:00:00', '2024-01-22 10:00:00'),
(10, 'TC-PCG', 3, '2024-01-21 09:00:00', '2024-01-23 11:00:00');

INSERT INTO Testing (event_id, test_id, plane_no, ssn, date, time_spent, score) VALUES
(1, 1, 'TC-JFK', 'SSN001', '2024-01-10', 3.5, 95),
(2, 2, 'TC-PCG', 'SSN002', '2024-01-11', 2.0, 88),
(3, 3, 'TC-VFA', 'SSN003', '2024-01-12', 4.0, 92),
(4, 4, 'TC-XQA', 'SSN004', '2024-01-13', 3.0, 78),
(6, 1, 'TC-TKB', 'SSN006', '2024-01-15', 3.5, 90),
(7, 2, 'TC-PCB', 'SSN001', '2024-01-16', 2.0, 96),
(8, 3, 'TC-XQB', 'SSN002', '2024-01-17', 4.0, 82),
(9, 4, 'TC-JFK', 'SSN003', '2024-01-18', 3.0, 91),
(10, 5, 'TC-PCG', 'SSN004', '2024-01-19', 2.5, 87),
(11, 1, 'TC-VFA', 'SSN005', '2024-01-20', 3.5, 93),
(12, 2, 'TC-XQA', 'SSN006', '2024-01-21', 2.0, 79);