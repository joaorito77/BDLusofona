/* CREATE DATABASE Datawarehouse;
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
)

CREATE TABLE Pedidos (
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID);
)
CREATE TABLE Pedidos (
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
)
INSERT INTO dbo.Clientes (ClienteID, Nome)
VALUES (1, 'João');
*/
USE Datawarehouse;


SELECT * FROM dbo.Pedidos;