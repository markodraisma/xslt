<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="/">
		<xsl:apply-templates select="groepen" />		
	</xsl:template>
	
	<xsl:template match="groepen">
		<personen>
			<xsl:for-each select="groep">
				<xsl:element name="{mv}">
					<xsl:for-each select="personen/persoon">
	                       <xsl:copy-of select="naam"></xsl:copy-of>
                       </xsl:for-each>
				</xsl:element>
			</xsl:for-each>
		</personen>		
	</xsl:template>
</xsl:stylesheet>

