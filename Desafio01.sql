use desafio;

-- Criar tabela departments
CREATE TABLE departments (
  id INTEGER PRIMARY KEY auto_increment,
  name TEXT NOT NULL,
  location TEXT
);

-- Criar tabela employees
CREATE TABLE employees (
  id INTEGER PRIMARY KEY auto_increment,
  name TEXT NOT NULL,
  salary REAL,
  department_id INTEGER,
  FOREIGN KEY (department_id) REFERENCES departments(id)
);

drop table employees;
drop table departments;

-- Inserir dados na tabela departments
INSERT INTO departments (name, location) 
VALUES 

	 ('Financeiro', 'São Paulo'),
	 ('RH', 'Rio de Janeiro'),
	 ('TI', 'Belo Horizonte');
     
-- Inserir dados na tabela employees
INSERT INTO employees (name, salary, department_id) 
VALUES 
	('Alice', 5000, 1),
	('Bob', 7000, 2),
	('Carol', 6000, 3),
	('David', 5500, 1),
	('Eve', 7500, 2);
    
    
-- Consulta nome do funcionário e departamento, apenas com salário superior a 6000
SELECT employees.name AS Funcionario, departments.name AS Departamento
FROM employees
JOIN departments ON employees.department_id = departments.id
WHERE employees.salary > 6000;


-- Atualizar salário do funcionário Alice para 5500
SELECT id FROM employees WHERE name = 'Alice';
UPDATE employees SET salary = 5500 WHERE id = 1;

-- Excluir o funcionário David
SELECT id FROM employees WHERE name = 'David';
DELETE FROM employees WHERE id = 4;

-- Consultar todos os funcionários restantes e seus salários
SELECT name, salary FROM employees;

