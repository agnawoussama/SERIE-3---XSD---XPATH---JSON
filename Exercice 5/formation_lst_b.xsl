<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/formation">
		<html>
		<body>
            <h2><xsl:value-of select="/formation/titre"/></h2>
            <xsl:for-each select="/formation/module">
                <h4>
            <xsl:value-of select="position()"/>. <xsl:value-of select="@repere"/>
                </h4>
                <ul>
                    <li>Numero de Semestre: <xsl:value-of select="@semestre"/></li>
                    <li><xsl:value-of select="titre"/></li>
                    <li><xsl:value-of select="horaire"/> heures</li>
                    <li><xsl:value-of select="points"/> points ECTS</li>
                    <!-- Si le programme n'est pas null... -->
                    <xsl:if test="programme != ''">
                        <!-- ...On va donc l'afficher -->
                        <li>Programme: 
                            <ul>
                                <xsl:for-each select="programme/para">
                                    <li><xsl:value-of select="."/></li>
                                </xsl:for-each> 
                            </ul>                         
                        </li>
                    </xsl:if>                       
                </ul>
            </xsl:for-each>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>