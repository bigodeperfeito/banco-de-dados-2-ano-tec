CREATE DATABASE escola;
USE escola;

CREATE TABLE professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(100) NOT NULL,                 
    especialidade VARCHAR(100),                
    salario DECIMAL(10,2),                    
    uf CHAR(2)                                   
);

CREATE TABLE disciplina (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_professor INT, 
    carga_horaria INT,
    FOREIGN KEY (id_professor) REFERENCES professor(id_professor)
);

CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sexo CHAR(1),
    data_nascimento DATE,
    nota_final DECIMAL(4,2),
    ativo BOOLEAN
);

CREATE TABLE curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT,
    modalidade VARCHAR(50)
);

CREATE TABLE matricula (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_curso INT,
    data_matricula DATE,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

CREATE TABLE login (
    id_login INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    data_hora DATETIME,
    ip VARCHAR(45),
    sucesso BOOLEAN,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);

-- Professores
INSERT INTO professor (nome, especialidade, salario, uf) VALUES
('Maria Silva', 'Matemática', 5500.00, 'SP'),
('João Souza', 'História', 4800.00, 'RJ'),
('Gustavo Matheus ', 'Ed Fisica', 4800.00, 'RJ'),
('Adryan Marinho', 'Banco de dados', 4800.00, 'RJ'),
('Estevonaldo Silva', 'Geografia', 4800.00, 'RJ'),
('Cassio Ramos', 'programação mobile', 4800.00, 'sp'),
('Guilherme Blazius ', 'Front-end', 4800.00, 'RJ'),
('Estipe PK', 'Projeto de vida', 4800.00, 'RJ'),
('Nobru Ramos', 'Socioligia', 4800.00, 'RJ'),
('João feijão', 'Ingles', 4800.00, 'RJ');
SELECT * FROM professor;

-- Disciplinas
INSERT INTO disciplina (nome, id_professor, carga_horaria) VALUES
('Matematica', 7, 60),
('História', 8, 50),
('ed fisica', 9, 20),
('Banco de dados', 10, 40),
('Geografia', 11, 50),
('programação mobile', 12, 30),
('Front-end', 13, 60),
('Projeto de vida', 14, 50),
('Sociologia', 15, 45),
('Ingles', 16, 50);
SELECT * FROM disciplina;

-- Alunos
INSERT INTO aluno (nome, sexo, data_nascimento, nota_final, ativo) VALUES
('Carlos Andrade', 'M', '2002-05-10', 8.5, TRUE),
('Fernanda Lima', 'F', '2003-08-22', 9.2, TRUE),
('Hugo Souza', 'M', '2003-08-20', 9.2, TRUE),
('Yuri Alberto', 'M', '2003-12-22', 9.2, TRUE),
('Garro', 'M', '2003-08-01', 9.2, TRUE),
('Martinez', 'M', '2003-01-12', 9.2, TRUE),
('Carrilo', 'M', '2003-06-12', 9.2, TRUE),
('Bidu', 'M', '2003-08-20', 9.2, TRUE),
('Matheusinho', 'M', '2003-08-22', 9.2, TRUE),
('Gui negao', 'M', '2003-07-22', 9.2, TRUE);
SELECT * FROM aluno;


-- Cursos
INSERT INTO curso (nome, carga_horaria, modalidade) VALUES
('Engenharia', 3600, 'Presencial'),
('Direito', 3000, 'EAD');

-- Matrículas
INSERT INTO matricula (id_aluno, id_curso, data_matricula) VALUES
(1, 1, '2024-02-01'),
(2, 2, '2024-02-10');

-- Logins
INSERT INTO login (id_aluno, data_hora, ip, sucesso) VALUES
(1, '2024-05-01 08:30:00', '192.168.1.10', TRUE),
(2, '2024-05-01 09:15:00', '192.168.1.11', FALSE);
