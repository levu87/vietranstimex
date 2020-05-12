<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <div class="e-brochure__list"> 
						<xsl:apply-templates select="NewsList/News"></xsl:apply-templates>
						
					</div>
    </xsl:template>
    <xsl:template match="News">
        <div class="e-brochure__items">
            <div class="item"> 
                <div class="img"> 
                    <img class="lazyload blur-up">
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </div>
                <div class="caption">
                    <li><a class="title">
                
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </a></li>
                    <a class="download" download=''>
                                <xsl:attribute name="href">
                                        <xsl:value-of select="FileUrl"></xsl:value-of>
                                    </xsl:attribute>
                        <img src="/Data/Sites/1/media/img/download.png">
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        </img>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>