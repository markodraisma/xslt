<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
     xmlns:cd="http://www.cd.nl" exclude-result-prefixes="cd">
	
	<xsl:template match="/cd:cdlijst">
	
          <xsl:variable name="lijst">
               <xsl:perform-sort select="cd:cd" >
              	<xsl:sort select="cd:cdtitel"></xsl:sort>
              </xsl:perform-sort>
		</xsl:variable>	

          <cdlijst>
	         <originele_volgorde>
		          <xsl:value-of select="cd:cd/cd:cdtitel" separator="; "></xsl:value-of>
	          </originele_volgorde>
	          <gesorteerd>
		          <xsl:value-of select="$lijst/cd:cd/cd:cdtitel" separator="; "></xsl:value-of>
	          </gesorteerd>
          </cdlijst>
	
	</xsl:template>
</xsl:stylesheet>