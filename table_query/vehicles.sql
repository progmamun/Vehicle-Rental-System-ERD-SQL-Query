CREATE TABLE vehicles (
    id SERIAL PRIMARY KEY,
    vehicle_name VARCHAR(100) NOT NULL,
    vehicle_type VARCHAR(10) NOT NULL
        CHECK (vehicle_type IN ('car', 'bike', 'truck')),

    model VARCHAR(50) NOT NULL,
    registration_number VARCHAR(50) NOT NULL UNIQUE,

    rental_price_per_day NUMERIC(10,2) NOT NULL
        CHECK (rental_price_per_day > 0),

    availability_status VARCHAR(15) NOT NULL DEFAULT 'available'
        CHECK (availability_status IN ('available', 'rented', 'maintenance')),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
