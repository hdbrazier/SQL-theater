-- Customer information
insert into customer(first_name, last_name, billing_info)
values('Joe', 'Thompson', '4596 03/25 458');

insert into customer(first_name, last_name, billing_info)
values('Tom', 'Wakely', '6958 02/23 554');

insert into customer(first_name, last_name, billing_info)
values('John', 'Brazier', '4784 05/24 446');

insert into customer(first_name, last_name, billing_info)
values('Josh', 'Wilbur', '4757 01/25 256');

insert into customer(first_name, last_name, billing_info)
values('Harry', 'Potter', '4767 05/25 147');

-- Verify
select * from customer;


-- movie info
insert into movie(movie_id, movie_name, run_time)
values('1', 'Topgun', '0220');

insert into movie(movie_id, movie_name, run_time)
values('2', 'King Kong', '0145');

insert into movie(movie_id, movie_name, run_time)
values('3', 'Gladiator', '0210');

insert into movie(movie_id, movie_name, run_time)
values('4', 'Love Actually', '0145');

insert into movie(movie_id, movie_name, run_time)
values('5', 'Predator', '0200');

-- Verify
select * from movie;


-- concession information

insert into concession(product, price)
values('Popcorn', 5.50);

insert into concession(product, price)
values('Soda', 3.50);

insert into concession(product, price)
values('Pizza', 11.99);

insert into concession(product, price)
values('Candy', 4.00);

insert into concession(product, price)
values('Beer', 9.50);

-- Verify
select * from concession;



-- ticket information


insert into tickets(movie_name, movie_time, theater,price_movie)
values('Topgun', '16:10', '5', 14.99);

insert into tickets(movie_name, movie_time, theater, price_movie)
values('Kingkong', '17:00', '2', 11.50);

insert into tickets(movie_name, movie_time, theater, price_movie)
values('Gladiator', '19:45', '13', 10.00);

insert into tickets(movie_name, movie_time, theater, price_movie)
values('Love Actually', '18:00', '4', 6.50);

insert into tickets(movie_name, movie_time, theater, price_movie)
values('Predator', '21:30', '9', 15.99);


-- verify
select * from tickets;


insert into payment (customer_id, ticket_id, concession_id, staff_id, total_cost)
values (1, 1, 1, '7003', 20.49);

insert into payment (customer_id, ticket_id, concession_id, staff_id, total_cost)
values (2, 2, 2, '7003', 20.49);

-- Verify
select * from payment;
