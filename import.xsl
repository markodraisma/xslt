<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cd="http://www.cd.nl">
	
<xsl:import href="metzonder.xsl"></xsl:import>
<xsl:template match="/">
	<html>
		<head>
		<title> cds</title>
		</head>
		<body style="font-family: 'comic sans ms'; color: blue;">
			de eigenschappen van deze xsl gaan voor de eigenschappen van de geimporteerde xsl
			<h3>dit is mijn </h3>
			<xsl:apply-imports></xsl:apply-imports>
		</body>
	</html>
	</xsl:template>
</xsl:stylesheet>