<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/formation">
		<html>
			<body>  
            <h2><xsl:value-of select="titre"/></h2>
			<!-- On va creer un tableau avec border size 1 -->
            <table border = "1">
				<!-- On va creer un ligne des entêtes-->
				<tr bgcolor="lightgreen">
					<th>Repere</th>
					<th>Titre</th>
					<th>Horaire</th>
                    <th>ECTS</th>
				</tr>	
				<!-- Pour chaque module... -->			
				<xsl:for-each select = "module">	
					<!-- ...On va creer un ligne... -->			
					<tr>
						<!-- ... et afficher les valeurs qui 
								 correspond aux entêtes. -->	
						<td><xsl:value-of select="@repere"/></td>
                        <td><xsl:value-of select="titre"/></td>
                        <td><xsl:value-of select="horaire"/></td>
                        <td><xsl:value-of select="points"/></td>   
					</tr>				
				</xsl:for-each>
		       </table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>