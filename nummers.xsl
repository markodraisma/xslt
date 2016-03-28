<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cd="http://www.cd.nl" exclude-result-prefixes="cd">
	
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="cd:cdlijst">
	
		<nummers xmlns="http://www.nummers.nl" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.nummers.nl file:///H:/XMLbestanden/nummers.xsd">
		
			<xsl:for-each select="/cd:cdlijst/cd:cd/cd:tracklist/cd:track">
			
				
					<xsl:sort select="cd:titel"/>
					<nummer>
						<titel>
							<xsl:value-of select="cd:titel"></xsl:value-of>
						</titel>
						<artiest>
							<xsl:value-of select="../../cd:artiest"></xsl:value-of>
						</artiest>
						<jaar>
							<xsl:value-of select="cd:jaar"></xsl:value-of>
						</jaar>
						<duur>
							<xsl:value-of select="@speelduur"></xsl:value-of>
						</duur>
					</nummer>
					
				</xsl:for-each>
				
			
		</nummers>

	</xsl:template>
</xsl:stylesheet>