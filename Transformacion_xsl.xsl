<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Programación Exámenes</title>
                <style>
                    table {
                        width: 80%;
                        border-collapse: collapse;
                        margin: 20px auto;
                        text-align: center;
                        
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 10px;
                    }
                    th {
                        background-color: lightgray;
                        text-transform: uppercase;
                    }
                    td {
                        background-color: #f9f9f9;
                    }
                    h2 {
                        text-align: center;
                        
                    }
                </style>
            </head>
            <body>
                <h2>Calendario</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Lunes</th>
                            <th>Martes</th>
                            <th>Miércoles</th>
                            <th>Jueves</th>
                            <th>Viernes</th>
                            <th>Sábado</th>
                            <th>Domingo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="agenda_examenes/calendario/semana">
                            <tr>
                                <xsl:for-each select="dia">
                                    <td>
                                        <xsl:choose>
                                            <xsl:when test="string-length(.) > 0">
                                                <xsl:value-of select="."/>
                                            </xsl:when>
                                            <xsl:otherwise>-</xsl:otherwise>
                                        </xsl:choose>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

                <h2>Lista de Exámenes</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Curso</th>
                            <th>Asignatura</th>
                            <th>Fecha</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="agenda_examenes/examenes/examen">
                            <tr>
                                <td><xsl:value-of select="curso"/></td>
                                <td><xsl:value-of select="asignatura"/></td>
                                <td><xsl:value-of select="fecha"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
