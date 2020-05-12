<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        
					<div class="home-about__inner">
						<div class="container"> 
							<xsl:apply-templates select="ZoneList/Zone"></xsl:apply-templates>
						</div>
					</div>
				
    </xsl:template>
    <xsl:template match="Zone">
        <div class="content-wrap">
            <div class="content">
                
                <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
            </div>
            <div class="btn-wrap" data-aos="fade-down" data-aos-duration="1200">
                <a class="btn-1">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
                    <img src="/Data/Sites/1/media/img/btn-icon.png" alt=""></img></a></div>
        </div>
    </xsl:template>

</xsl:stylesheet>