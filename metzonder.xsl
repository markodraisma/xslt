<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:cd="http://www.cd.nl" exclude-result-prefixes="cd">
	<xsl:output method="html" />
	<xsl:template match="/">
		<html>
			<head>
				<title>cdlijst</title>
				<style>
					body {font-family: arial; }
					h2 { color:#003300; }
					th {
					  background-color:#003300;
					  color:#CCFF00;
					  font-size:16pt;
					 }
					 td {
					  background-color:#CCFF66;
					  }
				</style>
			</head>
			<body>
				<h2>CD overzicht:</h2>
				<xsl:choose>
					<xsl:when test="//cd:albumhoes">
						<xsl:call-template name="met" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:call-template name="zonder" />
					</xsl:otherwise>
				</xsl:choose>
			</body>
		</html>
	</xsl:template>
	<xsl:template name="zonder">
		<table>
			<tr>
				<th>artiest</th>
				<th>titel</th>
				<th>speelduur</th>
			</tr>
			<xsl:for-each select="/cd:cdlijst/cd:cd">
				<xsl:sort select="cd:artiest" />
				<xsl:variable name="album">
					<xsl:value-of select="cd:albumhoes" />
				</xsl:variable>
				<tr>
					<td>
						<xsl:value-of select="cd:artiest" />
					</td>
					<td>
						<xsl:value-of select="cd:cdtitel" />
					</td>
					<td align="right">
						<xsl:value-of select="@speelduur" />
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
	<xsl:template name="met">
		<table>
			<tr>
				<th>artiest</th>
				<th>titel</th>
				<th>speelduur</th>
				<th>album</th>
			</tr>
			<xsl:for-each select="/cd:cdlijst/cd:cd">
				<xsl:sort select="cd:artiest" />
				<xsl:variable name="album">
					<xsl:value-of select="cd:albumhoes" />
				</xsl:variable>
				<tr>
					<td>
						<xsl:value-of select="cd:artiest" />
					</td>
					<td>
						<xsl:value-of select="cd:cdtitel" />
					</td>
					<td align="right">
						<xsl:value-of select="@speelduur" />
					</td>
					<td align="center">
						<img src="{$album}" HEIGHT="40" />
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>