USE HospitalDB;

-- Inserindo 5 médicos
INSERT INTO Medico (nome_completo, especialidade, crm) VALUES
('Dr. Samuel Zuqui', 'Cardiologia', '12345-ES'),
('Dra. Jackeline Alves', 'Dermatologia', '98765-SP'),
('Dr. Edgar Salardani', 'Ortopedia', '61802-RJ'),
('Dra. Susiléa Abreu', 'Pediatria', '09876-MG'),
('Dr. Emerson Scheidegger', 'Cardiologia', '02468-BA');

-- Inserindo 5 pacientes
INSERT INTO Paciente (nome_completo, cpf, data_nascimento, telefone, endereco) VALUES
('Marcos Valadares', '87451236987', '1988-03-12', '(27) 98765-1111', 'Rua das Amoreiras, 150, Vitória - ES'),
('Cláudia Leite', '98563214700', '1992-10-25', '(27) 91234-2222', 'Av. Atlântica, 780, apto 501, Vila Velha - ES'),
('Beatriz Costa', '12398745633', '2000-01-18', '(28) 95678-3333', 'Rua do Limoeiro, 25, Bairro Centro, Cariacica - ES'),
('Ricardo Eletro', '45678912344', '1995-07-07', '(28) 98888-4444', 'Alameda dos Anjos, 303, Guarapari - ES'),
('Juliana Paes', '98765432155', '1980-06-22', '(27) 97777-5555', 'Largo do Pelourinho, 10, Serra - ES');

-- Inserindo 10 atendimentos (misturando médicos e pacientes)
INSERT INTO Atendimento (id_medico, id_paciente, data_atendimento, hora_atendimento, diagnostico, valor_consulta) VALUES
(1, 2, '2025-08-18', '10:30:00', 'Acompanhamento de pressão alta', 250.00),
(2, 1, '2025-08-19', '14:00:00', 'Reação alérgica na pele', 180.50),
(3, 3, '2025-08-20', '09:15:00', 'Pequena fratura no pulso', 320.00),
(4, 3, '2025-08-20', '11:00:00', 'Acompanhamento pediátrico de rotina', 150.00),
(5, 5, '2025-08-21', '16:45:00', 'Exames de rotina do coração', 400.75),
(1, 3, '2025-08-22', '08:00:00', 'Check-up cardiológico', 300.00),
(3, 1, '2025-08-23', '13:20:00', 'Dor na coluna', 280.00),
(1, 5, '2025-08-25', '10:00:00', 'Monitoramento de arritmia', 250.00),
(4, 4, '2025-08-26', '15:00:00', 'Viagem marcada, precisa de atestado', 150.00),
(2, 3, '2025-09-02', '17:00:00', 'Queimadura de sol', 190.00);