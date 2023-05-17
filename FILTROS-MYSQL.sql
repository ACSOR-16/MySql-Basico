-- FILTROS POR CRITERIOS 
select * from tbcliente;

select DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP
, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA
, PRIMERA_COMPRA FROM tbcliente;

select NOMBRE, SEXO, EDAD, DIRECCION1 FROM tbcliente;

-- AGREGANDO ALIAS A LAS COLUMNAS
select NOMBRE as Nombre_completo, SEXO as Genero, 
EDAD as Edad, DIRECCION1 as Domicilio FROM tbcliente;

-- SELECCIONANDO POR LIMITE
select NOMBRE, SEXO, EDAD, DIRECCION1 FROM tbcliente limit 5;

-- FILTRANDO POR CAMPOS U OTROS CRITERIOS
select * FROM tbProducto;
select * from tbProducto where SABOR = 'Maracuya';
select * from tbProducto where ENVASE = 'Botella de Vidrio';

update tbProducto set SABOR = 'Citrico' where SABOR = 'limon';
select * from tbProducto where SABOR = 'Limon';
select * from tbProducto where SABOR = 'Citrico';

-- FILTROS POR CONDICIONES
SELECT * FROM tbcliente where EDAD > 27;
SELECT * FROM tbcliente where EDAD <= 27;
SELECT * FROM tbcliente where EDAD <> 25;
SELECT * FROM tbcliente where EDAD > 'Erica Carvajo';

SELECT * FROM tbProducto where PRECIO_LISTA = 28.51;

SELECT * FROM tbProducto WHERE PRECIO_LISTA BETWEEN 12 AND 29;

-- FILTROS POR FORMATO_FECHA
SELECT * FROM tbcliente WHERE FECHA_NACIMIENTO < '1995-01-13';
SELECT * FROM tbcliente WHERE year(FECHA_NACIMIENTO) = 1995;
SELECT * FROM tbcliente WHERE DAY(FECHA_NACIMIENTO) = 20;

SELECT * FROM tbProducto WHERE PRECIO_LISTA BETWEEN 28 AND 30;
SELECT * FROM tbProducto WHERE PRECIO_LISTA >= 12 AND PRECIO_LISTA <= 30;
SELECT * FROM tbProducto WHERE ENVASE = 'Lata' OR ENVASE = 'Botella PET';

SELECT * FROM tbProducto WHERE (PRECIO_LISTA >= 12 AND PRECIO_LISTA <= 30) OR (ENVASE = 'Lata' OR ENVASE = 'Botella PET');
