<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs fn">
	<xsl:output indent="yes" />
	<xsl:template match="/">
		<datetime_functies>
			<huidige_datum>
				<xsl:value-of select="fn:current-date()" />
			</huidige_datum>
			<huidige_tijd>
				<xsl:value-of select="fn:current-time()" />
			</huidige_tijd>
			<ingestelde_datum>
				<xsl:value-of select="fn:dateTime(xs:date('2011-05-11'),xs:time('11:00:00+02:00'))" />
			</ingestelde_datum>
			<huidige_jaar>
				<xsl:value-of select="fn:year-from-dateTime(fn:current-dateTime())" />
			</huidige_jaar>
			<duration>
				<xsl:value-of select="fn:dateTime(xs:date('2011-05-14'),xs:time('12:20:00+02:00')) - fn:current-dateTime()" />
			</duration>
			<dagen_verschil>
				<xsl:value-of select="fn:days-from-duration(xs:date('2012-01-01')-fn:current-date())" />
			</dagen_verschil>
			<volgende_week>
				<xsl:value-of select="fn:current-date() + xs:dayTimeDuration('P7D') " />
			</volgende_week>
		</datetime_functies>
	</xsl:template>
</xsl:stylesheet>