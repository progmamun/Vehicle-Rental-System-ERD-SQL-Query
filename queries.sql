-- Query 1: JOIN
SELECT
    b.id AS booking_id,
    u.name AS customer_name,
    v.vehicle_name,
    b.start_date,
    b.end_date,
    b.booking_status AS status
FROM bookings b
JOIN users u
    ON b.user_id = u.id
JOIN vehicles v
    ON b.vehicle_id = v.id
ORDER BY b.id;

-- Query 2: EXISTS
SELECT
    v.id AS vehicle_id,
    v.vehicle_name AS name,
    v.vehicle_type AS type,
    v.model,
    v.registration_number,
    v.rental_price_per_day AS rental_price,
    v.availability_status AS status
FROM vehicles v
WHERE NOT EXISTS (
    SELECT 1
    FROM bookings b
    WHERE b.vehicle_id = v.id
)
ORDER BY v.id;


-- Query 3: WHERE
SELECT
    v.id AS vehicle_id,
    v.vehicle_name AS name,
    v.vehicle_type AS type,
    v.model,
    v.registration_number,
    v.rental_price_per_day AS rental_price,
    v.availability_status AS status
FROM vehicles v
WHERE v.availability_status = 'available'
  AND v.vehicle_type = 'car'
ORDER BY v.id;


-- Query 4: GROUP BY and HAVING
SELECT
    v.vehicle_name,
    COUNT(b.id) AS total_bookings
FROM vehicles v
JOIN bookings b
    ON b.vehicle_id = v.id
GROUP BY v.vehicle_name
HAVING COUNT(b.id) > 2;
