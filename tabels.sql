CREATE TABLE customer(
customer_id serial PRIMARY KEY,
payment NUMERIC (4,2)
);

CREATE TABLE snacks(
snack_id serial PRIMARY KEY,
price NUMERIC (3,2),
snack_name varchar (50),
customer_id integer NOT NULL ,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE movie (
movie_id serial PRIMARY KEY,
title varchar (50),
duration_hour integer,
customer_id integer NOT NULL,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE ticket(
ticket_id serial PRIMARY KEY,
price NUMERIC (2,2),
movie_id integer NOT NULL,
customer_id integer NOT NULL,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);




