-- Crear tabla
CREATE TABLE modulo_victimizacion(
    entidad varchar(2),
    viv varchar(5),
    hogar varchar(5),
    upm varchar(5),
    renglon varchar(20),
    tipo_delito int,
    num_delito int,
    nombre varchar(50),
    apellido varchar(50),
    perdida int
);

-- Insertar Datos
INSERT INTO modulo_victimizacion(entidad, viv, hogar, upm, renglon, tipo_delito, num_delito, nombre, apellido, perdida)
VALUES ('01','15','03','15','10',3, 1, 'Luis', 'Miranda',2000),
       ('01','15','03','15','10',3, 2, 'Luis', 'Miranda',3000),
       ('02','20','13','10','03',4, 1, 'Oscar', 'Ruiz',1000),
       ('09','16','11','05','01',5, 1, 'Raul', 'Ortiz',4500),
       ('32','12','11','02','04',2, 1, 'Luisa', 'Ortiz',300),
       ('32','12','11','02','04',3, 1, 'Luisa', 'Ortiz',500)
       ;

SELECT * FROM modulo_victimizacion;

-- Insertar datos de manera directa:
insert into modulo_victimizacion
values ('01','01','01','01','01',6,1,'Jose','Uribe',5000);

-- Seleccionar campos especificos:
SELECT tipo_delito, perdida FROM modulo_victimizacion;

-- Ordenar de manera ascendente por apellido:
SELECT * FROM modulo_victimizacion ORDER BY apellido ASC;

-- Por orden descendente:
SELECT * FROM modulo_victimizacion ORDER BY apellido DESC;

-- Ordenar por multiples criterios:
SELECT * FROM modulo_victimizacion ORDER BY nombre DESC, apellido ASC, perdida DESC;

-- filtros:
SELECT * FROM modulo_victimizacion WHERE entidad  = '01';

-- filtros combinados:
SELECT * FROM modulo_victimizacion WHERE perdida > 1000 ORDER BY tipo_delito DESC;

SELECT * FROM modulo_victimizacion WHERE perdida >= 2000 AND entidad = '01';

SELECT * FROM modulo_victimizacion WHERE perdida != 2000;

-- Operadores Logicos: AND, OR, NOT e IN:
SELECT * FROM modulo_victimizacion WHERE tipo_delito IN(3);
SELECT * FROM modulo_victimizacion WHERE tipo_delito IN(3,2);
SELECT * FROM modulo_victimizacion WHERE NOT perdida = 4500;

-- Delimitacion de la tabla:
SELECT * FROM modulo_victimizacion LIMIT 2;

SELECT * FROM modulo_victimizacion OFFSET 2;

-- filtros con expresiones like:
SELECT * FROM modulo_victimizacion WHERE nombre LIKE 'Luis%';

SELECT * FROM modulo_victimizacion WHERE nombre LIKE '%sa';

SELECT * FROM modulo_victimizacion WHERE nombre LIKE '%u%s%';



