<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <body>
                <h2>Kommentaaride publitseerijad ning kommentaarid</h2>
                <div>
                    <xsl:for-each select="root/publisher">
                        <p></p>
                        <div>
                            <div>
                                <xsl:value-of select="@name"/>
                            </div>
                            <xsl:for-each select="platforms">
                                <div><span>Kommenteerimiskeskkondade arv: <xsl:value-of select="@count"/></span> <span> kommentaare: <xsl:value-of select="@totalreviews"/></span><span> keskmine hinnang: <xsl:value-of select="@averagerating"/></span></div>
                                <xsl:for-each select="platform">
                                    <div>Kommentaarikeskkond: <xsl:value-of select="@url"/></div>
                                    <div>Kommentaarid
                                        <xsl:for-each select="reviews/review">
                                            <div>
                                                <p></p>
                                                <div><span>autor: <xsl:value-of select="author/@username"/></span><span>email: <xsl:value-of select="author/@email"/></span></div>
                                                <div>kommentaari lisamise kuupäev: <xsl:value-of select="@date"/></div>
                                                <div>
                                                    <div>kommentaari tekst:</div>
                                                    <div><xsl:value-of select="text"/></div>
                                                </div>
                                            </div>
                                        </xsl:for-each>
                                    </div>
                                </xsl:for-each>
                            </xsl:for-each>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>