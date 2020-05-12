<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <div class="recruitment-detail-wrap"> 
				<div class="container"> 
					<div class="recruitment-detail-inner">
						<div class="recruitment-detail">
							<div class="heading">
								<h2 class="title"><xsl:value-of disable-output-escaping="yes" select="NewsDetail/Title"></xsl:value-of></h2>
								<div>
									<date><xsl:value-of disable-output-escaping="yes" select="NewsDetail/CreatedDate"></xsl:value-of></date>
									<div id="social-share"> </div>
								</div>
							</div>
							<div class="full-content"> 
								<table class="table"> 
                                    <xsl:apply-templates select="/NewsDetail/NewsAttributes" mode="Table"></xsl:apply-templates>
								</table>
								<div class="content"> 
									<xsl:value-of disable-output-escaping="yes" select="NewsDetail/FullContent"></xsl:value-of>
								</div>
								<div class="button-wrap"> <a class="btn-1" id="apply-btn" href="javascript:void(0)" data-fancybox="" data-src="#ungtuyen">Ứng tuyển </a>
                                
                                <a class="btn-1 download" download=''>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="FileUrl"></xsl:value-of>
                                    </xsl:attribute>
                                <xsl:text disable-output-escaping="yes">Tải form ứng tuyển</xsl:text>
                                </a></div>
							</div>
                            <div class="hidden">
                    <div id="ungtuyen">
                        <div class="popup-body">
                            <iframe src="" frameborder="0">
                                <xsl:attribute name='src'>
                                    <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/ApplyUrl'></xsl:value-of>
                                </xsl:attribute>
                            </iframe>
                        </div>
                    </div>
                </div>
						</div>
						<div class="other-recruitment">
							<div class="heading">Vị trí khác</div>
                             <xsl:if test="count(/NewsDetail/NewsOther)>0">
                                <div class="other-recruitment__list"> 
                                    <xsl:apply-templates select="NewsDetail/NewsOther"></xsl:apply-templates>
                                    
                                </div>
                             </xsl:if>
						</div>
					</div>
				</div>
			</div>
    </xsl:template>
    <xsl:template match="NewsAttributes" mode="Table">
        <tr> 
            <td><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></td>
            <td><xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of> </td>
        </tr>
									
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="other-recruitment__item"> 
            <div class="caption"> 
                <date><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></date><a class="title">
                
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a>
            </div>
        </div>
                                    
    </xsl:template>

</xsl:stylesheet>