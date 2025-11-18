USE HospitalDB;

-- Lista de todos os pacientes em ordem alfabética.
select * from Paciente order by nome_completo;

-- Listar só os médicos que são da Cardiologia.
SELECT * FROM Medico WHERE especialidade = 'Cardiologia';

-- Atendimentos que aconteceram no dia 20 de agosto de 2025.
SELECT * FROM Atendimento WHERE data_atendimento = '2025-08-20';

-- Nome do paciente, do médico e o diagnóstico de cada consulta.
-- aqui precisa juntar as tabelas pra pegar o nome de cada um
SELECT
    p.nome_completo as Paciente,
    m.nome_completo as Medico,
    a.diagnostico
FROM Atendimento a
JOIN Paciente p ON a.id_paciente = p.id
JOIN Medico m ON a.id_medico = m.id;

-- Somar o valor de todas as consultas.
SELECT SUM(valor_consulta) as Faturamento_Total FROM Atendimento;

-- Quem é o paciente que mais veio ao hospital?
SELECT
    p.nome_completo as Paciente,
    COUNT(a.id) as Total_Consultas
FROM Atendimento a
JOIN Paciente p ON a.id_paciente = p.id
GROUP BY p.nome_completo
ORDER BY Total_Consultas DESC
LIMIT 1;

-- Quantos atendimentos cada médico fez.
SELECT
    m.nome_completo as Medico,
    m.especialidade,
    COUNT(*) as Numero_de_Atendimentos
FROM Atendimento a
JOIN Medico m ON a.id_medico = m.id
GROUP BY m.nome_completo, m.especialidade
ORDER BY Numero_de_Atendimentos DESC;