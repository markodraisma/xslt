<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<cds>
		<xsl:for-each select="//cd">
			<xsl:variable name="id" select="@id"/>
			<cd titel="{cdtitel}">
				<xsl:for-each select="//track[@cd=$id]">
					<track titel="{titel}" />
				</xsl:for-each>
			</cd>
		</xsl:for-each>
		</cds>
	</xsl:template>
</xsl:stylesheet>