CREATE TABLE Paciente (
    paciente_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    data_nascimento TEXT NOT NULL,
    sexo TEXT CHECK(sexo IN ('Masculino', 'Feminino', 'Outro')) NOT NULL,
    telefone TEXT,
    endereco TEXT
);

CREATE TABLE Medico (
    medico_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    especialidade TEXT NOT NULL,
    telefone TEXT,
    email TEXT UNIQUE
);

CREATE TABLE Consulta (
    consulta_id INTEGER PRIMARY KEY AUTOINCREMENT,
    data_consulta TEXT NOT NULL,
    horario TEXT NOT NULL,
    status TEXT CHECK(status IN ('Agendada', 'Concluída', 'Cancelada')) NOT NULL,
    paciente_id INTEGER NOT NULL,
    medico_id INTEGER NOT NULL,
    FOREIGN KEY (paciente_id) REFERENCES Paciente(paciente_id),
    FOREIGN KEY (medico_id) REFERENCES Medico(medico_id)
);
