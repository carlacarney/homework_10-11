CREATE TABLE movie(
    film_id SERIAL PRIMARY KEY,
    film_name VARCHAR(100) NOT NULL,
    film_date DATE NOT NULL,
    film_time TIME NOT NULL
);

CREATE TABLE concession(
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    item_price NUMERIC(10,2) NOT NULL
);

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    ticket_price NUMERIC(10,2) NOT NULL,
    seat_num VARCHAR(10) NOT NULL,
    film_id INTEGER NOT NULL,
    FOREIGN KEY (film_id) REFERENCES movie(film_id)
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    ticket_id INTEGER NOT NULL,
    orderItem_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id),
    FOREIGN KEY (orderItem_id) REFERENCES orderItem(orderItem_id)
);

CREATE TABLE orderItem(
    orderItem_id SERIAL PRIMARY KEY,
    item_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (item_id) REFERENCES concession(item_id),
    FOREIGN KEY (costumer_id) REFERENCES customer(customer_id)
);


-- I wrote "tiket" instead of "ticket",
-- So I used this to delete the table and create a new one.
DROP TABLE tiket;

-- I entered a wrong price, so I deleted using this
DELETE FROM concession;

SELECT *
FROM orderitem;