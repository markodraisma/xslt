<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

	<xsl:template match="/lijst">
		<rekening>
			<xsl:apply-templates select="artikel"></xsl:apply-templates>
			<totaal>	</totaal>
		</rekening>
	</xsl:template>

	<xsl:template match="artikel">
		<besteld>
			<xsl:copy-of select="."></xsl:copy-of>
			<artikel_totaal>
				<xsl:value-of select="prijs*aantal"></xsl:value-of>
			</artikel_totaal>
		</besteld>
	</xsl:template>

    <xsl:template name="bereken">
	    <xsl:param name="artikelen"></xsl:param>
	    <xsl:choose>
	    	<xsl:when test="$artikelen">
	    		<xsl:variable name="recursief_resultaat">
		    		<xsl:call-template name="bereken">
			    		<xsl:with-param name="artikelen" select="$artikelen[position()>1]">
			    		</xsl:with-param>
		    		</xsl:call-template>
		    		</xsl:variable>
		    		<xsl:value-of select="number($artikelen[1]/prijs) * number($artikelen[1]/aantal) + $recursief_resultaat"></xsl:value-of>
	    	</xsl:when>
	    	<xsl:otherwise>
		    	<xsl:value-of select="0"></xsl:value-of>
	    	</xsl:otherwise>
	    </xsl:choose>
    </xsl:template>   

</xsl:stylesheet>