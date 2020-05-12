<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <h2 class="main-title-dark style-2"><xsl:value-of disable-output-escaping="yes" select="NewsList/ModuleTitle"></xsl:value-of></h2>
					<div class="table-responsive"> 
						<table class="table">
							<thead>
								<tr>
									<th scope="col">STT</th>
									<th class="noidung" scope="col">Vị trí ứng tuyển</th>
									<th scope="col">Số lượng </th>
									<th scope="col">Khu Vực </th>
									<th scope="col">Thời hạn</th>
								</tr>
							</thead>
							<tbody> 
								<xsl:apply-templates select="NewsList/News"></xsl:apply-templates>
							</tbody>
						</table>
					</div>
    </xsl:template>
    <xsl:template match="News">
        <tr> 
            <td><xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of></td>
            <td class="noidung">
            <a>
            <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </a>
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </td>
            <td><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></td>
            <td> <xsl:value-of disable-output-escaping="yes" select="FileUrl"></xsl:value-of> </td>
            <td>  <xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>