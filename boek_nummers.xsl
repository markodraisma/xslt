<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<inhoud>
			<xsl:apply-templates select=".//hoofdstuk|.//paragraaf" />
		</inhoud>
	</xsl:template>
	<xsl:template match="*">
		<xsl:element name="{name()}">
			<xsl:number value="position()"/>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>