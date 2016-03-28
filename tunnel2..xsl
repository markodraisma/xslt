<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="appendix">
 <xsl:call-template name="equation"></xsl:call-template>
  <xsl:apply-templates>
 
    <xsl:with-param name="equation-format" select="" tunnel="yes"/>
   
  </xsl:apply-templates>
 
 
</xsl:template>
</xsl:stylesheet>