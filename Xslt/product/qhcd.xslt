<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        
                <!-- <h2 class="main-title-dark">
                    <xsl:value-of select="/ProductList/ZoneTitle"></xsl:value-of>
                </h2>
                <div class="sort sort clearfix">
                    <div class="sort__cate">
                        <label for="cate">Danh mục</label>
                        <select id="cate" name="speed">
                            <option>option 1</option>
                            <option>option 2</option>
                            <option>option 3</option>
                        </select>
                    </div>
                    <div class="sort__group">
                        <label for="group">Chuyên mục</label>
                        <select id="group" name="speed">
                            <option>option 1</option>
                            <option>option 2</option>
                            <option>option 3</option>
                        </select>
                    </div>
                    <div class="sort__years">
                        <label for="years">Năm</label>
                        <select id="years" name="speed">
                            <option>1029</option>
                            <option>option 2</option>
                            <option>option 3</option>
                        </select>
                    </div>
                </div> -->

                <div class="table-responsive ajaxresponsewrap">
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
                            <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
                        </tbody>
                    </table>
                </div>
    </xsl:template>
    <xsl:template match="Product">
        <tr>
            <td>
                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
            </td>
            <td class="noidung">
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
            </td>
            <td> <a class="download" download=''>
                    <xsl:attribute name="href">
                        <xsl:value-of select="FileUrl"></xsl:value-of>
                    </xsl:attribute>
                    <span class="icon-download"></span>
                </a>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>