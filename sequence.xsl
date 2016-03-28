<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:cd="http://www.cd.nl" xmlns:xs="http://www.w3.org/2001/XMLSchema"
	exclude-result-prefixes="xs">
	<xsl:output indent="yes" />
	<xsl:template match="/">
		<xsl:variable name="cop_voorbeeld" as="element()">
			<xsl:copy-of select="cd:cdlijst/cd:cd[1]/cd:cdtitel" />
		</xsl:variable>
		<xsl:variable name="seq_voorbeeld" as="element()">
			<xsl:sequence select="cd:cdlijst/cd:cd[1]/cd:cdtitel" />
		</xsl:variable>
		<uitvoer>
			<copy-of>
				<titel>
					<xsl:value-of select="$cop_voorbeeld" />
				</titel>
				<artiest>
					<xsl:value-of select="$cop_voorbeeld/../cd:artiest" />
				</artiest>
			</copy-of>
			<sequence>
				<titel>
					<xsl:value-of select="$seq_voorbeeld" />
				</titel>
				<artiest>
					<xsl:value-of select="$seq_voorbeeld/../cd:artiest" />
				</artiest>
			</sequence>
		</uitvoer>
	</xsl:template>
</xsl:stylesheet>