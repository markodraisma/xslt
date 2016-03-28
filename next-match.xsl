<?xml version="1.0" encoding="utf-8"?>
<!--voer de transformatie uit met het document next-match.xml -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <table border="1">
          <tr><th>Leden:</th></tr>
          <xsl:apply-templates />
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="lid[@datum='2003-10-03']">
    <tr><td><xsl:apply-templates /> (vanaf begin)</td></tr>
  </xsl:template>
  
  <xsl:template match="lid[substring(@datum,1,4) = '2010']">
    <tr><td><xsl:apply-templates /> (nieuw)</td></tr>
  </xsl:template>
  
  <xsl:template match="lid">
    <tr><td><xsl:apply-templates /></td></tr>
  </xsl:template>
</xsl:stylesheet>