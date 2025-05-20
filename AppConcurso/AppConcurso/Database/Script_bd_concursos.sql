CREATE DATABASE bd_concursos;
USE bd_concursos;

CREATE TABLE candidato(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
cpf VARCHAR(45),
data_nascimento DATE
);

SELECT * FROM candidato;

CREATE TABLE cargo(
id INT PRIMARY KEY AUTO_INCREMENT,
nome_cargo VARCHAR(45),
edital VARCHAR(60),
salario_base DECIMAL
);

CREATE TABLE inscricao(
id INT PRIMARY KEY AUTO_INCREMENT,
numero_insc INT,
data_inscricao DATE,
nota_conh_gerais DECIMAL,
nota_conh_especificos DECIMAL,
candidato_id_fk INT NOT NULL,
FOREIGN KEY (candidato_id_fk) REFERENCES candidato (id),
cargo_id_fk INT NOT NULL,
FOREIGN KEY (cargo_id_fk) REFERENCES cargo (id)
);

-- Inserir candidatos
INSERT INTO candidato (nome, cpf, data_nascimento) VALUES
('Ana Silva', '123.456.789-00', '1990-05-15'),
('Carlos Souza', '987.654.321-00', '1985-10-20'),
('Mariana Lima', '456.789.123-00', '1997-03-08'),
('Lucas Oliveira', '321.654.987-00', '1992-11-25'),
('Fernanda Costa', '159.753.486-00', '1988-07-19'),
('Rafael Mendes', '258.963.147-00', '1995-04-12'),
('Juliana Rodrigues', '369.258.147-00', '1983-09-30'),
('Daniel Pereira', '753.159.852-00', '2000-02-05'),
('Patricia Almeida', '951.357.654-00', '1996-06-21'),
('Tiago Barbosa', '852.951.357-00', '1987-08-14'),
('Marcelo Vieira', '741.852.963-00', '1994-12-07'),
('Vanessa Martins', '753.456.852-00', '1989-03-23'),
('Rodrigo Lima', '654.789.123-00', '1991-10-10'),
('Camila Santos', '357.951.753-00', '1998-01-15'),
('Gustavo Nunes', '147.258.369-00', '1993-05-08'),
('Isabela Duarte', '987.321.654-00', '1986-07-29'),
('Eduardo Ribeiro', '123.987.654-00', '1990-09-17'),
('Sofia Castro', '258.147.369-00', '1997-11-11'),
('Felipe Carvalho', '963.258.147-00', '1984-04-03'),
('Larissa Monteiro', '159.357.753-00', '1999-12-31');

-- Inserir cargos
INSERT INTO cargo (nome_cargo, edital, salario_base) VALUES
('Analista de TI', 'Edital 2025', 6500.00),
('Assistente Administrativo', 'Edital 2025', 3500.00),
('Engenheiro Civil', 'Edital 2025', 7800.00),
('Contador', 'Edital 2025', 5400.00),
('Professor', 'Edital 2025', 4000.00),
('Médico', 'Edital 2025', 12000.00),
('Advogado', 'Edital 2025', 7500.00),
('Psicólogo', 'Edital 2025', 5000.00),
('Marketing Digital', 'Edital 2025', 4800.00),
('Designer Gráfico', 'Edital 2025', 4300.00),
('Engenheiro de Software', 'Edital 2025', 9000.00),
('Biólogo', 'Edital 2025', 6000.00),
('Gestor de Recursos Humanos', 'Edital 2025', 5200.00),
('Farmacêutico', 'Edital 2025', 5700.00),
('Analista de Dados', 'Edital 2025', 8500.00),
('Arquiteto', 'Edital 2025', 7600.00),
('Jornalista', 'Edital 2025', 4800.00),
('Economista', 'Edital 2025', 7100.00),
('Consultor Financeiro', 'Edital 2025', 6800.00),
('Engenheiro Ambiental', 'Edital 2025', 7400.00);

-- Inserir inscrições
INSERT INTO inscricao (numero_insc, data_inscricao, nota_conh_gerais, nota_conh_especificos, candidato_id_fk, cargo_id_fk) VALUES
(101, '2025-05-01', 8.5, 9.0, 1, 1),
(102, '2025-05-02', 7.0, 8.5, 2, 2),
(103, '2025-05-03', 9.0, 9.5, 3, 3),
(104, '2025-05-04', 8.2, 7.8, 4, 4),
(105, '2025-05-05', 7.5, 8.7, 5, 5),
(106, '2025-05-06', 9.1, 9.3, 6, 6),
(107, '2025-05-07', 6.8, 7.4, 7, 7),
(108, '2025-05-08', 8.0, 8.2, 8, 8),
(109, '2025-05-09', 7.9, 8.6, 9, 9),
(110, '2025-05-10', 9.5, 9.8, 10, 10),
(111, '2025-05-11', 6.5, 7.2, 11, 11),
(112, '2025-05-12', 8.1, 8.4, 12, 12),
(113, '2025-05-13', 7.8, 8.5, 13, 13),
(114, '2025-05-14', 9.2, 9.4, 14, 14),
(115, '2025-05-15', 6.9, 7.6, 15, 15),
(116, '2025-05-16', 8.7, 9.0, 16, 16),
(117, '2025-05-17', 7.4, 8.0, 17, 17),
(118, '2025-05-18', 9.3, 9.5, 18, 18),
(119, '2025-05-19', 8.6, 9.2, 19, 19),
(120, '2025-05-20', 7.7, 8.3, 20, 20);

select * from candidato;
select * from cargo;
select * from inscricao;