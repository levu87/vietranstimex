<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <h2 class="main-title-dark"><xsl:value-of disable-output-escaping="yes" select="ZoneList/ModuleTitle"></xsl:value-of></h2>
        <div class="nav-wrap">
            <div class="nav-mobile">
            <span>Danh mục</span> </div>
            <ul class="nav-sub"> 
                <xsl:apply-templates select="ZoneList/Zone/Zone"></xsl:apply-templates>
            </ul>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
         <li>
        <xsl:if test="IsActive='true'">
            <xsl:attribute name="class">
            <xsl:text>active</xsl:text>
            </xsl:attribute>
        </xsl:if>
        <a>
            <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="target">
            <xsl:value-of select="Target"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
        </a>
        </li>
    </xsl:template>

</xsl:stylesheet>