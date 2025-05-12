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

--Sacar por pantalla el titulo de las personas que han trabajado en Microsoft
select extractvalue(DATOS_CV, 'curriculum/educacion/titulo')
from curriculums
where extractvalue(DATOS_CV, 'curriculum/experiencia/trabajo') = 'Microsoft';

--Sacar por pantalla el nombre de las personas que tienen un titulo llamado "Máster en Marketing Digital"
select extractvalue(DATOS_CV, 'curriculum/empresa')
from curriculums
where extractvalue(DATOS_CV, 'curriculum/educacion/titulo') = 'Máster en Marketing Digital';