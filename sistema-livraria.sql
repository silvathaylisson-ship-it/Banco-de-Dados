SELECT * FROM Clientes;

CREATE TABLE Clientes (
    ID INTEGER PRIMARY KEY,
    nomeCliente VARCHAR(255),
    emailCliente VARCHAR(255)
);

CREATE TABLE Compras (
    CompraID INTEGER PRIMARY KEY,
    ClienteID INTEGER,
    NomeLivro VARCHAR(255),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

SELECT * FROM Clientes;
SELECT * FROM Compras;
