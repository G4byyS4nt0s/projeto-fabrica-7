SELECT 
    c.consulta_id,
    c.data_consulta,
    c.horario,
    c.status,
    m.nome AS medico,
    m.especialidade
FROM Consulta c
JOIN Medico m ON c.medico_id = m.medico_id
WHERE c.paciente_id = 1
ORDER BY c.data_consulta ASC;
