CREATE TABLE departamento(codigo INT PRIMARY KEY, 
						  nome VARCHAR(100) NOT NULL)

CREATE TABLE funcionario(matricula INT PRIMARY KEY NOT NULL,
						 nome VARCHAR(100) NOT NULL,
						 salario DECIMAL(10) NOT NULL,
						 gerente INT,
						 departamento INT NOT NULL,
						 FOREIGN KEY(departamento) REFERENCES departamento(codigo),
						 FOREIGN KEY(gerente) REFERENCES funcionario(matricula))