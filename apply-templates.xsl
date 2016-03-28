<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>CD Collectie</h2>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="cd">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  <xsl:template match="titel">
    Titel: 
    <span style="color:#ff0000">
      <xsl:value-of select="."/>
    </span>
    <br/>
</xsl:template>

  <xsl:template match="artiest">
    Artiest: 
    <span style="color:#0000ff">
      <xsl:value-of select="."/>
    </span>
    <br/>
  </xsl:template>

</xsl:stylesheet>
