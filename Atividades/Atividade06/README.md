# Objetivo

- Executar comandos DDL e DML em um banco de dados MariaDB ou PostgreSQL.

  1. Crie um banco de dados chamado academico no SGDB da sua preferência.
  
  2. Crie uma conexão com o banco de dados academico no DBeaver.
  
  3. Execute o seguinte script DDL.
  
  ```sql
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
  ```

  4. Popule as tabelas do banco de dados com os seguintes registros.

  ```sql
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
  ```
  
  5. Insira um registro na tabela turma com os valores 3 para id_turma, 20201 para num_periodo e 3 para id_professor. Qual foi o comando executado e o resultado obtido?

  6. Insira um registro na tabela turma com os valores 3 para id_turma, 20202 para num_periodo e 1 para id_disciplina. Qual foi o comando executado e o resultado obtido?

  7. Altere o id_disciplina de BANCO DE DADOS I para o valor 3. Qual foi o comando executado e o resultado obtido?

  8. Altere o num_faltas para o valor 0 somente para id_aluno igual a 1 e id_turma igual a 1. Qual foi o comando executado e o resultado obtido?

  9. Exclua o aluno PEDRO. Qual foi o comando executado e o resultado obtido?

  10. Exclua a disciplina BANCO DE DADOS II.  Qual foi o comando executado e o resultado obtido?
