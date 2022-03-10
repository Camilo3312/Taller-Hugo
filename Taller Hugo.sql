create view aprendiz as 
select a.nombre, a.documento, c.curso, c.dia, p.nombre as nombre_profesor, i.matricula
from aprendices a inner join inscritos i on a.documento = i.documentosocio
left join cursos c on i.numerocurso = c.numero
inner join profesores p on c.documentoprofesor = p.documento
order by a.nombre

