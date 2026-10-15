USE BikeStores;
/*
SELECT customer_id, first_name, last_name, state
INTO sales.AllCustomers
FROM sales.customers

SELECT * FROM sales.AllCustomers;

SELECT *
INTO sales.TexasCostumers
FROM sales.customers
WHERE state = 'TX'

SELECT * FROM sales.TexasCostumers;
TRUNCATE TABLE sales.TexasCostumers;
CREATE TABLE sales.Cliente (
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    state VARCHAR(255)
);

INSERT INTO sales.Cliente
SELECT first_name AS 'Nome', last_name AS 'Apelido', state AS 'Estado'
FROM sales.customers

SELECT * FROM sales.Cliente;
SELECT *
FROM sales.Cliente
WHERE last_name = 'Burks';

CREATE INDEX idx_lastname ON sales.customers(last_name);

sp_helpindex 'sales.customers'
*/

