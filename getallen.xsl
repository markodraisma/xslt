<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="identity.xsl"></xsl:import>
	<xsl:template match="getal">
		<getal><xsl:value-of select="format-number(.,'###.##')"></xsl:value-of></getal>		
	</xsl:template>
</xsl:stylesheet>