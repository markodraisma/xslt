<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:pers="http://www.pers.nl" exclude-result-prefixes="pers">
	<xsl:template match="/">

		<personen>
			<xsl:for-each select="/pers:personen/pers:persoon">
				<naam gebdat="{pers:geboortedatum}" oogkleur="{pers:ogen}">
					
					<xsl:value-of select="pers:voornaam"></xsl:value-of>
					<xsl:text> </xsl:text>
					<xsl:value-of select="pers:achternaam"></xsl:value-of>
				</naam>
				<xsl:copy-of select="pers:adres"/>
			</xsl:for-each>
		</personen>

	</xsl:template>
</xsl:stylesheet>