CREATE TABLE curso(id_curso INT AUTO_INCREMENT PRIMARY KEY, 
				   nome_curso VARCHAR(100) NOT NULL, 
				   carga_horaria SMALLINT)

CREATE TABLE professor(id_professor INT AUTO_INCREMENT PRIMARY KEY NOT NULL, 
					   nome_professor VARCHAR(100) NOT NULL, 
					   titulacao_professor CHAR(3))

CREATE TABLE aluno(id_aluno INT AUTO_INCREMENT PRIMARY KEY NOT NULL, 
				   nome_aluno VARCHAR(100) NOT NULL, 
				   email_aluno VARCHAR(100), 
				   fone_contato CHAR(14))

CREATE TABLE turma(id_turma INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
				   data_matricula DATE NOT NULL,
				   id_curso INT NOT NULL,
				   id_professor INT NOT NULL,
				   id_aluno INT NOT NULL,
				   FOREIGN KEY(id_curso) REFERENCES curso(id_curso),
				   FOREIGN KEY(id_professor) REFERENCES professor(id_professor),
				   FOREIGN KEY(id_aluno) REFERENCES aluno(id_aluno))
