DROP DATABASE IF EXISTS HospitalDB;
CREATE DATABASE HospitalDB;
USE HospitalDB;

-- Tabela de Médicos
create table Medico (
    id INT PRIMARY KEY AUTO_INCREMENT, -- id do médico, chave primária
    nome_completo VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
    crm VARCHAR(20) NOT NULL UNIQUE -- crm não pode repetir
);

-- Tabela de Pacientes
CREATE TABLE Paciente (
    id INT PRIMARY KEY AUTO_INCREMENT, -- id do paciente
    nome_completo VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE, -- cpf também não pode repetir
    data_nascimento DATE,
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);

-- Tabela de Atendimentos
create table Atendimento (
    id INT PRIMARY KEY AUTO_INCREMENT, -- id do atendimento
    data_atendimento DATE NOT NULL,
    hora_atendimento TIME NOT NULL,
    diagnostico TEXT,
    valor_consulta DECIMAL(10, 2) NOT NULL,

    -- Chaves estrangeiras para fazer a ligação
    id_medico INT,
    id_paciente INT,

    FOREIGN KEY (id_medico) REFERENCES Medico(id),
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id)
);