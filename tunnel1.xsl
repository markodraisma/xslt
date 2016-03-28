<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
      <xsl:template match="body">
            <body>
                  <xsl:apply-templates select="*">
                        <xsl:with-param name="username" select="string(@username)" tunnel="yes"/>
                  </xsl:apply-templates>
            </body>
      </xsl:template>
      <!-- template #2 -->
      <xsl:template match="p">
            <p>
                  <xsl:apply-templates select="*|text()"/>
            </p>
      </xsl:template>
      <!-- template #3 -->
      <xsl:template match="*|text()">
            <xsl:copy>
                  <xsl:apply-templates select="@*"/>
                  <xsl:apply-templates select="*|@text()"/>
            </xsl:copy>
      </xsl:template>
      <!-- template #4 -->
      <xsl:template match="span[@class='username']">
            <xsl:param name="username" tunnel="yes"/>
            <span class="username">
                  <xsl:value-of select="$username"/>
            </span>
      </xsl:template>

</xsl:stylesheet>