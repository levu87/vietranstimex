<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="main-content">
       
        <xsl:if test="position() =1">
				<div class="section about-section" id="section-1"> 
					<div class="container"> 
						<h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
						<xsl:apply-templates select="News" mode="Zone1-News"></xsl:apply-templates>
					</div>
				</div>
        </xsl:if>

        <xsl:if test="position() =2">
            <div class="section tamnhin-section" id="section-2"> 
                <div class="container"> 
                    <div class="content">
                        <xsl:apply-templates select="News" mode="Zone2-News"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </xsl:if>

         <xsl:if test="position() =3">
            <div class="section giatri-section" id="section-3"> 
                <div class="container">
                    <div class="content"> 
                        <div class="content__img"> <img src="/Data/Sites/1/media/img/about-2.png"></img></div>
                        <div class="content__text"> 
                            <h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
                            <div class="list-item"> 
                                <xsl:apply-templates select="News" mode="Zone3-News"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>

        <xsl:if test="position() =4">
            <div class="section history-section" id="section-4"> 
                <div class="container"> 
                    <h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
                    <div class="thumbs-wrapper">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">      
                                <xsl:apply-templates select="News" mode="Zone4-Top"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-btn-next"><em class="lnr lnr-arrow-right"></em></div>
                        <div class="swiper-btn-prev"><em class="lnr lnr-arrow-left"></em></div>
                    </div>
                    <div class="top-wrapper">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="Zone4-Thumbs"></xsl:apply-templates>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>

        <xsl:if test="position() =5">
            <div class="section maps-section" id="section-5"> 
                <div class="container"> 
                    <h2 class="main-title-dark"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
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
            </div>
        </xsl:if>

       <xsl:if test="position() =6">
            <div class="section leadership-section" id="section-6"> 
                <div class="container"> 
                    <h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
                    <ul class="nav-sub"> 
                        <xsl:apply-templates select="Zone" mode="Nav"></xsl:apply-templates>
                    </ul>
                    
                        <xsl:apply-templates select="Zone" mode="Content"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>

        <xsl:if test="position() =7">
            <div class="section policy-section" id="section-7"> 
                <div class="bg"> 
                    <img class="lazyload blur-up">
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </div>
                <h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
                <div class="container"> 
                    <ul class="accordions">
                        <xsl:apply-templates select="News" mode="Zone7-News"></xsl:apply-templates> 
                    </ul>
                </div>
            </div>
        </xsl:if>

         <xsl:if test="position() =8">
            <div class="section customer-section" id="section-8"> 
                <div class="container"> 
                    <h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="/ZoneList/PartnersText"></xsl:value-of></h2>
                    <ul class="nav-sub"> 
                        <xsl:apply-templates select="Zone" mode="Nav2"></xsl:apply-templates>
                    </ul>
                    <div class="slider"> 
                        <xsl:apply-templates select="Zone" mode="Content-2"></xsl:apply-templates>
                       
                    </div>
                </div>
            </div>
        </xsl:if>

       <xsl:if test="position() =9">
            <div class="section last-section" id="section-9"> 
                <div class="container"> 
                    <xsl:apply-templates select="News" mode="Zone9-News"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
         </div>
    </xsl:template>
    <xsl:template match="News" mode="Zone1-News">
            <xsl:if test="position() = 1">
    
                <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
            </xsl:if>
        <xsl:if test="position() = 2">
            <div class="content"> 
                <div class="content__img"> 
                    <img class="lazyload blur-up">
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </div>
                <div class="content__text"> 
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Zone2-News">
        <xsl:if test="position() = 1">
            <h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
			<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
        </xsl:if>
        <xsl:if test="position() = 2">
            <h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
			<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Zone3-News">
        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
    </xsl:template>
    <xsl:template match="News" mode="Zone4-Top">
        <div class="swiper-slide">
            <div class="content">
                <div class="title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Zone4-Thumbs">
        <div class="swiper-slide">
            <div class="content"> 
                <div class="content__img"> 
                    <img class="lazyload blur-up">
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </div>
                <div class="content__text"> 
                    <div class="title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></div>
                    <ul class="list-item"> 
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Content">
        <div class="tab-content" style="display: none">
            <xsl:if test="position() = 1">
        <xsl:attribute name="class">
          <xsl:text>tab-content active</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>tab-content</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="id">
        <xsl:text>tab-</xsl:text>
        <xsl:value-of select="position()"></xsl:value-of>
      </xsl:attribute>
            <div class="list-item">
                <xsl:apply-templates select="News" mode="Zone6-News"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Nav">
        <li class="tab-item">
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text>tab-item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <!-- <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                <xsl:text>tab-item active</xsl:text>
                </xsl:attribute>
            </xsl:if> -->

            <xsl:attribute name="data-tab">
                <xsl:text>tab-</xsl:text>
                <xsl:value-of select="position()"></xsl:value-of>
              </xsl:attribute>
            <a class="tab-link">
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>

                  <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
              </a>
        </li>

    </xsl:template>
    <xsl:template match="News" mode="Zone6-News">
        <div class="item"> 
            <figure>
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
                <figcaption> 
                    <div class="subtitle"><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></div>
                    <div class="title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></div>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Zone7-News">
         <li class="accordion-item">
            <div class="accordion-title"><span><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></span>
                <div class="icon"></div>
            </div>
            <div class="accordion-content">
                <div class="content">
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
                    <p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
                </div>
            </div>
        </li>
    </xsl:template>

    <xsl:template match="Zone" mode="Nav2">
        <li class="tab-item">
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text>tab-item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <!-- <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                <xsl:text>tab-item active</xsl:text>
                </xsl:attribute>
            </xsl:if> -->

            <xsl:attribute name="data-tab">
                <xsl:text>tbl-</xsl:text>
                <xsl:value-of select="position()"></xsl:value-of>
              </xsl:attribute>
            <a class="tab-link">
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>

                  <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
              </a>
        </li>

    </xsl:template>
    <xsl:template match="Zone" mode="Content-2">
        <div class="noidung" style="display: none">
            <xsl:if test="position() = 1">
        <xsl:attribute name="class">
          <xsl:text>noidung active</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>noidung</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="id">
        <xsl:text>tbl-</xsl:text>
        <xsl:value-of select="position()"></xsl:value-of>
      </xsl:attribute>
      <div class="swiper-container"> 
        <div class="swiper-wrapper"> 
            <xsl:apply-templates select="News" mode="Zone8-News"></xsl:apply-templates>
        </div>
    </div>
    <div class="swiper-nav">
        <div class="button-prev"><em class="mdi mdi-chevron-left"></em></div>
        <div class="button-next"><em class="mdi mdi-chevron-right"></em></div>
    </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Zone8-News">
        <div class="swiper-slide"> <a class="box-img">
        
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
         </a></div>
    </xsl:template>
    <xsl:template match="News" mode="Zone9-News">
        <div class="content"> 
                        <div class="content__img"> 
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
                        <div class="content__text"> 
                            <h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
                            <ul class="list-item"> 
                                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                            </ul>
                        </div>
                    </div>
    </xsl:template>
</xsl:stylesheet>