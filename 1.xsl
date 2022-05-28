<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
     <html>
          <form action="result.php" method="get">
          <label for="name" style="margin-right:5px;">Введите имя</label>

          <input tuype="text" name="name" id="name"/>
          <xsl:for-each select="/test/lecture">
                    <h1>
                         <xsl:value-of   select="./header"/>
                    </h1>
                    <xsl:for-each select="./question[2]">
                              <h2>
                                   <xsl:value-of   select="./header"/>
                              </h2>
                              <ul>
                              <xsl:for-each select="./answer">
                                   <li>
                                        <input type="radio">
                                             <xsl:attribute name="name">
                                                <xsl:value-of select="generate-id(..)"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="value">
                                                <xsl:value-of select="boolean(@correct='true')"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="id">
                                                <xsl:value-of select="generate-id()"/>
                                            </xsl:attribute>
                                        </input>
                                        <label>
                                             <xsl:attribute name="for">
                                                  <xsl:value-of select="generate-id()"/>
                                             </xsl:attribute>
                                             <xsl:value-of select="."/>
                                        </label>
                                   </li>
                              </xsl:for-each>
                              </ul>
                    </xsl:for-each>
          </xsl:for-each>
          <input type="submit"/>
          </form>
     </html>
</xsl:template>
</xsl:stylesheet>