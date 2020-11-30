CREATE TABLE aluno(
     id_aluno INT NOT NULL,
     nome_aluno VARCHAR(100) NOT NULL,
     PRIMARY KEY(id_aluno)
   );

   CREATE TABLE disciplina(
     id_disciplina INT NOT NULL,
     nome_disciplina VARCHAR(100) NOT NULL,
     carga_horaria INT CHECK(carga_horaria > 0),
     PRIMARY KEY(id_disciplina)
   );

   CREATE TABLE professor(
     id_professor INT NOT NULL,
     nome_professor VARCHAR(100) NOT NULL,
     PRIMARY KEY(id_professor)
   );

   CREATE TABLE turma(
     id_turma INT NOT NULL,
     num_periodo INT NOT NULL,
     id_professor INT,
     id_disciplina INT,
     PRIMARY KEY(id_turma),
     FOREIGN KEY(id_professor) REFERENCES professor(id_professor),
     FOREIGN KEY(id_disciplina) REFERENCES disciplina(id_disciplina) ON DELETE CASCADE
   );

   CREATE TABLE historico(
     id_historico INT NOT NULL,
     id_turma INT NOT NULL,
     id_aluno INT NOT NULL,
     num_faltas SMALLINT,
     media_final DECIMAL(3,1),
     PRIMARY KEY(id_historico),
     FOREIGN KEY(id_turma) REFERENCES turma(id_turma) ON DELETE CASCADE,
     FOREIGN KEY(id_aluno) REFERENCES aluno(id_aluno)
   );
  
   INSERT INTO aluno(id_aluno, nome_aluno) VALUES(1, 'JOSE');
   INSERT INTO aluno(id_aluno, nome_aluno) VALUES(2, 'MARIA');
   INSERT INTO aluno(id_aluno, nome_aluno) VALUES(3, 'BRUNO');
   INSERT INTO aluno(id_aluno, nome_aluno) VALUES(4, 'CARLA');
   INSERT INTO aluno(id_aluno, nome_aluno) VALUES(5, 'PEDRO');

   INSERT INTO disciplina(id_disciplina, nome_disciplina, carga_horaria) VALUES(1, 'BANCO DE DADOS I', 60);
   INSERT INTO disciplina(id_disciplina, nome_disciplina, carga_horaria) VALUES(2, 'BANCO DE DADOS II', 60);

   INSERT INTO professor(id_professor, nome_professor) VALUES(1, 'LETICIA');
   INSERT INTO professor(id_professor, nome_professor) VALUES(2, 'JOSE REGINALDO');

   INSERT INTO turma(id_turma, num_periodo, id_professor, id_disciplina) VALUES(1, 20201, 1, 1);
   INSERT INTO turma(id_turma, num_periodo, id_professor, id_disciplina) VALUES(2, 20202, 2, 2);

   INSERT INTO historico(id_historico, id_turma, id_aluno) VALUES(1, 1, 1);
   INSERT INTO historico(id_historico, id_turma, id_aluno) VALUES(2, 1, 2);
   INSERT INTO historico(id_historico, id_turma, id_aluno) VALUES(3, 1, 3);
   INSERT INTO historico(id_historico, id_turma, id_aluno) VALUES(4, 1, 4);
   INSERT INTO historico(id_historico, id_turma, id_aluno) VALUES(5, 2, 1);
   INSERT INTO historico(id_historico, id_turma, id_aluno) VALUES(6, 2, 2);

--  V.
  insert into turma(id_turma, num_periodo, id_professor) VALUES(3, 20201, 3);
--  ERROR: Key (id_professor)=(3) is not present in table "professor".
 
-- VI.
  insert into turma(id_turma, num_periodo, id_professor) VALUES(3, 20202, 1);
--  SUCCESS!  
 
-- VII.
  UPDATE disciplina set id_disciplina=3 where nome_disciplina='BANCO DE DADOS I';
--  ERROR: Key (id_disciplina)=(1) is still referenced from table "turma".
 
-- VIII.
  UPDATE historico set num_faltas=0 where id_aluno=1 and id_turma=1;
--  SUCCESS!
 
-- IX.
  delete from aluno where nome_aluno='PEDRO';
--  SUCCESS!
 
-- X.
  delete from disciplina where nome_disciplina='BANCO DE DADOS II';
--  SUCCESS!