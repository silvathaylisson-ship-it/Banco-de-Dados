CREATE TABLE jogador (
    id_jogador INT PRIMARY KEY,
    nome VARCHAR(50),
    status_jogador VARCHAR(10), -- free ou premium
    anos_inativo INT
);

CREATE TABLE biblioteca (
    id_jogo INT PRIMARY KEY,
    nome_jogo VARCHAR(50),
    genero VARCHAR(30),
    id_jogador INT,
    FOREIGN KEY (id_jogador) REFERENCES jogador(id_jogador)
);


SELECT jogador.nome, biblioteca.nome_jogo
FROM jogador
INNER JOIN biblioteca
ON jogador.id_jogador = biblioteca.id_jogador;
