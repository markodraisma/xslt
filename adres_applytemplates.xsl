<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
exclude-result-prefixes="pers" xmlns:pers="http://www.pers.nl" xmlns="http://www.pers.nl">

  <xsl:import href="identity.xsl" />
	
	<xsl:template match="pers:adres">
		<adres><xsl:value-of select="pers:straat"/>, <xsl:value-of select="pers:plaats"/></adres>
	</xsl:template>
	
</xsl:stylesheet>