<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cd="http://www.cd.nl" exclude-result-prefixes="cd">
	<xsl:output method="html"/>
	<xsl:template match="/cd:cdlijst">
		<html>
			<head>
				<title>cdlijst</title>
				<style>
					body 		{font-family: arial;}
					h2 		{ color:#003300 }
					thead tr 	{ background-color:#003300; 
					            	   font-size: 16pt;
					                  color: #CCFF00 }
                         tbody tr 	{background-color: #CCFF00 }
				</style>
			</head>
			<body>
				<h2>CD overzicht:</h2>
				<table>
					<thead>
					<tr>
						<th>artiest</th>
						<th>titel</th>
						<th>speelduur</th>
					</tr>
					</thead>
					<tbody>
						<xsl:apply-templates><xsl:sort select="cd:artiest"/></xsl:apply-templates>
					</tbody>
				</table>
			</body>
		</html>	
	</xsl:template>
	
	<xsl:template match="cd:cd">
		<tr>
			<xsl:apply-templates select="cd:artiest"/>
			<xsl:apply-templates select="cd:cdtitel"/>
			<xsl:apply-templates select="@speelduur"/>
		</tr>
	</xsl:template>
	
	<xsl:template match="cd:artiest|cd:cdtitel">
		<td>
			<xsl:value-of select="."/>
		</td>
	</xsl:template>
	
	<xsl:template match="@speelduur">
		<td align="right">
			<xsl:value-of select="."/>
		</td>
	</xsl:template>
	
</xsl:stylesheet>