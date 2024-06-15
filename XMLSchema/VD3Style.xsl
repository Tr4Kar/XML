<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Môn học</title>
            </head>
            <body>
                <h1>Môn học</h1>
                <div>
                    <table border="1">
                        <tr bgcolor="#9acd32">
                            <th>Mã môn</th>
                            <th>Tên môn</th>
                            <th>Đơn vị học trình</th>
                        </tr>
                        <xsl:for-each select="monhoc/cd">
                        <tr>
                            <td><xsl:value-of select="mamon"/></td>
                            <td><xsl:value-of select="tenmon"/></td>
                            <td><xsl:value-of select="donvi"/></td>
                        </tr>
                        </xsl:for-each>
                    </table>
                </div>
                <div>
                    <table border="1">
                        <tr bgcolor="#9acd32">
                            <th>Mã môn</th>
                            <th>Tên môn</th>
                            <th>Đơn vị học trình</th>
                        </tr>
                        <xsl:for-each select="monhoc/cd[donvi >= 3]">
                        <tr>
                            <td><xsl:value-of select="mamon"/></td>
                            <td><xsl:value-of select="tenmon"/></td>
                            <td><xsl:value-of select="donvi"/></td>
                        </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>