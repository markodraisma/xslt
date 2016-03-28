<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="identity.xsl" />
	<xsl:template match="baarden">
		<baarden>
		<xsl:analyze-string regex="\w+" select=".">
			<xsl:matching-substring>
				<baard>
					<xsl:value-of select="." />
				</baard>
			</xsl:matching-substring>
		</xsl:analyze-string>
		</baarden>
	</xsl:template>
</xsl:stylesheet>