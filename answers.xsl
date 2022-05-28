<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
     <html>
          <xsl:for-each select="/test/lecture">
                    <h1>
                         <xsl:value-of   select="./header"/>
                    </h1>
                    <xsl:for-each select="./question">
                              <h2>
                                   <xsl:value-of   select="./header"/>
                              </h2>
                              <xsl:for-each select='./answer[@correct="true"]'>
                                   <p style="color:green">
                                        &#8730;<xsl:value-of   select="."/>
                                   </p>
                              </xsl:for-each>
                    </xsl:for-each>
          </xsl:for-each>
     </html>
</xsl:template>
</xsl:stylesheet>