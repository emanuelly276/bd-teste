CREATE TABLE professor (

  id_professor SERIAL PRIMARY KEY,
  nome         varchar(100) not null,
  email        varchar(100) not null unique,
  criado_em    timestamp without time zone null default CURRENT_TIMESTAMP  

);

SELECT * FROM professor;

INSERT INTO professor(nome,email) VALUES ('jaquelina', 'jaquelina@gmail.com');
INSERT INTO professor(nome,email) VALUES ('joana', 'joana@gmail.com');

CREATE TABLE turma (

  id_turma     SERIAL PRIMARY KEY,
  nome         varchar(100) not null,
  id_professor integer not null,
  criado_em    timestamp without time zone null default CURRENT_TIMESTAMP,  
  constraint   fk_turma_professor foreign key (id_professor),
  references professor (id_professor) 

);

INSERT INTO turma (nome, id_professor) VALUES ('2DS', '1');
INSERT INTO turma (nome, id_professor) VALUES ('1DS', '2');

SELECT * FROM turma;
