<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
 xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xsl:output indent="yes"/>
	<xsl:template match="/">
		<functies>

			<huidige_datum>
				<xsl:value-of select="fn:current-date()"/>
			</huidige_datum>

			<huidige_tijd>
				<xsl:value-of select="fn:current-time()"/>
			</huidige_tijd>
	          <tijd_zone>
				<xsl:value-of select="fn:implicit-timezone()"/>
			</tijd_zone>
			<ingestelde_datum>
				<xsl:value-of select="fn:dateTime(xs:date('2011-05-11'),xs:time('11:00:00+02:00'))"></xsl:value-of>
			</ingestelde_datum>
			<huidige_jaar>
				<xsl:value-of select="fn:year-from-dateTime(fn:current-dateTime())"/>
			</huidige_jaar>
			<duration>
				<xsl:value-of select="fn:dateTime(xs:date('2011-05-14'),xs:time('12:20:00+02:00')) - fn:current-dateTime()"></xsl:value-of>
			</duration>

			<geen_dubbelen>
				<xsl:value-of select="fn:distinct-values(//land)" separator=","/>
			</geen_dubbelen>

			<hoofdletters>
				<xsl:value-of select="fn:upper-case(/lijst/cd[14]/artiest)"/>
			</hoofdletters>

			<kleineletters>
				<xsl:value-of select="fn:lower-case(/lijst/cd[15]/artiest)"/>
			</kleineletters>

		</functies>
	</xsl:template>
</xsl:stylesheet>