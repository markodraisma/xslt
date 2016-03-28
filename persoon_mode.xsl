<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:pers="http://www.pers.nl"  exclude-result-prefixes="pers">
	<xsl:output method="xml"/>
	
	<xsl:template match="/">
	<namen>
		<hoofdletters>
			<xsl:apply-templates mode="upper"></xsl:apply-templates>
		</hoofdletters>
		<klein>
			<xsl:apply-templates mode="lower"></xsl:apply-templates>
		</klein>
	</namen>
	</xsl:template>
	
	<xsl:template match="pers:persoon" mode="upper">
		<naam>	
		<xsl:value-of select="translate(concat(pers:voornaam,' ',pers:achternaam),
		                                  'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
		</naam>
	</xsl:template>
	
	<xsl:template match="pers:persoon" mode="lower">
		<naam>
		<xsl:value-of select="translate(concat(pers:voornaam,' ',pers:achternaam),
		                                  'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')"/>
		</naam>
	</xsl:template>

</xsl:stylesheet>
