<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="identity.xsl" />
	<xsl:template match="adres">
		<xsl:analyze-string regex="^(\w)+(\.(\w)+)?@(\w)+\.([a-z]){{2,}}$" select=".">
			<xsl:matching-substring>
				<correct>
					<xsl:value-of select="." />
				</correct>
			</xsl:matching-substring>
			<xsl:non-matching-substring>
				<incorrect>
					<xsl:value-of select="." />
				</incorrect>
			</xsl:non-matching-substring>
		</xsl:analyze-string>
	</xsl:template>
</xsl:stylesheet>