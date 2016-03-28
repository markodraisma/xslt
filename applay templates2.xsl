<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:art="http://www.artist.nl" xmlns:cd="http://www.cd.nl">
	<xsl:template match="/">
	
			
				<xsl:apply-templates></xsl:apply-templates>
			
		
		
	</xsl:template>

<xsl:template match="art:catalog">
		<html>
			<body>
				<h2 fontcolor="purple">
					<font color="purple">Mijn CD Collectie</font>
				</h2>
				<table border="1">
					<tr bgcolor="lime">
					
						<xsl:for-each select="//art:catalog/art:cd[last()]/*">
							<th>
								<h3>
									<xsl:value-of select="name()"/>
								</h3>
							</th>
						
						</xsl:for-each>
						
						
						
					</tr>
					<xsl:for-each select="art:cd">
						<xsl:sort select="art:artiest"/>
						<xsl:variable name="kleur">
							<xsl:choose>
								<xsl:when test="art:land = 'USA'">orange</xsl:when>
								<xsl:when test="art:land = 'UK'">blue</xsl:when>
								<xsl:when test="art:land = 'EU'">yellow</xsl:when>
								<xsl:when test="art:land = 'Norway'">red</xsl:when>
								<xsl:otherwise>purple</xsl:otherwise>
							</xsl:choose>
						</xsl:variable>
						<tr bgcolor="{$kleur}">
							<xsl:for-each select="./*">
								<td>
									<xsl:value-of select="."/>
								</td>
							</xsl:for-each>
							
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>


<xsl:template match="cd:cdlijst">
		<html>
			<head>
				<title>cdlijst</title>
			</head>
			<body style="font-family: arial;">
				
				<h2 style="color:#003300;">CD overzicht:</h2>

				<table>
					<tr bgcolor="#003300" style="font-size:16pt; color:#CCFF00;">
						<th>artiest</th>
						<th>titel</th>
						<th>speelduur</th>
						
					</tr>
					<xsl:for-each select="/cd:cdlijst/cd:cd">
						<xsl:sort select="cd:artiest"/>
						 
						 <xsl:variable name="album">
							 <xsl:value-of select="cd:albumhoes"/>
						 </xsl:variable>
						 
						<tr bgcolor="#CCFF66">
							<td><xsl:value-of select="cd:artiest"/></td>
							<td><xsl:value-of select="cd:cdtitel"/></td>
							<td align="right"><xsl:value-of select="@speelduur"/></td>
							
						</tr>
						
					</xsl:for-each>
				</table>
			</body>
		</html>		
			
		
	</xsl:template>
</xsl:stylesheet>
	