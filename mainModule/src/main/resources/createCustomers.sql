CREATE database NickDB;

create table NickDB.CUSTOMERS (
id int primary key auto_increment,
name varchar(100),
surname varchar(100),
age int,
phone_number varchar(100)
);

insert into NickDB.CUSTOMERS (name, surname, age, phone_number)
values
('Иван', 'Кащеев', 25, 73337896641),
('Роберт', 'Венградов', 29, 73337896656),
('Alexey', 'Иванов', 21, 73337896651),
('alexey', 'Петров', 26, 73337896657);