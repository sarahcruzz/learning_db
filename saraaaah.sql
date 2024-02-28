-- Criação da tabela de Professores
CREATE TABLE Professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

-- Criação da tabela de Turmas
CREATE TABLE Turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

-- Criação da tabela de Atividades
CREATE TABLE atividade (
    id_atividade INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);


INSERT INTO Professor (nome, email, senha)
VALUES ('Leonardo', 'leonardo@gmail.com', 'leo123');

INSERT INTO Turma (numero, nome, id_professor)
VALUES ('3ADM', 'Administrção', 2 );

INSERT INTO atividade (numero, descricao, id_turma) 
VALUES ('Ativ 2', 'deletar um professor', 2);

SELECT atividade.descricao
FROM atividade
where atividade.id_turma = 1;

update Turma set id_professor = 2 where id_professor = 1;

SELECT * FROM Turma