<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:cd="http://www.cd.nl">

	<xsl:template match="/cd:cdlijst">

		<xsl:for-each select="cd:cd">
			<xsl:variable name="bestandsnaam">
				<xsl:value-of select="concat('///h:/artiest/' , cd:artiest, '.xml')"></xsl:value-of>
			</xsl:variable>

			<xsl:result-document href="{$bestandsnaam}">
				<xsl:copy-of select="."/>
			</xsl:result-document>
		</xsl:for-each>

	</xsl:template>
</xsl:stylesheet>





