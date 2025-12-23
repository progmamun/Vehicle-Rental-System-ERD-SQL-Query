# Vehicle Rental System - Database Design & SQL Queries

---

1. Business Logic

Users Table:
User role (Admin or Customer)
Name, email, password, phone number
Each email must be unique (no duplicate accounts)

Vehicles Table:
Vehicle name, type (car/bike/truck), model
Registration number (must be unique)
Rental price per day
Availability status (available/rented/maintenance)

Bookings Table:
Which user made the booking (link to Users table)
Which vehicle was booked (link to Vehicles table)
Start date and end date of rental
Booking status (pending/confirmed/completed/cancelled)
Total cost of the booking

---

Query 1: JOIN
Retrieve booking information along with:

Customer name
Vehicle name
Concepts used: INNER JOIN

Query 2: EXISTS
Find all vehicles that have never been booked.

Concepts used: NOT EXISTS

Query 3: WHERE
Retrieve all available vehicles of a specific type (e.g. cars).

Concepts used: SELECT, WHERE

Query 4: GROUP BY and HAVING
Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings.

Concepts used: GROUP BY, HAVING, COUNT
