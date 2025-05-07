-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS BD_Multas;
USE BD_Multas;

-- Criação da tabela veiculo
CREATE TABLE veiculo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    placa VARCHAR(10) NOT NULL UNIQUE
);

-- Criação da tabela multa
CREATE TABLE multa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    valor_multa DECIMAL(10,2) NOT NULL,
    id_veiculo INT NOT NULL,
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id)
);

-- Inserindo veículos
INSERT INTO veiculo (modelo, marca, placa) VALUES 
('Gol', 'Volkswagen', 'ABC1D23'),
('Onix', 'Chevrolet', 'DEF4G56'),
('HB20', 'Hyundai', 'GHI7J89'),
('Corolla', 'Toyota', 'KLM1N23'),
('Civic', 'Honda', 'OPQ4R56'),
('Compass', 'Jeep', 'STU7V89'),
('T-Cross', 'Volkswagen', 'WXY1Z23'),
('Kwid', 'Renault', '2345BCD'),
('Argo', 'Fiat', 'EFG6H78'),
('Tracker', 'Chevrolet', 'IJK9L01');

-- Inserindo multas para os veículos
INSERT INTO multa (descricao, valor_multa, id_veiculo) VALUES
('Excesso de velocidade', 195.23, 1),
('Farol queimado', 130.50, 1),
('Estacionamento proibido', 85.90, 2),
('Ultrapassagem perigosa', 293.75, 2),
('Documentação vencida', 150.00, 3),
('Pneu careca', 220.40, 3),
('Excesso de velocidade', 195.23, 4),
('Uso de celular ao volante', 293.75, 5),
('Farol queimado', 130.50, 6),
('Estacionamento proibido', 85.90, 7),
('Ultrapassagem perigosa', 293.75, 8),
('Documentação vencida', 150.00, 9),
('Pneu careca', 220.40, 10),
('Excesso de velocidade', 195.23, 1),
('Uso de celular ao volante', 293.75, 2),
('Farol queimado', 130.50, 3),
('Estacionamento proibido', 85.90, 4),
('Ultrapassagem perigosa', 293.75, 5),
('Documentação vencida', 150.00, 6),
('Pneu careca', 220.40, 7);

-- Inserindo mais algumas multas de valores altos para testar os filtros
INSERT INTO multa (descricao, valor_multa, id_veiculo) VALUES
('Bafômetro positivo', 2937.50, 1),
('Dirigir sem habilitação', 3916.70, 3),
('Corrida ilegal', 4895.90, 5),
('Transporte de carga perigosa', 5875.10, 7),
('Veículo roubado', 8800.00, 9);

select * from veiculo;
select * from multa;