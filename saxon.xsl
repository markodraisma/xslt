<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/lijst">
		<html>
			<body>
				
				<table>
					<tr>
						<th align="left">artikel</th>
						<th>prijs</th>
						<th>aantal</th>
					</tr>
					<xsl:for-each select="artikel">
						<tr>
							<td><xsl:value-of select="naam"/></td>
							<td align="right"><xsl:value-of select="prijs"/></td>
							<td align="right"><xsl:value-of select="aantal"/></td>
						</tr>
					</xsl:for-each>
					
				</table>
					
				
			</body>
		</html>
		
	</xsl:template>
	
	
</xsl:stylesheet>