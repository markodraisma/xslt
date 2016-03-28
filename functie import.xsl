<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mf="www.mijnfuncties.nl" extension-element-prefixes="mf" >
	<xsl:import href="///H:/XML2Bestanden/mijnfuncties.xsl"></xsl:import>
	
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
						<xsl:value-of select="mf:rondaf_2dec(sum(current-group()/prijs))"/>
					</totaal>
				</land>
			</xsl:for-each-group>
		</landen>
	</xsl:template>
</xsl:stylesheet>





