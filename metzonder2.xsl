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
				 <xsl:choose>
				 	<xsl:when test="//cd:albumhoes">
				 		<xsl:apply-templates ></xsl:apply-templates>
				 		<xsl:call-template name="met"/>
				 	</xsl:when>
				 	<xsl:otherwise>
				 		<xsl:call-template name="zonder"/>
				 	</xsl:otherwise>
				 </xsl:choose>
				
			</body>
		</html>		
		
		
	</xsl:template>
	
	<xsl:template name="zonder">
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
	</xsl:template>
	
	
	<xsl:template name="met">
		<table>
					<tr bgcolor="#003300" style="font-size:16pt; color:#CCFF00;">
						<th>artiest</th>
						<th>titel</th>
						<th>speelduur</th>
						<th>album</th>
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
							<td align="center"><img src="{$album}" HEIGHT="40"/></td>
						</tr>
						
					</xsl:for-each>
				</table>
	</xsl:template>
	
	
</xsl:stylesheet>