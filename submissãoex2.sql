/* CREATE DATABASE BikeStoresAnalytics
SELECT name FROM sys.databases WHERE name = 'BikeStoresAnalytics'; VERIFICAR SE A BASE DE DADOS EXISTE
CREATE SCHEMA "metrics"

CREATE SCHEMA "events"
SELECT name FROM sys.schemas WHERE name IN ('metrics', 'events');   VERIFICAR SE OS SCHEMAS EXISTEM


CREATE TABLE metrics.indicators (
    indicators_id INT PRIMARY KEY,
    indicators_name VARCHAR (255) NOT NULL,
    category VARCHAR (150) NOT NULL UNIQUE,
    description VARCHAR (MAX) NULL,
    val NUMERIC (10,2) CHECK (val > 20),
    dt DATETIME DEFAULT CURRENT_TIMESTAMP
    
);

CREATE TABLE events.messages (
    id INT PRIMARY KEY,
    message VARCHAR (255) DEFAULT 'General Event',
    dt DATETIME DEFAULT CURRENT_TIMESTAMP

);

SELECT * FROM sys.tables WHERE name = 'indicators'; VERIFICAR SE A TABELA EXISTE
SELECT * FROM sys.tables WHERE name = 'messages';


INSERT INTO metrics.indicators (indicators_id, indicators_name, category, description, val) 
VALUES 
(1, 'Vendas Totais', 'Faturação', 'Vendas acumuladas', 1500.00),
(2, 'Novos Clientes', 'Clientes', 'Novos registos na plataforma', 45.00),
(3, 'Rejeição', 'Site', 'Abandono do site', 65.00),
(4, 'Produtos Vendidos', 'Inventário', 'Quantidade de itens que sairam do stock', 90.00),
(5, 'Lucro', 'Finanças', 'Margem de lucro mensal', 34.20),
(6, 'Tempo de Entrega', 'Logística', 'Média em dias para a entrega ao cliente final', 22.00),
(7, 'Apoio ao Cliente', 'Suporte', 'Número de tickets de suporte resolvidos no dia', 85.00),
(8, 'Visitas Únicas', 'Marketing', 'Total de utilizadores únicos no site', 5000.00),
(9, 'Devoluções', 'Qualidade', 'Artigos devolvidos por clientes com defeito', 21.00),
(10, 'Custo de Aquisição', 'CAC', 'Custo médio de marketing para angariar um cliente', 55.10);

SELECT * FROM metrics.indicators;


INSERT INTO events.messages (id, message) 
VALUES
(1, 'O user autenticou-se com sucesso'),
(2, DEFAULT),
(3, 'Compra efetuada e processada'),
(4, 'Erro ao processar pagamento'),
(5, DEFAULT),
(6, 'Produto adicionado ao carrinho'),
(7, 'Sessão do utilizador expirou devido a período de inatividade'),
(8, DEFAULT),
(9, 'Campanha de desconto Black Friday ativa'),
(10, 'Logout efetuado manualmente pelo utilizador');

SELECT * FROM events.messages;

*/
USE BikeStoresAnalytics;



