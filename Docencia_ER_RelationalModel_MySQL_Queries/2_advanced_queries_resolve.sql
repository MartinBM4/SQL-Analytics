
# 1. 
select asi.codigo
from asignaturas asi
where asi.codigo in (select im.asignatura
						from impartir im, profesores p
                        where im.profesor = p.id and upper(p.nombre = 'MANUEL') and upper(p.apellido1) = 'ENCISO');

# 2. 
select alu.dni 'codigo alumno'
from alumnos alu join matricular m on (m.alumno = alu.dni)
where (m.asignatura, m.curso,m.grupo) in (select im.asignatura, im.curso, im.grupo
					from impartir im join profesores p on (p.id = im.profesor) 
                    where upper(p.id) = 'C-34-TU-00');

# 3. 
select d.nombre, sum(asi.creditos) 'numero creditos'
from asignaturas asi, departamentos d
where asi.departamento = d.codigo
group by d.codigo, d.nombre
order by sum(asi.creditos) desc;

# 4. BIEN
select p.despacho, sum(ifnull(im.carga_creditos,0)) 'total creditos'
from profesores p join impartir im on (p.id = im.profesor) join asignaturas asi on (im.asignatura = asi.codigo)
where p.despacho is not null
group by p.despacho;

# 4. MAL, ¿NO ENTIENDO POR QUE NO SALE ASI?
select p.despacho, sum(ifnull(asi.creditos,0)),  'total creditos'
from profesores p join impartir im on (p.id = im.profesor) join asignaturas asi on (im.asignatura = asi.codigo)
where p.despacho is not null
group by p.despacho;

# 5. 
select concat(al.nombre,' ',al.apellido1,' ',ifnull(al.apellido2,'')) Alumno, asi.nombre Asignatura
from alumnos al join matricular mat on (al.dni = mat.alumno) 
join asignaturas asi on(asi.codigo = mat.asignatura)
where (al.dni,asi.creditos) in (select mmat.alumno, max(aasi.creditos)
						from asignaturas aasi join matricular mmat on(aasi.codigo = mmat.asignatura)
						group by mmat.alumno);

# 6. 
select d.nombre Departamento, asi.nombre Asignatura
from departamentos d join asignaturas asi on (d.codigo = asi.departamento)
where asi.creditos = (select min(aasi.creditos) 
						from departamentos dd, asignaturas aasi
						where dd.codigo = aasi.departamento
						and dd.codigo = d.codigo)
group by d.nombre , asi.nombre;

# 7. 
select d.nombre Departamento
from departamentos d join asignaturas asi on (asi.departamento = d.codigo)
group by d.nombre
having count(asi.codigo) = (select max(temp.cont)
							from 	(select count(codigo) 'cont'
									 from asignaturas
									 group by departamento) as temp);

# 8. 
select p.nombre, p.apellido1, ifnull(p.apellido2,'') apellido2
from profesores p join impartir im on(im.profesor = p.id)
group by im.profesor 
having sum(im.carga_creditos) > (select sum(iim.carga_creditos)/count(p.id)
									from impartir iim);
								
# 9. 
select distinct d.nombre
from departamentos d join asignaturas asi on(d.codigo = asi.departamento)
where asi.departamento not in (select aasi.departamento
								from asignaturas aasi
                                where aasi.creditos > 6);





















