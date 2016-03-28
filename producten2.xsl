<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:prod="www.producten.nl"  exclude-result-prefixes="prod">

   <xsl:import href="identity.xsl"></xsl:import>
	
	<xsl:template match="*">
		<xsl:element name="{local-name()}">
		<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="prod:id">
		<productid><xsl:number format="001" value="."/></productid>
	</xsl:template>
	
</xsl:stylesheet>