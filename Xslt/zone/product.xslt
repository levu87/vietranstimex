<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <div class="product-list-1 main-section">
				<div class="container">
					<h2 class="main-title-dark"><xsl:value-of disable-output-escaping="yes" select="ZoneList/Title"></xsl:value-of></h2>
					<div class="product-list-1__list"> 
						<xsl:apply-templates select="ZoneList/Zone/Zone"></xsl:apply-templates>
					</div>
				</div>
			</div>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="product-list-1__items">
							<div class="item"> <a class="box-img">
                                
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <img class="lazyload blur-up">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                </img>
                            </a>
								<div class="caption"> <a class="title">
                                    
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="Url"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                               </a><a class="view-more-btn"> 
                            
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
                               <em class="mdi mdi-chevron-right"></em></a></div>
							</div>
						</div>
    </xsl:template>

</xsl:stylesheet>