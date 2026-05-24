Airlines (airline_id PK, name, contacts)

Models (model_no PK, manufacturer, capacity)

Hangar (hangar_no PK, location)

Tests (test_id PK, test_name, max_score)

Routes (route_id PK, origin, destination, price)

Employees (ssn PK, first_name, last_name, 
           union_membership_no, employee_type)

Airplanes (plane_no PK, model_no FK, 
           airline_id FK, production_year)

Flights (flight_no PK, route_id FK, plane_no FK, 
         departure_time, arrival_time, status)

Technicians (ssn PK/FK → Employees)

Traffic_Controllers (ssn PK/FK → Employees, 
                     recent_medical_exam_date)

Technicians_Expertise (ssn PK/FK → Technicians, 
                       model_no PK/FK → Models)

Hangar_Logs (log_id PK, plane_no FK → Airplanes, 
             hangar_no FK → Hangar, time_in, time_out)

Testing (event_id PK, test_id FK → Tests, 
         plane_no FK → Airplanes, 
         ssn FK → Technicians, 
         date, time_spent, score)