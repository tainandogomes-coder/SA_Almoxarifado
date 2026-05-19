CREATE DATABASE IF NOT EXISTS almoxarifado;

USE almoxarifado;

CREATE TABLE IF NOT EXISTS colaboradores(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula INT UNIQUE NOT NULL,
    telefone INT NOT NULL,
    email VARCHAR(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS equipamentos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    patrimonio VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS emprestimos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    colaborador_id INT NOT NULL,
    equipamento_id INT NOT NULL,
    data_retirada DATE NOT NULL,
    data_devolucao DATE NOT NULL,
    FOREIGN KEY(colaborador_id)
    REFERENCES colaboradores(id),
    FOREIGN KEY(equipamento_id)
    REFERENCES equipamentos(id)
);