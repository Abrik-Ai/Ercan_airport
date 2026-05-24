USE ercan_airport;

-- ============================================
-- Query 1: List all flights with route details
-- ============================================

SELECT flight_no,origin, destination, price
FROM Flights
JOIN Routes ON Flights.route_id = Routes.route_id;


-- ============================================
-- Query 2: How many flights has each airplane made?
-- ============================================

SELECT plane_no, COUNT(plane_no)
FROM Flights
GROUP BY plane_no;

-- ============================================
-- Query 3: What is the average test score for each airplane?
-- ============================================

SELECT, plane_no, AVG(score) AS average
FROM Testing
GROUP BY plane_no;

-- ============================================
-- Query 4: Which technician spent the most total hours testing?
-- ============================================

SELECT ssn, SUM(time_spent) AS total
FROM testing
GROUP BY ssn 
ORDER BY total LIMIT 1;

-- ============================================
-- Query 5: List all technicians with their full name and expertise model
-- ============================================

SELECT e.first_name, e.last_name,  te.model_no
FROM Employees e 
JOIN Technicians t ON t.ssn = e.ssn 
JOIN Technicians_Expertise te ON te.ssn = e.ssn;

-- ============================================
-- Query 6: Which airplanes scored below the average test score?
-- ============================================

SELECT plane_no, score
FROM Testing
WHERE score <
(
    SELECT AVG(SCORE) FROM Testing
);

-- ============================================
-- Query 7: How many airplanes does each airline own?
-- ============================================

SELECT airline_id, COUNT(plane_no) as total
FROM Airplanes
GROUP BY airline_id;

-- ============================================
-- Query 8: Which traffic controllers need a medical exam within a year?
-- ============================================

SELECT ssn, recent_medical_exam_date
FROM Traffic_Controllers
WHERE recent_medical_exam_date < DATE_SUB(CURDATE(), INTERVAL 1 YEAR)

-- ============================================
-- Query 9: What is the most expensive route?
-- ============================================

SELECT origin, destination, price
FROM Routes
WHERE price = 
(
    SELECT MAX(price) 
    FROM Routes
);

-- ============================================
-- Query 10: List each airplane's total time spent in hangars
-- ============================================

SELECT plane_no, SUM(TIMESTAMPDIFF(HOUR, time_in, time_out)) AS total
FROM Hangar_Logs
GROUP BY plane_no;

-- ============================================
-- Query 11: Which test is the hardest? (lowest average score)
-- ============================================

SELECT t.test_name, AVG(te.score) AS average
FROM Testing te
JOIN Tests t ON te.test_id = t.test_id
GROUP BY t.test_name
ORDER BY average ASC LIMIT 1;

-- ============================================
-- Query 12: How many tests has each technician performed?
-- ============================================

SELECT e.first_name, e.last_name, COUNT(event_id) AS total
FROM Testing t
JOIN Employees e on t.ssn = e.ssn 
GROUP BY t.ssn, e.first_name, e.last_name;

-- ============================================
-- Query 13: List all completed flights with airline name and plane model
-- ============================================

SELECT f.flight_no, a.name, m.model_no 
FROM Flights f
JOIN Airplanes ap ON f.plane_no = ap.plane_no
JOIN Airlines a ON  ap.airline_id = a.airline_id
JOIN Models m ON ap.model_no = m.model_no
WHERE f.status = 'Completed';

-- ============================================
-- Query 14: Which airplane has never been tested?
-- ============================================

SELECT plane_no
FROM Airplanes 
WHERE plane_no NOT IN 
(
    SELECT plane_no 
    FROM Testing
);

-- ============================================
-- Query 15: What is the total revenue per route?
-- ============================================

SELECT r.origin, r.destination, SUM(r.price) AS total
FROM Flights f
JOIN Routes r ON  f.route_id = r.route_id
GROUP BY r.origin, r.destination;

