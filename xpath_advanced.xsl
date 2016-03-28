<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs fn">
	<xsl:output indent="yes" />
	<xsl:template match="/">
		<xpath_uitbreidingen>
		     <aantal_prijs>
		     <xsl:sequence select="for $product in //product return ($product/aantal * $product/prijs)"></xsl:sequence>
		     </aantal_prijs>
	      <totaal>
		      <xsl:sequence select="sum(for $prd in //product return ($prd/aantal * $prd/prijs))"></xsl:sequence>
	      </totaal>
	       <some>
     	      <xsl:value-of select="some $product in //product satisfies ($product/aantal * $product/prijs > 300)"></xsl:value-of>
	      </some>
	      <every>
     	      <xsl:value-of select="every $product in //product satisfies ($product/aantal * $product/prijs > 300)"></xsl:value-of>
	      </every>
		</xpath_uitbreidingen>
	</xsl:template>
</xsl:stylesheet>