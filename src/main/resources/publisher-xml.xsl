<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0"
                encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <root>
            <xsl:apply-templates/>
        </root>
    </xsl:template>

    <xsl:template match="publisher">
        <publisher>
            <xsl:attribute name="name">
                <xsl:value-of select="@name" />
            </xsl:attribute>
            <xsl:apply-templates select="platforms"/>
        </publisher>
    </xsl:template>
    <xsl:template match="platforms">
            <xsl:attribute name="platformCnt">
                <xsl:value-of select="@count" />
            </xsl:attribute>
            <xsl:attribute name="totalReviews">
                <xsl:value-of select="@totalreviews" />
            </xsl:attribute>
            <xsl:attribute name="averageRating">
                <xsl:value-of select="@averagerating" />
            </xsl:attribute>
            <xsl:apply-templates select="platform"/>
    </xsl:template>
    <xsl:template match="platform">
        <platform>
            <xsl:attribute name="id">
                <xsl:value-of select="@id" />
            </xsl:attribute>
            <xsl:attribute name="name">
                <xsl:value-of select="@url" />
            </xsl:attribute>
            <xsl:attribute name="reviews">
                <xsl:value-of select="@totalreviews" />
            </xsl:attribute>
            <xsl:attribute name="averageRating">
                <xsl:value-of select="@averagerating" />
            </xsl:attribute>
        </platform>
    </xsl:template>
</xsl:stylesheet>