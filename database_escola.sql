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

-- Insert dados professor
INSERT INTO professor (id_professor,nome,especialidade,salario,uf) VALUES
(1,'MARINHO DA SILVA','BANCO DE DADOS',2500.00,'PR');


-- insert disciplina
INSERT INTO disciplina (nome,id_professor,carga_horaria) VALUES
('banco de dados iniciante',1, 60);

-- alunos 
INSERT INTO aluno (nome,sexo,data_nascimento,nota_final,ativo) VALUES
('GUSTAVO BLAZIUS', 'M','2007-05-10', 8.5, TRUE);

