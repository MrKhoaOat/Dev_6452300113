create table employees (
	id int auto_increment,
    firstname varchar(20),
    lastname varchar(20),
    age int,
    created_at timestamp default now(),
    primary key(id)
);

create table books (
	id int auto_increment,
    isbn varchar(13) not null,
    bname varchar(100) not null,
	price float not null,
    created_at timestamp default now(),
    primary key(id),
    unique(isbn)
);

create table sell_histories (
	id int auto_increment,
    isbn varchar(13),
	emp_id int,
    price float,
    amount int,
    created_at timestamp default now(),
    primary key(id),
    foreign key (emp_id) references employees(id)
);

INSERT INTO employees(firstname, lastname, age) values
('Noah', 'Armstrong', 34),
('Leslie', 'Ellis', 24),
('Sandra', 'Hoffman', 35),
('Cameron', 'Meyer', 19),
('Cameron', 'Moore', 27);

INSERT INTO books(isbn, bname, price) values
('9783598215933', 'The Marquis and I', 250),
('9783598215957', 'Blood on the Tongue', 352),
('9783598215995', 'A Higher Loyalty', 157),
('9783598215919', 'The Mars Room', 199),
('9783598215766', 'His Toy', 289);

