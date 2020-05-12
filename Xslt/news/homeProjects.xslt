<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="container home-projects__slider">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="ZoneList/Zone"></xsl:apply-templates>
				</div>
			</div>
			<div class="swiper-nav">
				<div class="button-prev"><em class="lnr lnr-chevron-left"></em></div>
				<div class="button-next"><em class="lnr lnr-chevron-right"></em></div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="swiper-slide">
			<div class="projects">
				<div class="projects__content" data-aos="fade-down" data-aos-duration="1200">

					

					

					<xsl:apply-templates select="News" mode="Zone-News">
						<xsl:with-param select="Title" name="ZoneTitle" />
					</xsl:apply-templates>
				</div>
				<div class="button-wrap" data-aos="fade-left" data-aos-duration="1200"> <a class="btn-1">

						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
						<img src="/Data/Sites/1/media/img/btn-icon.png"></img>
					</a></div>
			</div>
		</div>

	</xsl:template>


	<xsl:template match="News" mode="Zone-News">
		<xsl:param name="ZoneTitle"></xsl:param>

		<div class="box-title">
            <div class="sub-title">
                <xsl:value-of disable-output-escaping="yes" select="$ZoneTitle"></xsl:value-of>
            </div>
			<h2 class="main-title">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</h2>
			

			<a class="btn-1">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:text disable-output-escaping="yes">xem thêm </xsl:text>
				<img src="/Data/Sites/1/media/img/btn-icon.png"></img>
			</a>
		</div>
		<div class="box-content">
			<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
		</div>

	</xsl:template>

</xsl:stylesheet>