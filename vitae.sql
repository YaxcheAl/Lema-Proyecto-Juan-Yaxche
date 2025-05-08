create table curriculums (
    id NUMBER PRIMARY KEY,
    nombre VARCHAR(100),
    telefono number(15),
    datos_cv XMLTYPE
);

INSERT INTO curriculums VALUES (
   1,
    'Pedro Mata',
    621456723,
    XMLTYPE('
        <curriculum>
            <personal>
                <nombre>Pedro Mata</nombre>
                <telefono>621456723</telefono>
                <email>pedromata@gmail.com</email>
            </personal>
            <experiencia>
                <trabajo>
                    <empresa>Microsoft</empresa>
                    <puesto>Desarrollador</puesto>
                    <anio>2016</anio>
                </trabajo>
                <trabajo>
                    <empresa>Google</empresa>
                    <puesto>Ingeniero de software</puesto>
                    <anio>2021</anio>
                </trabajo>
            </experiencia>
            <educacion>
                <titulo>Ingeniero en Sistemas</titulo>
                <institucion>Universidad Politécnica de Madrid</institucion>
                <anio>2015</anio>
            </educacion>
        </curriculum>'
    )
);


INSERT INTO curriculums VALUES (
   2,
    'Angel Obando',
    631567856,
    XMLTYPE('
        <curriculum>
            <personal>
                <nombre>Angel Obando</nombre>
                <telefono>631567856</telefono>
                <email>angelobando@gmail.com</email>
            </personal>
            <experiencia>
                <trabajo>
                    <empresa>Sony</empresa>
                    <puesto>Especialista de Marketing digital</puesto>
                    <anio>2014</anio>
                </trabajo>
                <trabajo>
                    <empresa>Cola-Cola</empresa>
                    <puesto>Especialista de Marketing digital</puesto>
                    <anio>2022</anio>
                </trabajo>
            </experiencia>
            <educacion>
                <titulo>Grado en Marketing</titulo>
                <institucion>Universidad Complutense de Madrid</institucion>
                <anio>2012</anio>
            </educacion>
        </curriculum>'
    )
);

INSERT INTO curriculums VALUES (
   3,
    'Jhnony Marin',
    636778956,
    XMLTYPE('
        <curriculum>
            <personal>
                <nombre>Jhonny Marin</nombre>
                <telefono>636778956</telefono>
                <email>jhonnymarin@gmail.com</email>
            </personal>
            <experiencia>
                <trabajo>
                    <empresa>BBVA</empresa>
                    <puesto>Analista Financiero</puesto>
                    <anio>2017</anio>
                </trabajo>
                <trabajo>
                    <empresa>Santander</empresa>
                    <puesto>Asesor financiero</puesto>
                    <anio>2014</anio>
                </trabajo>
            </experiencia>
            <educacion>
                <titulo>Master en finanzas</titulo>
                <institucion>Universidad Complutense de Madrid</institucion>
                <anio>2010</anio>
            </educacion>
        </curriculum>'
    )
);

INSERT INTO curriculums VALUES (
   4,
    'Ana Perez',
    645762398,
    XMLTYPE('
        <curriculum>
            <personal>
                <nombre>Ana Perez</nombre>
                <telefono>645762398</telefono>
                <email>analuisaobandoperez@gmail.com</email>
            </personal>
            <experiencia>
                <trabajo>
                    <empresa>Tesla</empresa>
                    <puesto>Programación de sistemas embebidos en los vehículos Tesla.</puesto>
                    <anio>2020</anio>
                </trabajo>
                <trabajo>
                    <empresa>Sony</empresa>
                    <puesto>Programar y desarrollar videojuegos</puesto>
                    <anio>2023</anio>
                </trabajo>
            </experiencia>
            <educacion>
                <titulo>Grado en Ciencias de la Computación</titulo>
                <institucion>Universidad Complutense de Madrid</institucion>
                <anio>2010</anio>
            </educacion>
        </curriculum>'
    )
);

INSERT INTO curriculums VALUES (
   5,
    'Luis Garcia',
    '723658734',
    XMLTYPE('
        <curriculum>
            <personal>
                <nombre>Luis Garcia</nombre>
                <telefono>723658734</telefono>
                <email>luisgarcia@gmail.com</email>
            </personal>
            <experiencia>
                <trabajo>
                    <empresa>Nike</empresa>
                    <puesto>Gerente de Marketing Digital</puesto>
                    <anio>2021</anio>
                </trabajo>
                <trabajo>
                    <empresa>Tesla</empresa>
                    <puesto>Ingeniero de Software para Videojuegos</puesto>
                    <anio>2024</anio>
                </trabajo>
            </experiencia>
            <educacion>
                <titulo>Máster en Marketing Digital</titulo>
                <institucion>ESIC Business y Marketing School</institucion>
                <anio>2020</anio>
            </educacion>
        </curriculum>'
    )
);