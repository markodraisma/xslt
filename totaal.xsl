<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
     <xsl:template match="/lijst">
          <rekening>
               <xsl:apply-templates select="artikel" />
               <totaal>
   
               </totaal>
          </rekening>
     </xsl:template>
     <xsl:template match="artikel">
          <besteld>
               <xsl:copy-of select="." />
               <artikel_totaal>
                    <xsl:value-of select="prijs*aantal" />
               </artikel_totaal>
          </besteld>
     </xsl:template>
 
     <xsl:template name="bereken">
          <xsl:param name="artikelen" />
          <xsl:param name="result" />
          <xsl:choose>
               <xsl:when test="$artikelen">
                    <xsl:call-template name="bereken">
                         <xsl:with-param name="artikelen" select="$artikelen[position()>1]" />
                         <xsl:with-param name="result" select="$result + (number($artikelen[1]/prijs) * number($artikelen[1]/aantal))" />
                    </xsl:call-template>
               </xsl:when>
               <xsl:otherwise>
                    <xsl:value-of select="$result" />
               </xsl:otherwise>
          </xsl:choose>
     </xsl:template>

</xsl:stylesheet>