<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!--On definie notre element racine comme template-->
	<xsl:template match="/formation">
		<html>
		<body>
            <!--La valeur de titre de formation-->
            <h2><xsl:value-of select="/formation/titre"/></h2>
            <!--Un boucle pour chaque module qui existe dans l'element formation-->
            <xsl:for-each select="/formation/module">
                <h4>
                    <!--Le compteur (position()) pour compter les nombre des modules-->
                    <!--Et on selecte le repere-->
                    <xsl:value-of select="position()"/>. <xsl:value-of select="@repere"/>
                </h4>
                <!--Liste des infos de module (Numero de semestre / titre...)-->
                <ul>
                    <li>Numero de Semestre: <xsl:value-of select="@semestre"/></li>
                    <li><xsl:value-of select="titre"/></li>
                    <li><xsl:value-of select="horaire"/> heures</li>
                    <li><xsl:value-of select="points"/> points ECTS</li>
                    <li>Programme: 
                        <!--Liste des elements de programme-->
                        <ul>
                            <xsl:for-each select="programme/para">
                                <li><xsl:value-of select="."/></li>
                            </xsl:for-each> 
                        </ul>                         
                    </li>
                </ul>
            </xsl:for-each>
        </body>
		</html>
	</xsl:template>
</xsl:stylesheet>