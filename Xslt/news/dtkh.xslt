<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <div class="container"> 
            <h2 class="main-title" data-aos="fade-down" data-aos-duration="1200"><xsl:value-of disable-output-escaping="yes" select="NewsList/ModuleTitle"></xsl:value-of></h2>
            <div class="home-partners__slider"> 
                <div class="swiper-container"> 
                    <div class="swiper-wrapper"> 
                        <xsl:apply-templates select="NewsList/News"></xsl:apply-templates>
                    </div>
                </div>
                <div class="swiper-nav">
                    <div class="button-prev"><em class="lnr lnr-chevron-left"></em></div>
                    <div class="button-next"><em class="lnr lnr-chevron-right"></em></div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="swiper-slide"> 
            <div class="partners"> 
                <div class="partners__list"> <a class="partners__item">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a>
                </div>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>