<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     exclude-result-prefixes="pers" xmlns:pers="http://www.pers.nl" xmlns="http://www.pers.nl">
     
     <xsl:key match="pers:persoon" name="pers_key" use="pers:achternaam" />
     
     <xsl:template match="/">
          <xsl:for-each select="key('pers_key', 'Scholten')">
               <xsl:copy-of select="pers:adres" />
          </xsl:for-each>
     </xsl:template>
     
</xsl:stylesheet>