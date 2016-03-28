<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:pro="www.producten.nl">
	<xsl:template match="/">
		<producten>
			<xsl:for-each select="pro:producten/pro:product">
				<product>
					<productid>	<xsl:value-of select="pro:id"/></productid>
					<soort><xsl:value-of select="pro:soort"/></soort>
					<aantal><xsl:value-of select="pro:aantal"/></aantal>
					<prijs><xsl:value-of select="pro:prijs"/></prijs>
				</product>
			</xsl:for-each>
		</producten>
	</xsl:template>
</xsl:stylesheet>