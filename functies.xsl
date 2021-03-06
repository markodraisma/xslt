<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output indent="yes"/>

	
	
	
	<xsl:template match="lijst">
		<landen>
			<xsl:for-each-group select="cd" group-by="land">
				<land>
					<code>
						<xsl:value-of select="land"/>
					</code>
					<aantal>
						<xsl:value-of select="count(current-group())"/>
					</aantal>
					<totaal>
						<xsl:value-of select="sum(current-group()/prijs)"/>
					</totaal>
				</land>
			</xsl:for-each-group>
		</landen>
	</xsl:template>
</xsl:stylesheet>





