<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
     <xsl:output indent="yes" />
     <xsl:template match="/">
          <sequences>
               <sequence>
                    <xsl:sequence select="(//cd[jaar='1973']/titel, //cd[land='EU']/titel)" />
               </sequence>
               <sequence>
                    <xsl:sequence select="//cd[number(jaar)>1990]/(land|jaar) except (//cd[land ='UK']/(land|jaar))" />
               </sequence>
               <sequence>
                    <xsl:sequence select="//cd[number(jaar)>1990]/(land|jaar) intersect (//cd[land ='UK']/(land|jaar))" />
               </sequence>
               <sequence>
                    <xsl:value-of select="( (1 , 3, 4), ('aap', 'noot', 'mies'), (xs:date('2011-05-30'),xs:date('2011-05-31')))" />
               </sequence>
               <sequence>
                    <xsl:value-of select="fn:remove (5 to 10,  3)" />
               </sequence>
               <sequence>
                    <xsl:sequence select="fn:index-of ((5 to 10),  8)" />
               </sequence>
               <sequence>
                    <xsl:sequence select="fn:insert-before ((5 to 8),  2, (1,3))" />
               </sequence>
               <sequence>
                    <xsl:sequence select="(fn:sum((1,4,7)), fn:avg((1,4,7)), fn:min((1,4,7)), fn:max((1,4,7)), fn:count((1,4,7)))" />
               </sequence>
          </sequences>
     </xsl:template>
</xsl:stylesheet>