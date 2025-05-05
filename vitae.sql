create table curriculums (
    id NUMBER PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(100),
    fecha_creacion DATE,
    datos_cv XMLTYPE
);

INSERT INTO curriculums VALUES (
    1, 'Juan Perez', 621348745, 
    XMLTYPE('
    ')
);