<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="artikel">
		<besteld>
			<xsl:copy-of select="."></xsl:copy-of>
			<artikel_totaal>
				<xsl:value-of select="prijs*aantal"></xsl:value-of>
			</artikel_totaal>
		</besteld>
	</xsl:template>


	<xsl:template match="/lijst">

		<!--
		<xsl:variable name="productTotaal">
			<xsl:for-each select="artikel">
				<productPrijs>
					<xsl:value-of select="aantal * prijs"/>
				</productPrijs>
			</xsl:for-each>
		</xsl:variable>
		-->

		<rekening>
			<xsl:apply-templates select="artikel"></xsl:apply-templates>
			<totaal>
				<xsl:value-of select="sum(artikel/prijs)" />
			</totaal>
		</rekening>

	</xsl:template>

</xsl:stylesheet>