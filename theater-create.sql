CREATE table customer (
  customer_id SERIAL primary key,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  billing_info VARCHAR(100)
);

CREATE TABLE movie (
  movie_id SERIAL primary key,
  movie_name VARCHAR(100),
  run_time NUMERIC(4)
);

CREATE TABLE concession (
  concession_id SERIAL primary key,
  product VARCHAR(100),
  price NUMERIC(4,2)
);

CREATE TABLE tickets (
  ticket_id SERIAL primary key,
  customer_id INTEGER,
  foreign key(customer_id) references customer(customer_id),
  movie_name VARCHAR(100),
  show_date DATE default current_date,
  movie_time TIME,
  theater NUMERIC(2),
  price_movie NUMERIC(4,2),
  movie_id INTEGER,
  foreign key(movie_id) references movie(movie_id)
);

CREATE TABLE payment (
  payment_id SERIAL primary key,
  customer_id INTEGER,
  foreign key(customer_id) references customer(customer_id),
  ticket_id INTEGER,
  foreign key(ticket_id) references tickets(ticket_id),
  concession_id INTEGER,
  foreign key(concession_id) references concession(concession_id),
  staff_id VARCHAR(15),
  total_cost NUMERIC(4,2)
);

