--Modificar el email de la persona cuyo nombre es Pedro Mata 
update curriculums
set datos_cv = updatexml(datos_cv, 'curriculum/personal/email/text()','pedromataperez@gmail.com')
where nombre = 'Pedro Mata'; 

--Modificar el numero de telefono del dueño de este correo electronico: angelobando@gmail.com
update curriculums
set telefono = 621454556
where extractvalue(datos_cv, 'curriculum/personal/email/text()') = 'angelobando@gmail.com';

--Modificar el numero de telefono de Jhonny Marin
update curriculums
set telefono = 621464156
where nombre = 'Jhonny Marin';

--Sacar por pantalla la institucion donde se formaron las personas que han trabajado en Microsoft
select extractvalue(DATOS_CV, 'curriculum/educacion/institucion')
from curriculums
WHERE existsNode(DATOS_CV, '/curriculum/experiencia/trabajo[empresa="Microsoft"]') = 1;

--Sacar por pantalla el nombre de las personas que tienen un titulo llamado "Grado en Ciencias de la Computacion"
select nombre
from curriculums
where extractvalue(DATOS_CV, 'curriculum/educacion/titulo') = 'Grado en Ciencias de la Computacion';