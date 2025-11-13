INSERT INTO Paciente (nome, data_nascimento, sexo, telefone, endereco)
VALUES
('Ana Paula Souza', '1985-06-12', 'Feminino', '(11) 98765-1234', 'Rua das Rosas, 45'),
('Carlos Eduardo Lima', '1990-09-22', 'Masculino', '(11) 99876-5432', 'Av. Paulista, 1000'),
('Fernanda Torres', '2001-04-03', 'Feminino', '(11) 97654-3321', 'Rua Central, 220'),
('João Pedro Santos', '1978-01-19', 'Masculino', '(11) 96543-2100', 'Rua Azul, 15');

-- Inserindo médicos
INSERT INTO Medico (nome, especialidade, telefone, email)
VALUES
('Dr. Ricardo Almeida', 'Cardiologia', '(11) 95511-2222', 'ricardo.almeida@hospital.com'),
('Dra. Juliana Mendes', 'Pediatria', '(11) 95422-3333', 'juliana.mendes@hospital.com'),
('Dr. Paulo Nogueira', 'Ortopedia', '(11) 95333-4444', 'paulo.nogueira@hospital.com');

-- Inserindo consultas
INSERT INTO Consulta (data_consulta, horario, status, paciente_id, medico_id)
VALUES
('2025-03-10', '09:00', 'Concluída', 1, 1),
('2025-03-11', '14:00', 'Agendada', 2, 2),
('2025-03-12', '10:30', 'Agendada', 3, 1),
('2025-03-13', '11:00', 'Cancelada', 4, 3),
('2025-03-14', '08:30', 'Concluída', 1, 3);
