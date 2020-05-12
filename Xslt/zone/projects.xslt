<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <div class="projects main-section">
				<div class="container"> 
					<h2 class="main-title-dark"><xsl:value-of disable-output-escaping="yes" select="ZoneList/Title"></xsl:value-of></h2>
					<div class="projects__list"> 
                        <xsl:apply-templates select="ZoneList/Zone/Zone"></xsl:apply-templates>
					</div>
				</div>
			</div>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="projects__item"> 
            <div class="item-img"> 
                <img class="lazyload blur-up">
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
            </div>
            <div class="item-content"> 
                <h3 class="title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                <p>
                    <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
                </p><a class="view-more-btn">
                    
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
                 <em class="mdi mdi-chevron-right"></em></a>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>