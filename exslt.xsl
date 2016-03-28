<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:exsl="http://exslt.org/common">

    <xsl:template match="/producten">
    <root>
    <xsl:variable name="tmpTotal">
        <total_amount>
            <xsl:for-each select="OrderLine">
                <item>
                    <xsl:value-of select="Quantity/Amount * Price/UnitPrice"/>
                </item>
            </xsl:for-each>
        </total_amount>
    </xsl:variable>
        <total>
            <xsl:variable name="myTotal" select="exsl:node-set($tmpTotal)"/>
            <xsl:value-of select="sum($myTotal/total_amount/item)" />
        </total>
    </root>
    </xsl:template>
</xsl:stylesheet>

