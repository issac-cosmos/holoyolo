CREATE TABLE admin (
    admin_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    consumer_id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO address (admin_id, consumer_id, name, email, password) VALUES
(1, 1, 'John Doe', 'john.doe@example.com', 'password123'),
(2, 2, 'Jane Smith', 'jane.smith@example.com', 'securePass1'),
(3, 3, 'Alice Johnson', 'alice.johnson@example.com', 'alice123'),
(4, 4, 'Bob Brown', 'bob.brown@example.com', 'bobSecure456'),
(5, 5, 'Charlie Davis', 'charlie.davis@example.com', 'charliePass789'),
(6, 6, 'Emily Clark', 'emily.clark@example.com', 'emilySecure321'),
(7, 7, 'Frank White', 'frank.white@example.com', 'frankPass654'),
(8, 8, 'Grace Hall', 'grace.hall@example.com', 'graceSecure987'),
(9, 9, 'Henry Adams', 'henry.adams@example.com', 'henryPass456'),
(10, 10, 'Ivy Wilson', 'ivy.wilson@example.com', 'ivySecure123');
