CREATE TABLE Jogadores (
    ID_Jogador INT PRIMARY KEY,
    Nome_Jogador VARCHAR(100) NOT NULL,
    Numero_Camisa DECIMAL(10, 2) NOT NULL,
    Posicao TEXT
);
SELECT * FROM Jogadores;
