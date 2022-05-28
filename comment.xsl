<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
     <html>
          <xsl:for-each select="./comments/comment">
                <h2>
                    Примечание от: <xsl:value-of   select="./author"/>
                    <br/>
                    Созданное в: <xsl:value-of   select="./date"/>
                    <br/>
                    По теме: <xsl:value-of   select="./theme"/>
                </h2>
                <p>
                    <xsl:value-of select='./text'/>
                </p>        
          </xsl:for-each>
          <a href=".">Пройти тест</a>
     </html>
</xsl:template>
</xsl:stylesheet>