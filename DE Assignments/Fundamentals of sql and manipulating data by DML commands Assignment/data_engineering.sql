use data_engineering_practice;

create table customers(
customer_id int primary key,
name varchar(50),
email varchar(100),
password varchar(150)
);
/* Insert operation */
insert into customers (customer_id, name, email, password)
values
(1,'Tushar Balakrishnan', 'tushar.bala@example.com', 'Tushar#Pass987'),
(2,'Meenal Chandrasekar', 'meenal.chandra@example.com', 'Meenal@Secure456'),
(3,'Vikram Subramanian', 'vikram.subra@example.com', 'Vikram@xTR4Strong'),
(4,'Lavanya Pillai', 'lavanya.pillai@example.com', 'Lava_987StrongPass'),
(5,'Parthiban Iyer', 'parthiban.iyer@example.com', 'P@rthIBANsecure56'),
(6,'Radha Bhattacharya', 'radha.bhatta@example.com', 'Radha_4Secure999'),
(7,'Gaurav Kulkarni', 'gaurav.kulk@example.com', 'KulkarniPass786#'),
(8,'Shalini D’Souza', 'shalini.dsouza@example.com', 'Shal_DS8Secure123'),
(9,'Tejaswini Prasad', 'tejaswini.prasad@example.com', 'TejasP@ss900'),
(10,'Nishant Upadhyay', 'nishant.upad@example.com', 'Nishant#SafE789');

select * from customers

/* Update operation */

update customers
set name='Raj Kumar'
where customer_id like '10'

/* Deleting a record from table */

delete from customers
where name= 'Raj Kumar'

/* Retrive specific attribute */

select email from customers;

/* Retrive a specific row */

select * from customers
where email like 't%' 


/* Filtering data using where clause */

select * from customers
where customer_id >=5

/* Filtering data using In, Distinct, and, or, between, like, column and table aliases */

select * from customers;

select * from customers 
where customer_id IN (1,2,3);

select DISTINCT customer_id from customers;

select * from customers 
where customer_id >5 AND name like 'Gaurav%';

select * from customers 
where customer_id >5 OR name like 'Tushar%';

select * from customers 
where customer_id BETWEEN 4 AND 8; 

select * from customers
where email like 't%'; 

select customer_id as ID, name as Customer_Name from customers;

/* Aggregate functions, orderby, groupby, having */

SELECT name, COUNT(*) AS name_count
FROM customers
GROUP BY name
HAVING COUNT(*) between 1 and 3
ORDER BY name ASC;
