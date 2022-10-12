INSERT INTO movie(
    film_id,
    film_name,
    film_date,
    film_time
)
VALUES (
    '1',
    'Star Wars EPISODE III',
    '10/12/2022',
    '7:30pm'
),
(
    '2',
    'Star Wars EPISODE IV',
    '10/12/2022',
    '7:00pm'
);

INSERT INTO concession(
    item_id,
    item_name,
    item_price
)
VALUES (
    '1',
    'Small Popcorn',
    6.99
),
(
    '2',
    'Large Popcorn',
    8.99
);

INSERT INTO ticket(
    ticket_id,
    ticket_price,
    seat_num,
    film_id
)
VALUES (
    '1',
    13.99,
    'J10',
    '2'
),
(
    '2',
    13.99,
    'L2',
    '1'
);

INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    ticket_id
)
VALUES (
    '1',
    'Carla',
    'Carney',
    '2'
);

INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    ticket_id
)
VALUES (
    '2',
    'Henry',
    'Carney',
    '1'
);

INSERT INTO orderItem(
    orderItem_id,
    item_id,
    customer_id
)
VALUES (
    '1',
    '1',
    '2'
);


