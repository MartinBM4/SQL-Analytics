# TAREAS LESSON 5:

# 1.
select p.id,p.nombre,p.apellido1, p.apellido2, asi.codigo, asi.nombre asignatura
from profesores p join impartir im on(p.id=im.profesor) join asignaturas asi on (im.asignatura=asi.codigo);

# 2. 
select prof.nombre, ifnull(dir.id, 'no tiene')
from profesores prof left outer join profesores dir on (prof.director_tesis = dir.id);

# 3. 
select p1.nombre nombrep1, p1.apellido1 apellido1p1, ifnull(p1.apellido2,'no tiene') apellido2p2, timestampdiff(year,p1.antiguedad,sysdate()) antiguedad1,
p2.nombre nombrep2, p2.apellido1 apellido2p2, ifnull(p2.apellido2,'no tiene') apellido2p2, timestampdiff(year, p2.antiguedad, sysdate()) antiguedad2
from profesores p1, profesores p2
where p1.id<p2.id and
(((timestampdiff(day, p1.antiguedad, p2.antiguedad)) <= 365*2) and 
((timestampdiff(day, p1.antiguedad,p2.antiguedad)) >= -365*2)) and
 p1.departamento = p2.departamento; #and (timestampdiff(day, p1.antiguedad, p2.antiguedad) != 0);
 
 # 4. 
 select asi1.nombre, asi2.nombre, asi3.nombre, asi1.cod_materia
 from asignaturas asi1,asignaturas asi2, asignaturas asi3
 where asi1.codigo < asi2.codigo and asi2.codigo < asi3.codigo and
 asi1.cod_materia = asi2.cod_materia and asi2.cod_materia = asi3.cod_materia;
 
 # 5. 
 select alu.nombre, alu.apellido1, alu.apellido2
 from impartir im, matricular mat, alumnos alu, profesores p
 where im.profesor = p.id and mat.alumno = alu.dni and
 upper(p.nombre) = 'ENRIQUE' and upper(p.apellido1) = 'SOLER' and 
 im.asignatura = mat.asignatura and mat.curso = im.curso and mat.grupo = im.grupo
 group by alu.dni
 order by alu.apellido1, alu.apellido2;
 
# 6. 
select asi.nombre, mat.nombre, concat(p.nombre,' ', p.apellido1, ' ',ifnull(p.apellido2,' ')) profesor, im.carga_creditos
from asignaturas asi, impartir im, profesores p, materias mat
where asi.codigo = im.asignatura and im.profesor = p.id and asi.cod_materia = mat.codigo and
profesor is not null and im.carga_creditos is not null
order by asi.cod_materia, asi.nombre desc;

# 7. 
select asi.nombre asignatura, d.nombre departamento, asi.creditos, round(((asi.practicos/asi.creditos)*100),2)
from asignaturas asi, departamentos d
where asi.departamento = d.codigo and asi.creditos is not null and asi.practicos is not null
order by (asi.practicos/asi.creditos)/100 desc, d.nombre; #si quitamos nombre no lo ordena como en la solucion, puse d.nombre para ponerlo mas bonito :)

# 8. 
(select p1.apellido1 APELLIDO
from profesores p1
where upper(p1.apellido1) like'%LL%') 
union
(select p2.apellido2 APELLIDO
from profesores p2
where upper(p2.apellido2) like '%LL%')
union
(select al1.apellido1 APELLIDO
from alumnos al1
where upper(al1.apellido1) like'%LL%')
union
(select al2.apellido2 APELLIDO
from alumnos al2
where upper(al2.apellido2) like'%LL%');

# 9. 
select concat('El director de ', p.nombre,' ',p.apellido1,' ', ifnull(p.apellido2,''), ' es ',
 dir.nombre,' ',dir.apellido1,' ',ifnull(dir.apellido2,'')) TESIS, ifnull(inv.tramos,0) Tramos
from profesores p join profesores dir on(p.director_tesis = dir.id) 
left outer join investigadores inv on (inv.id_profesor = dir.id);




# 10.BUENO 
select alu1.nombre, alu1.apellido1, alu1.apellido2, alu2.nombre, alu2.apellido1, alu2.apellido2
from alumnos alu1 left outer join alumnos alu2 on (alu1.fecha_prim_matricula = alu2.fecha_prim_matricula and alu1.dni < alu2.dni)
order by alu1.apellido1, alu1.apellido2, alu1.nombre, alu2.apellido1, alu2.apellido2, alu2.nombre;

# 10.1 MALO ¿¿¿? Por qué no sale el mismo resultado que el de arriba??
select alu1.nombre, alu1.apellido1, alu1.apellido2, alu2.nombre, alu2.apellido1, alu2.apellido2
from alumnos alu1 left outer join alumnos alu2 on (alu1.fecha_prim_matricula = alu2.fecha_prim_matricula)
where alu1.dni < alu2.dni
order by alu1.apellido1, alu1.apellido2, alu1.nombre, alu2.apellido1, alu2.apellido2, alu2.nombre;

# 10.2 MALO ¿¿¿Por qué no sale el mismo resultado que el de arriba???
 select alu1.nombre, alu1.apellido1, alu1.apellido2, alu2.nombre, alu2.apellido1, alu2.apellido2
from alumnos alu1 left outer join alumnos alu2 on (alu1.dni < alu2.dni)
where alu1.fecha_prim_matricula = alu2.fecha_prim_matricula
order by alu1.apellido1, alu1.apellido2, alu1.nombre, alu2.apellido1, alu2.apellido2, alu2.nombre;
 
 
 
 
 
 