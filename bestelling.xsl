<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:bes="www.bestelling.nl" exclude-result-prefixes="bes" xmlns="www.bestelling.nl">

	<xsl:import href="identity.xsl"/>

     <xsl:template match="bes:product/*[last()]">
	     <xsl:apply-imports/>
	     <totaal></totaal>
     </xsl:template>

</xsl:stylesheet>