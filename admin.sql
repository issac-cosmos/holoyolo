CREATE TABLE admin (
    admin_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO admin (admin_id, name, email, password) VALUES
(1, 'John Doe', 'john.doe@example.com', 'password123'),
(2, 'Jane Smith', 'jane.smith@example.com', 'securePass1'),
(3, 'Alice Johnson', 'alice.johnson@example.com', 'alice123'),
(4, 'Bob Brown', 'bob.brown@example.com', 'bobSecure456'),
(5, 'Charlie Davis', 'charlie.davis@example.com', 'charliePass789'),
(6, 'Emily Clark', 'emily.clark@example.com', 'emilySecure321'),
(7, 'Frank White', 'frank.white@example.com', 'frankPass654'),
(8, 'Grace Hall', 'grace.hall@example.com', 'graceSecure987'),
(9, 'Henry Adams', 'henry.adams@example.com', 'henryPass456'),
(10, 'Ivy Wilson', 'ivy.wilson@example.com', 'ivySecure123');

-- 데이터 추가
INSERT INTO admin (admin_id, name, email, password) VALUES
(11, 'John Doe', 'john.doe@example.com', 'password123'),
(12, 'Jane Smith', 'jane.smith@example.com', 'securePass1'),
(13, 'Alice Johnson', 'alice.johnson@example.com', 'alice123'),
(14, 'Bob Brown', 'bob.brown@example.com', 'bobSecure456'),
(15, 'Charlie Davis', 'charlie.davis@example.com', 'charliePass789'),
(16, 'Emily Clark', 'emily.clark@example.com', 'emilySecure321'),
(17, 'Frank White', 'frank.white@example.com', 'frankPass654'),
(18, 'Grace Hall', 'grace.hall@example.com', 'graceSecure987'),
(19, 'Henry Adams', 'henry.adams@example.com', 'henryPass456'),
(20, 'Ivy Wilson', 'ivy.wilson@example.com', 'ivySecure123');