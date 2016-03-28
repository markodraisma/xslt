<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:pers="http://www.pers.nl" exclude-result-prefixes="pers" xmlns="http://www.pers.nl">
     <xsl:template match="/">
          <personen>
               <xsl:for-each select="/pers:personen/pers:persoon">
                    <persoon>
                         <xsl:copy-of select="pers:voornaam" />
                         <xsl:copy-of select="pers:achternaam" />
                         <adres>
               		<xsl:value-of select="pers:adres/pers:straat" />, <xsl:value-of select="pers:adres/pers:plaats" />
               	     </adres>
                         <xsl:copy-of select="pers:nationaliteit" />
                         <xsl:copy-of select="pers:geboortedatum" />
                         <xsl:copy-of select="pers:ogen" />
                    </persoon>
               </xsl:for-each>
          </personen>
     </xsl:template>
</xsl:stylesheet>