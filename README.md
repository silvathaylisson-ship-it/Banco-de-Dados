# Banco-de-Dados

CREATE DATABASE escola;
USE escola;

CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100)
);

CREATE TABLE disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    ano INT NOT NULL,
    id_disciplina INT,
    id_professor INT,
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_turma INT,
    data_matricula DATE,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);

CREATE TABLE notas (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    id_matricula INT,
    nota DECIMAL(4,2),
    FOREIGN KEY (id_matricula) REFERENCES matriculas(id_matricula)
);
