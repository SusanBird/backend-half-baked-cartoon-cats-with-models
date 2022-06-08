-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`

DROP table if exists cats;

CREATE table cats (
    id BIGINT GENERATED ALWAYS AS IDENTITY, 
    name VARCHAR NOT NULL,
    lives INT NOT NULL
);

INSERT INTO cats (name, lives) VALUES 
('Felix', 3), ('Garfield', 7), ('Duchess', 9), ('Stimpy', 1), ('Sylvester', 1), ('Tigger', 8), ('Hello Kitty', 9), ('Hobbes', 6);