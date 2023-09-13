create table NickDB.ORDERS (
id integer primary key auto_increment,
dt date,
customer_id integer,
product_name varchar(100),
amount integer,
foreign key (customer_id) references NickDB.CUSTOMERS(id)
);

insert NickDB.ORDERS(dt, customer_id, product_name, amount)
values
(20230901, 1, 'product1', 10),
(20230903, 1, 'product2', 11),
(20230903, 3, 'product3', 13),
(20230904, 2, 'product2', 16),
(20230907, 4, 'product4', 18),
(20230907, 4, 'product5', 10),
(20230911, 3, 'product3', 15);