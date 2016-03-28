<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cd="http://www.cd.nl" exclude-result-prefixes="cd">
	<xsl:output method="html"/>
	<xsl:template match="/">
		
		<html>
			<head>
				<title>cdlijst</title>
			</head>
			<body style="font-family: arial;">
				
				<h2 style="color:#003300;">CD overzicht:</h2>
				
				<table>
					<tr bgcolor="#003300" style="font-size:16pt; color:#99FF00;">
						<th>artiest</th>
						<th>titel</th>
						<th>speelduur</th>
					</tr>
					<xsl:for-each select="/cd:cdlijst/cd:cd">
						<xsl:sort select="cd:artiest"/>
						<xsl:variable name="kleur">
							<xsl:choose>
								<xsl:when test="position() mod 2=0">#99FF00</xsl:when>
								<xsl:otherwise>#CCFF66</xsl:otherwise>
							</xsl:choose>
						</xsl:variable>	
						
						<tr bgcolor="{$kleur}">
							<td><xsl:value-of select="./cd:artiest"/></td>
							<td><xsl:value-of select="./cd:cdtitel"/></td>
							<td align="right"><xsl:value-of select="./@speelduur"/></td>
						</tr>
						
					</xsl:for-each>
				</table>
			</body>
		</html>	
		
	</xsl:template>
</xsl:stylesheet>
