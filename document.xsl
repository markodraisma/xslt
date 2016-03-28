<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cd="http://www.cd.nl" exclude-result-prefixes="cd">
	<xsl:output method="xml"/>


	<xsl:template match="/">

		<cdlijst xmlns="http://www.cd.nl">
			<xsl:copy-of select="document('cdlijst1.xml')/cd:cdlijst/cd:cd"/>
			<xsl:copy-of select="document('cdlijst2.xml')/cd:cdlijst/cd:cd"/>
		</cdlijst>
	</xsl:template>


</xsl:stylesheet>
