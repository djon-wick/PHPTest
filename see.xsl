<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
     <html>
          <xsl:for-each select="./answers/answer">
                <h1>
                    Ответы: <xsl:value-of   select="./name"/>
                </h1>
                <p>
                    <xsl:value-of select='count(./answer[text()="true"])'/>/<xsl:value-of select='count(./answer)'/>
                </p>        
          </xsl:for-each>
          <a href=".">Пройти тест ещё раз</a>
     </html>
</xsl:template>
</xsl:stylesheet>