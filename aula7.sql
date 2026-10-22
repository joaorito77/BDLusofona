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
CREATE TABLE Departamentos (
    DepartamentoID INT PRIMARY KEY,
)

CREATE TABLE Funcionarios (
    FuncionarioID INT PRIMARY KEY,
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
)
CREATE TABLE CURSOS (
    CursoID INT PRIMARY KEY,
)

CREATE TABLE Matriculas (
    AlunoID INT,
    CursoID INT,
    FOREIGN KEY (CursoID) REFERENCES CURSOS(CursoID)
INSERT INTO dbo.Pedidos (ClienteID, Descrição)
VALUES (
    1, 'teste'
)
)
*/
USE Datawarehouse;

SELECT Clientes.ClienteID, Clientes.Nome, Pedidos.Descrição
FROM Pedidos
INNER JOIN Clientes ON Pedidos.ClienteID=Clientes.ClienteID
SELECT * FROM dbo.Pedidos;