-- Habilita validação de chaves estrangeiras no SQLite (execute a cada sessão)
PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

-- Tabela de clientes
CREATE TABLE IF NOT EXISTS Clientes (
  ID INTEGER PRIMARY KEY,     -- INTEGER PRIMARY KEY em SQLite vira o rowid (auto-increment)
  nomeCliente TEXT NOT NULL,
  emailCliente TEXT
);

-- Tabela de compras, referenciando Clientes(ID)
CREATE TABLE IF NOT EXISTS Compras (
  CompraID INTEGER PRIMARY KEY,
  ClienteID INTEGER NOT NULL,
  NomeLivro TEXT,
  FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
    ON DELETE CASCADE
    ON UPDATE NO ACTION
);

COMMIT;
