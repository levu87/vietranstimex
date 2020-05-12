<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <h2 class="main-title-dark">
            <xsl:value-of select="/ProductFilter/ZoneTitle"></xsl:value-of>
        </h2>
        <div class="filter-wrapper">
            <div class="container">

                <div class="filter-toggle">
                    <span>Bộ lọc</span>
                    <em class="mdi mdi-filter"></em>
        
                </div>
                <div class="sort filter-group ajaxfilterresponse">
                    <xsl:apply-templates select="/ProductFilter/Group"></xsl:apply-templates>
                </div>
            </div>

        </div>
    </xsl:template>
    <xsl:template match="Group">
            <div class="sort__item">
                <label for="years"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></label>
                <select class="ajaxsort" onchange="this.options[this.selectedIndex].value &amp;&amp; (window.location = this.options[this.selectedIndex].value);">
                    <xsl:attribute name="id">
                        <xsl:text>sort-</xsl:text>
                        <xsl:value-of select="position()"></xsl:value-of>
                    </xsl:attribute>
					<xsl:apply-templates select="Option"></xsl:apply-templates>
				</select>
            </div>
	</xsl:template>
    <xsl:template match="Option">
        <option>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
    </xsl:template>

</xsl:stylesheet>
