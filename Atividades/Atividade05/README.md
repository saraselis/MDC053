# Objetivo

- Criar um script DDL utilizando DBeaver Community.

  1. CURSO
     +--------------------------------+
     |id_curso INT AI PK              |
     +--------------------------------+
     |nome_curso VARCHAR(100) NOT NULL|
     |carga_horaria SMALLINT          |
     +--------------------------------+
                  |
                  |
                  |
     TURMA       /|\
     +----------------------------+
     |id_turma INT NOT NULL AI PK |
     +----------------------------+
     |id_curso INT NOT NULL FK    |
     |id_aluno INT NOT NULL FK    |
     |data_matricula DATE NOT NULL|
     +----------------------------+
                 \|/
                  |
                  |
     ALUNO        |
     +--------------------------------+
     |id_aluno INT NOT NULL AI PK     |
     +--------------------------------+
     |nome_aluno VARCHAR(100) NOT NULL|
     |email_aluno VARCHAR(100)        |
     |fone_contato CHAR(14)           |
     +--------------------------------+

  2. MEDICO
     +---------------------------------+           ESPECIALIDADE
     |cod_medico INT AI PK             |           +---------------------------------------+
     +---------------------------------+\          |cod_especialidade INT NOT NULL PK      |
     |nome_medico VARCHAR(100) NOT NULL| |-----|-+---------------------------------------+
     |cod_especialidade INT NOT NULL FK|/          |dsc_especialidade VARCHAR(100) NOT NULL|
     +---------------------------------+           +---------------------------------------+
                  |
                  |
                  |
     CONSULTA    /|\
     +------------------------------+
     |id_consulta INT NOT NULL AI PK|
     +------------------------------+
     |id_medico INT NOT NULL FK     |
     |id_paciente INT NOT NULL FK   |
     |data_consulta DATE NOT NULL   |
     +------------------------------+
                 \|/
                  o
                  |
     PACIENTE     |
     +-----------------------------------+
     |id_paciente INT NOT NULL AI PK     |
     +-----------------------------------+
     |nome_paciente VARCHAR(100) NOT NULL|
     +-----------------------------------+

  3. LIVRO
     +---------------------------------+        EDITORA
     |id_livro INT AI PK               |        +---------------------------------+
     +---------------------------------+\       |cod_editora INT NOT NULL AI PK   |
     |num_isbn CHAR(13) NOT NULL UNIQUE|--------+---------------------------------+
     |tit_livro VARCHAR(100) NOT NULL  |/       |nom_editora VARCHAR(100) NOT NULL|
     |num_paginas SMALLINT CHECK > 0   |        +---------------------------------+
     |cod_editora INT NOT NULL FK      |
     +---------------------------------+
                  |
                  |
                  |
     EMPRESTIMO  /|\
     +---------------------------------+
     |id_emprestimo INT NOT NULL AI PK |
     +---------------------------------+
     |id_livro INT NOT NULL FK         |
     |id_aluno INT NOT NULL FK         |
     |dat_emprestimo DATE NOT NULL     |
     |dat_devolucao DATE               |
     +---------------------------------+
                 \|/
                  |
                  |
     ALUNO        |
     +---------------------------------+
     |id_aluno INT NOT NULL AI PK      |
     +---------------------------------+
     |num_matricula INT NOT NULL UNIQUE|
     |nom_aluno VARCHAR(100) NOT NULL  |
     +---------------------------------+
