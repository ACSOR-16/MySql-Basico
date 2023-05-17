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