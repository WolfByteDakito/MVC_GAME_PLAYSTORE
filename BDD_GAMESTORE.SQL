CREATE TABLE Publisher (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    country VARCHAR(255)
);

CREATE TABLE Game (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    release_date DATE,
    description TEXT,
    publisher_id INT,
    FOREIGN KEY (publisher_id) REFERENCES Publisher(id)
);

CREATE TABLE User (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL
);

CREATE TABLE `Order` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    order_date DATETIME NOT NULL,
    total_price DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES User(id)
);

CREATE TABLE OrderItem (
    order_id INT,
    game_id INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2),
    PRIMARY KEY (order_id, game_id),
    FOREIGN KEY (order_id) REFERENCES `Order`(id),
    FOREIGN KEY (game_id) REFERENCES Game(id)
);
