<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Currículum Vitae de <xsl:value-of select="curriculum/informacion_personal/nombre"/></title>
                <link rel="stylesheet" type="text/css" href="../estilo/estilo_curriculum.css"/>
            </head>
            <body>
                <h1>Currículum Vitae</h1>
                <header>
                    <nav>
                        <ul>
                            <li><a href="../index.html">Inicio</a></li>
                            <li><a href="../web/formulario_curriculum.html">Formulario CV</a></li>
                            <li><a href="curriculum_yaxche.xml" aria-current="page">Curriculum Yaxche</a></li>
                        </ul>
                    </nav>
                </header>
                <h2>Información Personal</h2>
                <p><strong>Nombre:</strong> <xsl:value-of select="curriculum/informacion_personal/nombre"/></p>
                <p><strong>Correo Electrónico:</strong> <xsl:value-of select="curriculum/informacion_personal/correo_electronico"/></p>
                <p><strong>Teléfono:</strong> <xsl:value-of select="curriculum/informacion_personal/telefono"/></p>
                <p><strong>Dirección:</strong> <xsl:value-of select="curriculum/informacion_personal/direccion"/></p>
                <p><strong>Fecha de Nacimiento:</strong> <xsl:value-of select="curriculum/informacion_personal/fecha_nacimiento"/></p>
                <a target="_blank"><xsl:attribute name="href">../imagenes/<xsl:value-of select="curriculum/informacion_personal/imagen"/></xsl:attribute><img alt="imagen yaxche">
                <xsl:attribute name="src">../imagenes/<xsl:value-of select="curriculum/informacion_personal/imagen"/></xsl:attribute></img></a>
                <h2>Resumen Profesional</h2>
                <p><xsl:value-of select="curriculum/resumen_profesional"/></p>

                <h2>Educación</h2>
                <xsl:for-each select="curriculum/educacion/centro_educativo">
                    <div>
                        <h3><xsl:value-of select="nombre"/></h3>
                        <p><strong>Título:</strong> <xsl:value-of select="Titulo_Grado"/></p>
                        <p><strong>Periodo:</strong> <xsl:value-of select="Periodo"/></p>
                    </div>
                </xsl:for-each>

                <h2>Experiencia Laboral</h2>
                <xsl:for-each select="curriculum/experiencia_laboral/experiencia">
                    <div>
                        <h3><xsl:value-of select="puesto"/> en <xsl:value-of select="Empresa"/></h3>
                        <p><strong>Periodo:</strong> <xsl:value-of select="periodo"/></p>
                        <p><strong>Responsabilidades:</strong> <xsl:value-of select="responsabilidades"/></p>
                    </div>
                </xsl:for-each>

                <h2>Habilidades</h2>
                <ul>
                    <xsl:for-each select="curriculum/habilidades/habilidad">
                        <li><xsl:value-of select="."/></li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
