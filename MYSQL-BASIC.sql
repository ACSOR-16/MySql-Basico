use Jugos;

-- CREACION DE UNA TABLA EN UNA BASE DE DATOS
create table TBClientes(
DNI varchar(20),
NOMBRE varchar(150),
DIRECCION1 varchar(150),
DIRECTCION2 varchar(150),
BARRIO varchar(50),
CIUDAD varchar(50),
ESTADO varchar(50),
CP varchar(10),
EDAD smallint,
SEXO varchar(1),
LIMITE_CREDITO float,
VOLUMEN_COMPRA float,
PRIMERA_COMPRA bit(1));

-- INSERTAR PRODUCTOS EN UNA TABLA 
insert into Productos(
PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO) values (
'773912', 'clean', 'botella pet', '1 litro', 'naranja', 8.01);

SELECT * from Productos;

-- INSERTANDO MAS REGISTROS EN LA TABLA--
insert into Productos(
PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO) values (
'838819', 'clean', 'botella pet', '1,5 litros', 'naranja', 12.01);

insert into Productos(
PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO) values (
'1037797', 'clean', 'botella pet', '2 litro', 'naranja', 16.01);

insert into Productos(
PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO) values (
'812829', 'clean', 'lata', '350 ml', 'naranja', 2.81);

INSERT INTO Productos(
PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO) VALUES (
'695594', 'Festival de Sabores', 'Botella PET',
'1.5 Litros', 'Asaí', 18.51);

INSERT INTO Productos(
PRODUCTO, NOMBRE, ENVASE, VOLUMEN, SABOR, PRECIO) VALUES (
'1041119', 'Línea Citrus', 'Botella de Vidrio',
'700 ml', 'Lima', 4.90);

select * from Productos;

-- ACTUALIZANDO REGISTROS EN UNA TABLA

update Productos set NOMBRE = 'Clean', ENVASE = 'Botella PET', VOLUMEN = '1 Litro', SABOR = 'Naranja'
where PRODUCTO = '773912';

update Productos set NOMBRE = 'Clean', ENVASE = 'Botella PET', VOLUMEN = '1,5 Litros', SABOR = 'Naranja'
where PRODUCTO = '838819';

update Productos set NOMBRE = 'Clean', ENVASE = 'Botella PET', VOLUMEN = '2 Litros', SABOR = 'Naranja'
where PRODUCTO = '1037797';

update Productos set NOMBRE = 'Clean', ENVASE = 'Lata', SABOR = 'Naranja'
where PRODUCTO = '812829';

update Productos set PRECIO = 28.51
where PRODUCTO = '695594';

update Productos set NOMBRE = 'Festival de Sabores', SABOR = 'Lima/limón'
where PRODUCTO = '1041119';

select * FROM Productos;

-- ELIMINANDO REGISTROS DE LA TABLA

delete from Productos where PRODUCTO = '773912';