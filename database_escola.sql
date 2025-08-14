CREATE DATABASE escola;

USE escola;

CREATE TABLE professor (
id_professor INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
nome VARCHAR(100),
especialidade VARCHAR (100),
salario DECIMAL(10,2),
uf CHAR(2)
);


CREATE TABLE disciplina (
id_disciplina INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR (100) NOT NULL,
id_professor INT,
carga_horaria INT,
FOREIGN KEY (id_professor) REFERENCES professor(id_professor) 
);



CREATE TABLE matricula(
id_matricula INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
id_aluno INT,
id_curso INT,
data_matricula DATE,
FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

CREATE TABLE login(
id_login INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
id_aluno INT,
data_hora DATETIME,
ip VARCHAR (40),
sucesso BOOLEAN,
FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);

SHOW TABLES;


