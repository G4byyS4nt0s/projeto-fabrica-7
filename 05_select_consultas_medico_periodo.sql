SELECT 
    c.consulta_id,
    c.data_consulta,
    c.horario,
    c.status,
    p.nome AS paciente
FROM Consulta c
JOIN Paciente p ON c.paciente_id = p.paciente_id
WHERE c.medico_id = 1
  AND c.data_consulta BETWEEN '2025-03-01' AND '2025-03-31'
ORDER BY c.data_consulta ASC;
