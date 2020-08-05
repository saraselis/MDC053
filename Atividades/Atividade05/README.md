# Objetivo

- Criar um script DDL utilizando DBeaver Community.

  1.

  ```text  
     CURSO
     +--------------------------------+
     |id_curso INT AI PK              |
     +--------------------------------+
     |nome_curso VARCHAR(100) NOT NULL|
     |carga_horaria SMALLINT          |
     +--------------------------------+
                 _|_
                  |
                  |
                  |
     TURMA       /|\
     +----------------------------+            PROFESSOR
     |id_turma INT NOT NULL AI PK |            +------------------------------------+
     +----------------------------+            |id_professor INT NOT NULL AI PK     |
     |id_curso INT NOT NULL FK    |\           +------------------------------------+
     |id_professor INT NOT NULL FK|-+--------|-|nome_professor VARCHAR(100) NOT NULL|
     |id_aluno INT NOT NULL FK    |/           |titulacao_professor CHAR(3)         |
     |data_matricula DATE NOT NULL|            +------------------------------------+
     +----------------------------+
                 \|/
                  |
                  |
                 _|_
     ALUNO        |
     +--------------------------------+
     |id_aluno INT NOT NULL AI PK     |
     +--------------------------------+
     |nome_aluno VARCHAR(100) NOT NULL|
     |email_aluno VARCHAR(100)        |
     |fone_contato CHAR(14)           |
     +--------------------------------+
  ```

  2.

  ```text
     ENDERECO                               PESSOA
     +-------------------------+            +--------------------------+
     |id INT NOT PFK           |            |id INT NOT NULL PK        |
     +-------------------------+            +--------------------------+
     |logradouro VARCHAR(100)  |-|O-------|-|nome VARCHAR(100) NOT NULL|
     |numero INT DEFAULT 0     |            +--------------------------+
     |cep CHAR(0) NOT NULL     |                 |               |
     |cidade VARCHAR(30)       |                =|=             =|=
     |uf CHAR(2) NOT NULL      |                 |               |
     +-------------------------+                 |               |
                                                 |               |
                                                =|=             =|=
                                 FISICA          |               |          JURIDICA
                                 +---------------------+    +----------------------+
                                 |id INT NOT NULL PFK  |    |id INT NOT NULL PFK   |
                                 +---------------------+    +----------------------+
                                 |sexo CHAR(1)         |    |sexo CHAR(1)          |
                                 |cpf CHAR(11) NOT NULL|    |cnpj CHAR(14) NOT NULL|
                                 +---------------------+    +----------------------+

  ```

  3.

  ```text
                                           FUNCIONARIO
     DEPARTAMENTO                          +-----------------------------+
     +--------------------------+          |matricula INT NOT NULL PK    |
     |codigo INT PK             |         /+-----------------------------+\
     +--------------------------+-|-----O+-|nome VARCHAR(100) NOT NULL   |-+O---+
     |nome VARCHAR(100) NOT NULL|         \|salario DECIMAL(100) NOT NULL|/     |
     +--------------------------+          |gerente INT FK               |      |
                                           |departamento INT FK NOT NULL |-|----+
                                           +-----------------------------+
  ```
