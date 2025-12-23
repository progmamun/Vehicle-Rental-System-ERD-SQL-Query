CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,

    user_id INTEGER NOT NULL,
    vehicle_id INTEGER NOT NULL,

    start_date DATE NOT NULL,
    end_date DATE NOT NULL,

    booking_status VARCHAR(15) NOT NULL DEFAULT 'pending'
        CHECK (booking_status IN ('pending', 'confirmed', 'completed', 'cancelled')),

    total_cost NUMERIC(10,2) NOT NULL
        CHECK (total_cost >= 0),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_vehicle
        FOREIGN KEY (vehicle_id)
        REFERENCES vehicles(id)
        ON DELETE CASCADE,

    CONSTRAINT valid_date_range
        CHECK (end_date >= start_date)
);
