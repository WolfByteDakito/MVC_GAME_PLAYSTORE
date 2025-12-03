-- MLD (Modèle Logique de Données)

TABLE Publisher (
    id            INT PK AI,
    name          VARCHAR(255) NOT NULL,
    country       VARCHAR(255)
);

TABLE Game (
    id             INT PK AI,
    title          VARCHAR(255) NOT NULL,
    price          DECIMAL(10,2) NOT NULL,
    release_date   DATE,
    description    TEXT,
    publisher_id   INT FK -> Publisher.id
);

TABLE User (
    id             INT PK AI,
    username       VARCHAR(100) NOT NULL,
    email          VARCHAR(255) NOT NULL UNIQUE,
    password_hash  VARCHAR(255) NOT NULL
);

TABLE Order (
    id            INT PK AI,
    user_id       INT FK -> User.id,
    order_date    DATETIME NOT NULL,
    total_price   DECIMAL(10,2)
);

TABLE OrderItem (
    order_id      INT FK -> Order.id,
    game_id       INT FK -> Game.id,
    quantity      INT NOT NULL,
    unit_price    DECIMAL(10,2),
    PRIMARY KEY (order_id, game_id)
);