<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mf="www.mijnfuncties.nl">
    <xsl:decimal-format ></xsl:decimal-format>
	<xsl:function name="mf:rondaf_2dec">
		<xsl:param name="getal"/>

		<xsl:value-of select="format-number(round($getal * 100) div 100, '€ #.00')"/>
	</xsl:function>
	

</xsl:stylesheet>