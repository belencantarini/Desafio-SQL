-- Creo mi base de datos
create database desafioDB;

-- Borro mi base de datos
drop database desafioDB;

-- Uso mi base de datos
use desafioDB;

-- Creo mi tabla de departamentos en la base de datos que estoy usando
create table tablaDepartamentosDB
(
numeroDepartamento tinyint(2) not null primary key,
nombreDepartamento VARCHAR(40),
presupuesto int(8)
);

-- Creo mi tabla de empleados en la base de datos que estoy usando
create table tablaEmpleadosDB
(
dni INT(8) not null primary key,
nombre VARCHAR(40),
apellido VARCHAR(40)
departamentoNumero tinyint(2) not null,
foreign key departamento references tablaDepartamentosDB(numeroDepartamento)
);

-- Ingreso mis 7 departamentos
insert into tablaDepartamentosDB (numeroDepartamento, nombreDepartamento, presupuesto) values (14, 'Informática', 80000);
insert into tablaDepartamentosDB (numeroDepartamento, nombreDepartamento, presupuesto) values (77, 'Investigación', 40000);
insert into tablaDepartamentosDB (numeroDepartamento, nombreDepartamento, presupuesto) values (15, 'Gestión', 95000);
insert into tablaDepartamentosDB (numeroDepartamento, nombreDepartamento, presupuesto) values (37, 'Desarrollo', 65000);
insert into tablaDepartamentosDB (numeroDepartamento, nombreDepartamento, presupuesto) values (16, 'Comunicación', 75000);

-- Ingreso mis 14 empleados
insert into tablaEmpleadosDB (dni, nombre, apellido, departamentoNumero) values (31096678, 'Juan', 'Lopez', 14);
insert into tablaEmpleadosDB (dni, nombre, apellido, departamentoNumero) values (31096675, 'Martin', 'Zarabia', 77);
insert into tablaEmpleadosDB (dni, nombre, apellido, departamentoNumero) values (34269854, 'Jose', 'Velez', 77);
insert into tablaEmpleadosDB (dni, nombre, apellido, departamentoNumero) values (41369852, 'Paula', 'Madariaga', 77);
insert into tablaEmpleadosDB (dni, nombre, apellido, departamentoNumero) values (33698521, 'Pedro', 'Perez', 14);
insert into tablaEmpleadosDB (dni, nombre, apellido, departamentoNumero) values (32698547, 'Mariana', 'Lopez', 15);
insert into tablaEmpleadosDB (dni, nombre, apellido, departamentoNumero) values (42369854, 'Abril', 'Sanchez', 37);
insert into tablaEmpleadosDB (dni, nombre, apellido, departamentoNumero) values (36125896, 'Julia', 'Marti', 14);
insert into tablaEmpleadosDB (dni, nombre, apellido, departamentoNumero) values (36985471, 'Omar', 'Diaz', 15);
insert into tablaEmpleadosDB (dni, nombre, apellido, departamentoNumero) values (32145698, 'Guadalupe', 'Perez', 77);
insert into tablaEmpleadosDB (dni, nombre, apellido, departamentoNumero) values (32369854, 'Bernardo', 'Pantera', 37);
insert into tablaEmpleadosDB (dni, nombre, apellido, departamentoNumero) values (36125965, 'Lucia', 'Pesaro', 14);
insert into tablaEmpleadosDB (dni, nombre, apellido, departamentoNumero) values (31236985, 'Maria', 'Diamante', 14);
insert into tablaEmpleadosDB (dni, nombre, apellido, departamentoNumero) values (32698547, 'Carmen', 'Barbieri', 16);

-- Mostrar mi tabla
use ejercicioDB;
show tables;
show fields from tablaRegistrosDB;

-- Consultas
-- 2.1 obtener los apellidos de los empleados
-- 2.2 obtener los apellidos de los empleados sin repeticiones
-- 2.3 obtener los datos de los empleados que tengan el apellido Lopez
-- 2.4 obtener los datos de los empleados que tengan el apellido Lopez y los que tengan apellido Perez
-- 2.5 Obtener todos los datos de los empleados que trabajen en el departamento 14
-- 2.6 Obtener todos los datos de los empleados que trabajen en el departamento 37 y 77
-- 2.7 Obtener los datos de los empleados cuyo apellido comience con P
-- 2.8 Obtener el presupuesto total de todos los departamentos
-- 2.9 Obtener un listado completo de empleados, incluyendo por cada empleado los datos del empleado y de su departamento
-- 2.10 Obtener un listado completo de empleados, incluyendo el nombre y apellido del empleado junto al nombre y presupuesto de su departamento
-- 2.11 Obtener los nombres y apellidos de los empleados que trabajen en departamentos cuyo presupuesto sea mayor de 60000
-- 2.12 Añadir un nuevo departamento: Calidad con un presupuesto de 40000 y código 11, añadir un empleado vinculado al departamento recién creado: Esther Vazquez, DNI 89267109
-- 2.13 Aplicar un recorte presupuestario del 10% a todos los departamentos
-- 2.14 Reasignar a los empleados del departamento de investigación (código 77) al departamento de informática (código 14)
-- 2.15 Despedir a los empleados del departamento de informática (código 14)
-- 2.16 Despedir a los empleados que trabajen en departamentos con un presupuesto superior a 90000
