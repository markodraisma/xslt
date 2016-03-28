<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet  xmlns:te="test"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:saxon="http://saxon.sf.net/"
               version="2.0">
  <!-- voer de transformatatie uit met woorden.xml-->               

  <xsl:output method="xml"/>

  <saxon:collation name="unicode" class="net.sf.saxon.sort.CodepointCollator" default="yes"/>

  <saxon:collation name="english" lang="en-US" strength="primary"/>
  <saxon:collation name="german" lang="de-DE" strength="secondary"/>
  <saxon:collation name="dutch" lang="nl-NL" strength="tertiary"/>
	<xsl:template match="/">
		<woordenlijst>
			
			<nederlands>
				<xsl:for-each select="te:lijst/te:word">
					<xsl:sort select="." collation="dutch"></xsl:sort>
					<woord><xsl:value-of select="."></xsl:value-of></woord>
				</xsl:for-each>
			</nederlands>
			
			<duits>
				<xsl:for-each select="te:lijst/te:word">
					<xsl:sort select="." collation="german"></xsl:sort>
					<woord><xsl:value-of select="."></xsl:value-of></woord>		
				</xsl:for-each>
			</duits>
			
		</woordenlijst>
		
	</xsl:template>
</xsl:stylesheet>