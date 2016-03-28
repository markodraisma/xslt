<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">
  <xsl:output indent="yes"/>
	<xsl:template match="/">
		
		<xsl:variable name="nummers" as="xs:integer *">
			<xsl:sequence select="1 to 4"></xsl:sequence>
			<xsl:sequence select="(11, 13, 17)"></xsl:sequence>
			<xsl:for-each select="1 to 3">
			  <xsl:sequence select="20 + 2 * ."></xsl:sequence>
			</xsl:for-each>
		</xsl:variable>
		
		<nummers>
			<xsl:value-of select="$nummers" separator=", "></xsl:value-of>
		</nummers>
		
	</xsl:template>
</xsl:stylesheet>