--Updates

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

--Consultas sobre campos no xml

--Sacar por pantalla la institucion donde se formaron las personas que han trabajado en Microsoft
select extractvalue(DATOS_CV, 'curriculum/educacion/institucion')
from curriculums
WHERE existsNode(DATOS_CV, '/curriculum/experiencia/trabajo[empresa="Microsoft"]') = 1;

--Sacar por pantalla el nombre de las personas que tienen un titulo llamado "Grado en Ciencias de la Computacion"
select nombre
from curriculums
where extractvalue(DATOS_CV, 'curriculum/educacion/titulo') = 'Grado en Ciencias de la Computacion';

--Consultas sobre campos xml

--Informacion de curriculum del apartado educacion
SELECT XMLELEMENT('curriculum',
    XMLAGG(
        XMLELEMENT('educacion',
            XMLELEMENT('titulo', EXTRACTVALUE(datos_cv, '/curriculum/educacion/titulo')),
            XMLELEMENT('institucion',  EXTRACTVALUE(datos_cv, '/curriculum/educacion/institucion')),
            XMLELEMENT('anio',    EXTRACTVALUE(datos_cv, '/curriculum/educacion/anio'))
        )
    )
)
FROM curriculums;

--Toda la informacion de todos los curriculums
SELECT XMLROOT(
         XMLELEMENT("curriculums",
           XMLAGG(
             XMLELEMENT("curriculum",
               XMLATTRIBUTES(id AS "id"),
               XMLFOREST(
                 nombre AS "nombre", 
                 telefono AS "telefono"
               ),
               XMLELEMENT("datos",
                datos_cv)))),
         VERSION '1.0'
       )
FROM curriculums;
