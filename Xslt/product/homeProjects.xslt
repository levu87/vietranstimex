<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
					
        <xsl:apply-templates select="ZoneList/Zone"></xsl:apply-templates>
							
    </xsl:template>
    <xsl:template match="Zone">
        <div class="container home-projects__slider"> 
						<div class="swiper-container"> 
							<div class="swiper-wrapper"> 
                                <xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
                                </div>
						</div>
						<div class="swiper-nav">
							<div class="button-prev"><em class="lnr lnr-chevron-left"></em></div>
							<div class="button-next"><em class="lnr lnr-chevron-right"></em></div>
						</div>
					</div>
				
    </xsl:template>
    <xsl:template match="Zone" mode="Child">
        <div class="sub-title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></div>
       
        <div class="swiper-slide"> 
            <div class="projects">
                <xsl:apply-templates select="Product" mode="Zone-Product"></xsl:apply-templates>
                <div class="button-wrap"> <a class="btn-1">
                    
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
                     <img src="/Data/Sites/1/media/img/btn-icon.png"></img></a></div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Product" mode="Zone-Product">
        <xsl:if test="position() = 1">
            <div class="projects__content">
                <div class="box-title"> 
                    <h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
                    
                    <a class="btn-1">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text disable-output-escaping="yes">xem thêm </xsl:text>
                    <img src="/Data/Sites/1/media/img/btn-icon.png"></img></a>
                </div>
                <div class="box-content"> 
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </div>
            </div>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>