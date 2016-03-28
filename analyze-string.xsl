<?xml version="1.0" encoding="utf-8"?>
<!--voer de transformatie uit met het document artiest.xml-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	
	
	
	
	<xsl:template match="/lijst">
		<bedragen>
			<xsl:apply-templates select="cd"></xsl:apply-templates>
		</bedragen>
	</xsl:template>
	
	
	
	
	<xsl:template match="cd">
		<xsl:analyze-string select="prijs" regex="\d{{2}}.\d{{2}}">
			<xsl:non-matching-substring>
				<bedrag>
					<xsl:value-of select="."></xsl:value-of>
				</bedrag>
			</xsl:non-matching-substring>
			<xsl:matching-substring>
				<bedrag>te duur</bedrag>
			</xsl:matching-substring>
		</xsl:analyze-string>

	</xsl:template>
</xsl:stylesheet>