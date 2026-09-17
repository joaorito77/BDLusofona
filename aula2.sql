USE BikeStores;
/*SELECT * FROM sales.stores
SELECT brand_name FROM production.brands

SELECT customer_id, first_name, last_name 
FROM sales.customers
WHERE city = 'Houston'*/

SELECT customer_id, first_name, last_name, state 
FROM sales.customers
WHERE state IN ('TX','CA')

SELECT list_price  
FROM production.products
WHERE list_price > 150

/* MAX(COL1) DÁ VALOR MÁXIMO DESSA COLUNA */
/* FIQUEI NO EXERCICIO 1.5*/