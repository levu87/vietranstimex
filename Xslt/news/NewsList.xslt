<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="news__list">
			<xsl:apply-templates select="NewsList/News"></xsl:apply-templates>

		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="news__items">
			<div class="item"> 
			<a class="box-img">
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
				<div class="caption">
					<date><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></date><a class="title">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</a>
					<p class="briefcontent"><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>