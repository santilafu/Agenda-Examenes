<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4" page-height="29.7cm" page-width="21cm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="A4">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-size="14pt" font-weight="bold" text-align="center">Agenda de Exámenes</fo:block>
                    
                    <!-- Tabla de Calendario -->
                    <fo:table border="1pt solid black">
                        <fo:table-column column-width="14%"/>
                        <fo:table-column column-width="14%"/>
                        <fo:table-column column-width="14%"/>
                        <fo:table-column column-width="14%"/>
                        <fo:table-column column-width="14%"/>
                        <fo:table-column column-width="14%"/>
                        <fo:table-column column-width="14%"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell><fo:block>Lunes</fo:block></fo:table-cell>
                                <fo:table-cell><fo:block>Martes</fo:block></fo:table-cell>
                                <fo:table-cell><fo:block>Miércoles</fo:block></fo:table-cell>
                                <fo:table-cell><fo:block>Jueves</fo:block></fo:table-cell>
                                <fo:table-cell><fo:block>Viernes</fo:block></fo:table-cell>
                                <fo:table-cell><fo:block>Sábado</fo:block></fo:table-cell>
                                <fo:table-cell><fo:block>Domingo</fo:block></fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    
                    <fo:block font-size="14pt" font-weight="bold" text-align="center" margin-top="10pt">Lista de Exámenes</fo:block>
                    
                    <!-- Tabla de Exámenes -->
                    <fo:table border="1pt solid black">
                        <fo:table-column column-width="33%"/>
                        <fo:table-column column-width="33%"/>
                        <fo:table-column column-width="33%"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell><fo:block>Curso</fo:block></fo:table-cell>
                                <fo:table-cell><fo:block>Asignatura</fo:block></fo:table-cell>
                                <fo:table-cell><fo:block>Fecha</fo:block></fo:table-cell>
                            </fo:table-row>
                            <xsl:for-each select="agenda_examenes/examenes/examen">
                                <fo:table-row>
                                    <fo:table-cell><fo:block><xsl:value-of select="curso"/></fo:block></fo:table-cell>
                                    <fo:table-cell><fo:block><xsl:value-of select="asignatura"/></fo:block></fo:table-cell>
                                    <fo:table-cell><fo:block><xsl:value-of select="fecha"/></fo:block></fo:table-cell>
                                </fo:table-row>
                            </xsl:for-each>
                        </fo:table-body>
                    </fo:table>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>