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
					
			
				</land>
			</xsl:for-each-group>
		</landen>
	</xsl:template>
</xsl:stylesheet>





