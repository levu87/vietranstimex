<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <xsl:apply-templates select="ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <h2 class="main-title-dark"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
					<div class="recruitment__content"> 
						<div class="box-img"> 
                            <img class="lazyload blur-up">
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            </img>
                        </div>
						<div class="box-content"> 
							<div class="content">
								<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
							</div>
						</div>
					</div>
    </xsl:template>

</xsl:stylesheet>