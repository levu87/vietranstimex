<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        	<div class="projects-detail main-section">
				<div class="container"> 
					<div class="detail">
						<div class="detail__slider"> 
							<div class="top-wrapper">
								<div class="swiper-container">
									<div class="swiper-wrapper">
										
										<xsl:apply-templates select="NewsDetail/NewsImages" mode="Top"></xsl:apply-templates>
									</div>
								</div>
							</div>
							<div class="thumbs-wrapper">
								<div class="thumbs">
									<div class="swiper-container">
										<div class="swiper-wrapper">
										    <xsl:apply-templates select="NewsDetail/NewsImages" mode="Thumbs"></xsl:apply-templates>	
										</div>
									</div>
								</div>
								<div class="swiper-nav">
									<div class="button-prev"><em class="mdi mdi-chevron-left"></em></div>
									<div class="button-next"><em class="mdi mdi-chevron-right"></em></div>
								</div>
							</div>
						</div>
						<div class="detail__info">
							<h2 class="title"><xsl:value-of disable-output-escaping="yes" select="NewsDetail/Title"></xsl:value-of></h2>
							<div id="social-share"></div>
							<xsl:value-of disable-output-escaping="yes" select="NewsDetail/FullContent"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
			<div class="other-projects main-section">
				<div class="container"> 
                    <h2 class="main-title-dark">Dự án khác</h2>
                    <xsl:if test="count(/NewsDetail/NewsOther) &gt; 0">
                        
					<div class="other-services__slider">
						<div class="swiper-container">
							<div class="swiper-wrapper"> 
                                <xsl:apply-templates select="NewsDetail/NewsOther"></xsl:apply-templates>
							</div>
						</div>
						<div class="swiper-nav">
							<div class="button-prev"><em class="mdi mdi-chevron-left"></em></div>
							<div class="button-next"><em class="mdi mdi-chevron-right"></em></div>
						</div>
					</div>
                    </xsl:if>
				</div>
			</div>
    </xsl:template>
    <xsl:template match="NewsImages" mode="Top">
        <div class="swiper-slide">
            <a class="box-img" data-fancybox="Image">
                <xsl:attribute name="href">
                  <xsl:value-of select="ImageUrl"></xsl:value-of>
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
        </div>
    </xsl:template>
    <xsl:template match="NewsImages" mode="Thumbs">
        <div class="swiper-slide">
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
        </div>
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="swiper-slide"> 
            <div class="items">
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
                    <div class="caption"> 
                        <a class="title">
                    
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
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
        </div>
    </xsl:template>


</xsl:stylesheet>