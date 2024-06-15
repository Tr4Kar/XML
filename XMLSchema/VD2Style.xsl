<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
      <title>Song List</title>
    </head>
    <body>
      <h2>Song List</h2>
      <table border="1">
        <tr bgcolor="#9acd32">
          <th>Author</th>
          <th>Song Name</th>
        </tr>
        <xsl:for-each select="songone/cd">
          <tr>
            <td><xsl:value-of select="author"/></td>
            <td><xsl:value-of select="song"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>