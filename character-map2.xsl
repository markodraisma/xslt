<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:character-map name="xml_karakters">
    <xsl:output-character character="&lt;" string="&lt;" />
    <xsl:output-character character="&gt;" string="&gt;" />
    <xsl:output-character character="&amp;" string="&amp;" />
  </xsl:character-map>
  <xsl:output indent="yes" use-character-maps="xml_karakters" method="xml" />
  <xsl:template match="/">
    <uitvoer>
        <xsl:text>Als a > b &amp; b > c dan geldt: c &lt; a</xsl:text>
    </uitvoer>
  </xsl:template>
</xsl:stylesheet>