CREATE TABLE IF NOT EXISTS orders (
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    product VARCHAR(100),
    price DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO orders (customer_name, product, price)
VALUES 
('Ahmed', 'Laptop', 1200.00),
('Sara', 'Phone', 800.00),
('Omar', 'Tablet', 500.00);

/*CREATE ROLE replicator WITH REPLICATION LOGIN PASSWORD 'replicatorpass';

GRANT CONNECT ON DATABASE cdcdb TO replicator;
GRANT USAGE ON SCHEMA public TO replicator;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO replicator;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO replicator;

CREATE PUBLICATION dbz_publication FOR TABLE orders;*/