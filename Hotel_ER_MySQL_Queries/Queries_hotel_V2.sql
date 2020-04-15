#1 Apartamentos con Parking DE MOTO libres del día 05/11/2019 al 20/11/2019
SELECT A.ID 'ID ALOJAMIENTO', P.NUM_PARKING 'PLAZA PARKING', A.NUM_PERSONAS 'NUMERO PERSONAS'
FROM reserva_alojamiento R, parking P, alojamiento A
WHERE R.ID_ALOJAMIENTO = P.ID_ALOJ
AND A.ID = R.ID_ALOJAMIENTO
AND P.TIPO = 'MOTO'
AND ((FECHA_INICIO NOT BETWEEN '2019/11/05' AND '2019/12/01') 
OR (FECHA_FIN NOT BETWEEN '2019/11/05' AND '2019/12/01') 
OR (FECHA_INICIO <= '2019/11/05'  AND FECHA_FIN >= '2019/11/20'));

#2 PRECIO TOTAL DE UN CLIENTE -->> ALOJAMIENTO + VEHICULO
SELECT temp.DNI, SUM(temp.PRECIO) 'PRECIO TOTAL'
FROM
(
    SELECT C.DNI, V.PRECIO
    FROM reserva_vehiculo RV
	JOIN clientes C ON (C.DNI = RV.DNI)
    JOIN vehiculos V ON (RV.MATRICULA = V.MATRICULA)
    UNION 
    SELECT C.DNI, A.PRECIO
    FROM reserva_alojamiento RA
    JOIN clientes C ON (C.DNI = RA.DNI)
    JOIN alojamiento A ON (A.ID = RA.ID_ALOJAMIENTO)
) temp
GROUP BY DNI;

#3 Apartamento de la empresa XXXXX que tenga cocina, pero no tenga salón y esté libre del día 03/05/2019 al 10/05/2019
SELECT E.NOMBRE, AP.TIENE_COCINA, AP.TIENE_SALON, AP.ID_ALOJ
FROM empresas E, propiedades P, apartamentos AP, reserva_alojamiento RA
WHERE E.NIF = P.NIF_EMPRESA
AND P.COD_PROPIEDAD = AP.COD_PROPIEDAD
AND AP.ID_ALOJ = RA.ID_ALOJAMIENTO
AND E.NIF = 'H7Q9Y8'
AND AP.TIENE_COCINA LIKE 'SI'
AND AP.TIENE_SALON LIKE 'NO'
AND ((FECHA_INICIO NOT BETWEEN '2019/05/03' AND '2019/05/10') 
OR (FECHA_FIN NOT BETWEEN '2019/05/03' AND '2019/05/10') 
OR (FECHA_INICIO <= '2019/05/03' AND FECHA_FIN >= '2019/05/10'));

#4 Empleado de servicios que trabaje en el turno de tarde en el restaurante del hotel Barceló
SELECT CONCAT(P.NOMBRE, ' ', P.APELLIDO) AS 'NOMBRE'
FROM personas P, empleados E, servicios SER, serv_trabaja_en T, hoteles H, salas S
WHERE P.DNI = E.DNI
AND E.DNI = SER.DNI
AND SER.DNI = T.DNI
AND T.COD_SALA = S.COD_SALA 
AND S.COD_PROPIEDAD = H.COD_PROPIEDAD
AND UPPER(E.TURNO) = 'TARDE'
AND UPPER(S.FUNCION) = 'RESTAURANTE'
AND UPPER(H.NOMBRE) = 'BARCELÓ';

#5 Nombre de los clientes y datos de la tarjeta de crédito que han reservado un vehículo de color rojo además de un alojamiento
SELECT CONCAT(IFNULL(P.NOMBRE,''),' ' , IFNULL(P.APELLIDO, '')) 'NOMBRE', C.TARJETA_CREDITO 'TARJETA CREDITO'
FROM personas P 
JOIN clientes C ON (P.DNI = C.DNI)
JOIN reserva_vehiculo RV ON (C.DNI = RV.DNI) 
JOIN reserva_alojamiento RA ON (RA.DNI = C.DNI)
JOIN vehiculos V ON (RV.MATRICULA = V.MATRICULA)
WHERE V.COLOR = 'ROJO';

#6 NOMBRES DE HOTELES, EMPRESAS Y CLIENTES (NOMBRES O APELLIDOS) QUE CONTENGAN LA LETRA T
SELECT NOMBRE  'NOMBRES QUE CONTIENEN LA T'
FROM hoteles
WHERE NOMBRE LIKE '%T%'
UNION
SELECT NOMBRE  'NOMBRES QUE CONTIENEN LA T'
FROM empresas
WHERE NOMBRE LIKE '%T%'
UNION
SELECT NOMBRE  'NOMBRES QUE CONTIENEN LA T'
FROM clientes C JOIN personas P ON (C.DNI = P.DNI)
WHERE P.NOMBRE LIKE '%T%'
UNION
SELECT APELLIDO  'NOMBRES QUE CONTIENEN LA T'
FROM clientes C JOIN personas P ON (C.DNI = P.DNI)
WHERE P.APELLIDO LIKE '%T%';

#7 Nombre de los acompañantes de clientes que vayan a alojarse durante AL MENOS 3 días
SELECT concat(ifnull(A.NOMBRE,''), ' ',  ifnull(A.APELLIDO,'')) 'NOMBRE ACOMPAÑANTES'
FROM acompaniantes A 
JOIN clientes C ON (A.DNI = C.DNI)
JOIN reserva_alojamiento ALOJ ON (ALOJ.DNI = C.DNI)
WHERE ABS(TIMESTAMPDIFF(DAY, ALOJ.FECHA_FIN, ALOJ.FECHA_INICIO)) >= 3;

#8 Nombre de los directores de los edificios ordenados 
#por nombre descendente y el numero de propiedades por director 
SELECT concat(P.NOMBRE, ' ', P.APELLIDO) 'NOMBRE DIRECTOR', COUNT(ED.COD_PROPIEDAD) 'NUM EDIFICIOS'
FROM personas P, empleados E, direccion D, edificios ED, propiedades PRO, empresas EMP
WHERE P.DNI = E.DNI 
AND E.DNI = D.DNI
AND D.DNI = ED.DNI_DIRECTOR
AND ED.COD_PROPIEDAD = PRO.COD_PROPIEDAD
AND PRO.NIF_EMPRESA = EMP.NIF
GROUP BY concat(P.NOMBRE, ' ', P.APELLIDO)
ORDER BY P.NOMBRE DESC;

#9 Salario y numero de la seguridad social de empleados de limpieza que trabajen en más de un alojamiento.
SELECT E.SALARIO, E.SSN
FROM empleados E, limp_trabaja_en T, alojamiento A
WHERE E.DNI = T.DNI 
AND T.ID_ALOJ = A.ID
GROUP BY T.DNI
HAVING COUNT(*) > 1;

#10 Precio de la habitación más cara y más barata de cada hotel
SELECT HOT.NOMBRE, max(ALOJ.PRECIO) 'PRECIO MAS CARO'#, min(ALOJ.PRECIO) 'PRECIO MAS BARATO'
FROM hoteles HOT, habitaciones HAB, alojamiento ALOJ
WHERE HOT.COD_PROPIEDAD = HAB.COD_PROPIEDAD
AND ALOJ.ID = HAB.ID_ALOJ
GROUP BY HOT.COD_PROPIEDAD;