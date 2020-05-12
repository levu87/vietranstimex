<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
      
				<div class="navigation-bar">
					<div class="container">
						<ul class="navigation-bar__list"> 
							<xsl:apply-templates select="ZoneList/Zone/Zone"></xsl:apply-templates>
						</ul>
					</div>
				</div>
		
    </xsl:template>
    <xsl:template match="Zone">
        <li class="navigation-bar__item active">
            <xsl:if test="IsActive='true'">
            <xsl:attribute name="class">
            <xsl:text>navigation-bar__item active</xsl:text>
            </xsl:attribute>
            </xsl:if>
            <a class="navigation-bar__link">
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