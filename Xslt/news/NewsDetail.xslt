<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="news-detail-wrap"> 
				<div class="container"> 
					<div class="news-detail-inner">
						<div class="news-detail">
							<div class="heading">
								<h2 class="title"><xsl:value-of disable-output-escaping="yes" select="NewsDetail/Title"></xsl:value-of></h2>
								<div>
									<date><xsl:value-of disable-output-escaping="yes" select="NewsDetail/CreatedDate"></xsl:value-of></date>
									<div id="social-share"> </div>
								</div>
							</div>
							<div class="full-content"> 
								<xsl:value-of disable-output-escaping="yes" select="NewsDetail/FullContent"></xsl:value-of>
							</div>
						</div>
						<div class="other-news">
              <xsl:if test="count(/NewsDetail/NewsOther) &gt; 0">
                <div class="heading">Tin tức khác</div>
                <div class="other-news__list"> 
                  <xsl:apply-templates select="NewsDetail/NewsOther"></xsl:apply-templates>
                  
                </div>
              </xsl:if>
							
						</div>
					</div>
				</div>
			</div>
  </xsl:template>
  <xsl:template match="NewsOther">
    <div class="other-news__item"> <a class="box-img"> 
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
          <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></a>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>