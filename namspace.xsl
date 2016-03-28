<?xml version="1.0" encoding="utf-8"?>
<!--voer de transformatie uit met een willekeurig xml document-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="/">
		
		<test>
			<xsl:namespace name="te" select="'www.test.nl'"/>
			<xsl:namespace name="test" select="'www.testen.nl'"/>
			
			<blabla><xsl:namespace name="bla" select="'www.blablabla.nl'"/>blablabla</blabla>
			
		</test>
	</xsl:template>
</xsl:stylesheet>