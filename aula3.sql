USE BikeStores;

/*                        EXERCICIO 2                             */
/*SET IDENTITY_INSERT production.brands ON;
INSERT INTO production.brands (brand_id, brand_name)
VALUES (8000, 'nike');
SET IDENTITY_INSERT production.brands OFF;

SELECT * FROM production.brands;

SET IDENTITY_INSERT production.categories ON;
INSERT INTO production.categories (category_id, category_name)
VALUES (5001, 'shoes');
SET IDENTITY_INSERT production.categories OFF;

SELECT * FROM production.categories;

SET IDENTITY_INSERT sales.customers ON;
INSERT INTO sales.customers
    (customer_id, first_name, last_name, phone, email, street, city, state, zip_code)
VALUES
    (9002, 'Joao', 'Rito', '99999', 'asd@email', 'rua asd', 'Lisboa', 'Lisboa', '1500');
SET IDENTITY_INSERT sales.customers OFF;

SELECT * FROM sales.customers;

SET IDENTITY_INSERT sales.stores ON;
INSERT INTO sales.stores
    (store_id, store_name, phone, email, street, city, state, zip_code)
VALUES
    (6004, 'Loja 1', '99999', 'asd@email', 'rua asd', 'Lisboa', 'Lisboa', '1500');
SET IDENTITY_INSERT sales.stores OFF;

SELECT * FROM sales.stores;
*/

/*                        EXERCICIO 3                             */
/*
UPDATE sales.stores SET store_name = 'Loja 2' WHERE store_id = 6004;
SELECT * FROM sales.stores;

UPDATE sales.customers SET first_name = 'Miguel' WHERE customer_id = 9002;
SELECT * FROM sales.customers;

UPDATE production.brands SET brand_name = 'Adidas' WHERE brand_id = 8000;
SELECT * FROM production.brands;

UPDATE production.categories SET category_name = 'T-shirts' WHERE category_id = 5001;
SELECT * FROM production.categories; */

/*                       EXERCICIO 4                             */
/*
DELETE FROM sales.stores WHERE store_id = 6004;
DELETE FROM sales.customers WHERE customer_id = 9002;
DELETE FROM production.brands WHERE brand_id = 8000;
DELETE FROM production.categories WHERE category_id = 5001;

SELECT * FROM sales.stores;
SELECT * FROM sales.customers;
SELECT * FROM production.brands;
SELECT * FROM production.categories; */

/*                      EXERCICIO 5            semana 3.1                 */
/*SELECT phone AS Telefone, state AS Estado FROM sales.customers c
WHERE c.state = 'TX' AND c.phone IS NULL;*/

/*SELECT phone AS Telefone, state AS Estado 
FROM sales.customers c
WHERE c.state = 'CA'AND c.phone IS NOT NULL*/

/*SELECT store_name AS Nome_Loja, zip_code AS Codigo_Postal
FROM sales.stores s
WHERE s.zip_code IN ('95060', '75088');*/

/*SELECT first_name AS Nome, last_name AS Apelido, email AS Email
FROM sales.staffs s
WHERE email LIKE '%serrano%';*/

/*SELECT first_name AS Nome, last_name AS Apelido, manager_id AS Manager_ID
FROM sales.staffs s
WHERE manager_id IS NULL;*/

/*SELECT first_name AS Nome, last_name AS Apelido, phone AS Telefone 
FROM sales.staffs s
WHERE phone LIKE '%55';*/

/*SELECT first_name AS Nome
FROM sales.staffs s
WHERE first_name LIKE 'M%';*/

/*SELECT order_date AS Data_Encomenda
FROM sales.orders o
WHERE order_date BETWEEN '2016-01-01' AND '2016-01-15';*/

/*SELECT customer_id AS ID_Cliente, order_date AS Data_Encomenda
FROM sales.orders o
WHERE customer_id IN (541,1212,1326) AND YEAR(order_date) BETWEEN 2016 AND 2017;*/

/*SELECT email, RIGHT(email,LEN(email)-CHARINDEX('@',email)) AS Dominio
FROM sales.customers;*/


/*SELECT first_name as Nome, last_name as Apelido, email as Email,

    CASE 
        WHEN LEN(email) <= 25 THEN email 
        ELSE LOWER(
             CONCAT(
                LEFT(first_name,1),
                '.',
                last_name,
                RIGHT(email,LEN(email)-CHARINDEX('@',email) + 1)
            )
        )
    END AS 'Novo Email'

FROM sales.customers c;*/

/*UPDATE sales.customers
SET email = LOWER(
    CONCAT(
        LEFT(first_name,1),
        '.',
        last_name,
        RIGHT(email,LEN(email)-CHARINDEX('@',email) + 1)
    )
)
WHERE len(email) > 25;*/

/*SELECT product_name AS Nome_Produto, list_price AS 'Preço (s/IVA)',
    CASE 
    WHEN list_price > 4000 THEN 'IVA 50%'
        WHEN list_price > 3000 THEN 'IVA 23%'
        WHEN list_price > 2000 THEN 'IVA 13%'
    WHEN list_price > 1000 THEN 'IVA 6%'
    ELSE 'IVA 0%'
    END AS '% IVA',
    CASE 
        WHEN list_price > 4000 THEN list_price * 1.5
        WHEN list_price > 3000 THEN list_price * 1.23
        WHEN list_price > 2000 THEN list_price * 1.13
        WHEN list_price > 1000 THEN list_price * 1.06
        ELSE list_price
    END AS 'Preço (c/IVA)'
    FROM production.products p */

/*SELECT MAX(quantity) AS 'Máxima Quantidade'
FROM sales.order_items o */

/*SELECT AVG(list_price) AS 'Preço Médio'
FROM production.products */












