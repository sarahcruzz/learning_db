CREATE TABLE livro(
	id_livro INT PRIMARY KEY,
    titulo VARCHAR(100),
    isbn INT,
    descricao VARCHAR(1000)    
);

CREATE TABLE autores(
	id_autor INT PRIMARY KEY,
    nome_autor VARCHAR(255),
    data_nascimento DATE,
    biografia VARCHAR(1000)
);

CREATE TABLE livro_autor(
	fk_livro INT,
    fk_autor INT,
    PRIMARY KEY(fk_livro, fk_autor),
    FOREIGN KEY (fk_livro) REFERENCES livro(id_livro),
    FOREIGN KEY (fk_autor) REFERENCES autores(id_autor)
);

CREATE TABLE categorias(
	id_categoria INT PRIMARY KEY,
    nome_categoria VARCHAR(100)
);

CREATE TABLE livro_categoria(
	fk_livro INT,
    fk_categoria INT,
    PRIMARY KEY(fk_livro, fk_categoria),
    FOREIGN KEY (fk_livro) REFERENCES livro(id_livro),
    FOREIGN KEY (fk_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE usuarios(
	id_usuario INT PRIMARY KEY,
    nome_usuario VARCHAR (255),
    email VARCHAR(255),
    data_registro DATE,
    membro BOOLEAN,
    nivel ENUM('Regular', 'Premium', 'Plus')
);

CREATE TABLE emprestimos(
    id_livro INT,
    id_usuario INT,
    data_inicio DATE,
    data_retorno DATE,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);




