<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">
  <xsl:output omit-xml-declaration="yes"/>
  <!-- voer de transformatatie uit met een willekeurig xml document-->
  

  <xsl:template match="/">
    <xsl:call-template name="template1">
      <xsl:with-param name="p1" tunnel="yes">basis</xsl:with-param>
      <!-- p1  krijgt de waarde basis -->
    </xsl:call-template>
  </xsl:template>

  <xsl:template name="template1">
    <xsl:param name="p1" tunnel="no">ik kom uit template 1</xsl:param>
    1. p1 in template1: <xsl:value-of select="$p1"/>
    <!--in tempalte 1 is tunnel op no gezet.  p1 krijgt de waarde "ik kom uit template 1"-->
    <xsl:call-template name="template2"/>
  </xsl:template>


<xsl:template name="template2">
    <xsl:param name="p1" tunnel="yes"/>
    2. p1 in template2: <xsl:value-of select="$p1"/>
    <!--in tempalte2 is tunnel op yes gezet.  p1 krijgt de waarde "basis"-->
    <xsl:call-template name="template3"/>
  </xsl:template>

  <xsl:template name="template3">
    <xsl:param name="p1" tunnel="yes">ik kom uit template 3</xsl:param>
    3. p1 in template3: <xsl:value-of select="$p1"/>
    <!-- ondaks de nieuwe waarde wordt voor p1 de waarde "basis" gebruikt-->
  </xsl:template>

</xsl:stylesheet>