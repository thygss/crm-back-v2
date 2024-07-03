CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE compromissos (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255),
    descricao TEXT,
    data DATE,
    hora TIME,
    usuario_vendedor INTEGER
);

ALTER TABLE compromissos ADD CONSTRAINT fk_usuario_vendedor FOREIGN KEY (usuario_vendedor) REFERENCES users(id);

INSERT INTO users (username, password, email) VALUES ('test 1', '123', 'test@test.com');

INSERT INTO compromissos (titulo, descricao, data, hora, usuario_vendedor) VALUES ('Reunião de Projeto', 'Discussão sobre o plano de projeto.', '2023-04-15', '09:00:00', 1);
