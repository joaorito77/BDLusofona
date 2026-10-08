
/* CREATE DATABASE BikeStoresPlus         CRIAR BASE DADOS

SELECT * FROM sys.databases               VERIFICAR AS BASES DE DADOS INTERNAS

SELECT * FROM INFORMATION_SCHEMA.columns  VER INFORMATION_SCHEMA

CREATE SCHEMA "products"                 CRIAR SCHEMA "PRODUCTS"

CREATE SCHEMA "marketing"                CRIAR SCHEMA "MARKETING"

SELECT * FROM sys.schemas                VERIFICAR A CRIAÇÃO DOS SCHEMAS

CREATE TABLE  marketing.products (       CRIAR TABELA marketing.products com 2 campos 
    product_id INT,
    product_name VARCHAR (255),
)
SELECT * FROM INFORMATION_SCHEMA.COLUMNS VERIFICAR CAMPOS CRIADOS.



INSERT INTO marketing.products(product_id,product_name)  CRIAR REGISTO DENTRO DA TABELA
VALUES (1, 'alocação');

SELECT * FROM marketing.products                         VERIFICAR SE ESTÁ DENTRO DA TABELA

INSERT INTO marketing.products(product_id,product_name)  CRIAR NOVO REGISTO
VALUES(2, 'flyer')

INSERT INTO marketing.products(product_id,product_name)  CRIAR REGISTO NO MESMO ID
VALUES(1,'design')

INSERT INTO marketing.products(product_id,product_name)  CRIAR NOVO REGISTO
VALUES(3,'site')

USE BikeStoresPlus
CREATE TABLE marketing.staff (                      NOVA TABELA
    staff_id INT PRIMARY KEY,
    staff_first_name VARCHAR (255) NOT NULL,
    staff_last_name VARCHAR (255) NOT NULL,
    staff_phone INT NOT NULL,
);

INSERT INTO marketing.staff(staff_id,staff_first_name,staff_last_name,staff_phone) INSERÇÃO NA NOVA TABELA
VALUES (1,'João','Rito','915027188')

USE BikeStoresPlus
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME LIKE 'marketing_staff'            TABELA ERRADA FOI PARA O DBO

*/
