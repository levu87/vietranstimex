<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <div class="download-section">
				<div class="table-responsive"> 
					<table class="table">
						<thead>
							<tr>
								<th scope="col">STT</th>
								<th class="noidung" scope="col">Tài liệu</th>
								<th scope="col">Ngày đăng tải</th>
								<th scope="col">Tải về</th>
							</tr>
						</thead>
						<tbody> 
							<xsl:apply-templates select="NewsList/News"></xsl:apply-templates>
						</tbody>
					</table>
				</div>
			</div>
    </xsl:template>
    <xsl:template match="News">
        <tr> 
            <td><xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of></td>
            <td class="noidung"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </td>
            <td><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></td>
            <td> <a class="download" download=''>
                                <xsl:attribute name="href">
                                        <xsl:value-of select="FileUrl"></xsl:value-of>
                                    </xsl:attribute>
            <span class="icon-download"></span>
            </a></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>