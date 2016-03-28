<?xml version="1.0"?>
<!--voer de transformatie uit met het document character-map.xml-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:character-map name="html_karakters">
    <xsl:output-character character="&#xA;" string="&lt;br&gt;" />
    <xsl:output-character character="&#233;" string="&amp;eacute;" />
  </xsl:character-map>
  <xsl:output indent="yes" use-character-maps="html_karakters" method="html" />
  <xsl:template match="/">
    <html>
      <body>
        <xsl:value-of select="tekst"  />
       </body>
    </html>
  </xsl:template>
</xsl:stylesheet>