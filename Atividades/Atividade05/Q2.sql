CREATE TABLE pessoa(id INT PRIMARY KEY NOT NULL, 
					nome VARCHAR(100) NOT NULL)

CREATE TABLE endereco(id INT PRIMARY KEY NOT NULL,
					logradouro VARCHAR(100),
					numero INT DEFAULT 0,
					cep CHAR(8) NOT NULL,
					cidade VARCHAR(30),
					uf CHAR(2) NOT NULL,
					FOREIGN KEY(id) REFERENCES pessoa(id))

CREATE TABLE fisica(id INT PRIMARY KEY NOT NULL,
					sexo CHAR(1),
					cpf CHAR(11) NOT NULL,
					FOREIGN KEY(id) REFERENCES pessoa(id))

CREATE TABLE juridica(id INT PRIMARY KEY NOT NULL,
					sexo CHAR(1),
					cnpj CHAR(11) NOT NULL,
					FOREIGN KEY(id) REFERENCES pessoa(id))
