<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:cd="http://www.cd.nl" exclude-result-prefixes="cd">
	<xsl:output method="html"/>
	<xsl:template match="/">
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
					<xsl:for-each select="/cd:cdlijst/cd:cd">
						<xsl:sort select="cd:artiest"/>
							<tr>
							<td><xsl:value-of select="./cd:artiest"/></td>
							<td><xsl:value-of select="./cd:cdtitel"/></td>
							<td align="right"><xsl:value-of select="./@speelduur"/></td>
						</tr>
					</xsl:for-each>
					</tbody>
				</table>
			</body>
		</html>	
		
	</xsl:template>
</xsl:stylesheet>