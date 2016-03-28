<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>CD Collectie</h2>
        <xsl:for-each select="catalog/cd">
         Titel:
         <span style="color:#ff0000">
            <xsl:value-of select="titel"/>
          </span>
          <br/>
          Artiest: 
          <span style="color:#0000ff">
            <xsl:value-of select="artiest"/>
          </span>
  <br/>
    
    
  <br/>
  </xsl:for-each>
      </body>
    </html>
  </xsl:template>


</xsl:stylesheet>
