CREATE TABLE users (
    id SERIAL PRIMARY KEY,

    role VARCHAR(10) NOT NULL
        CHECK (role IN ('admin', 'customer')),

    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(20),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
