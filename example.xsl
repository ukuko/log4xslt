<!--
MIT License

Copyright (c) 2017 Pablo Kurimoto (pablo.kurimoto@gmail.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">
    <!-- IMPORT -->
    <xsl:import href="log4xslt.config.xsl"/>

    <!-- OUTPUT -->
    <xsl:output
            method="xml"
            encoding="UTF-8"
            indent="yes"/>

    <!-- PARAMETERS -->

    <!-- VARIABLES -->
    <xsl:variable name="aVar"/>

    <xsl:template match="/">
        <xsl:call-template name="common.INFO"/>
        <xsl:apply-templates select="*"/>
    </xsl:template>

    <!--  general copy -->
    <xsl:template match="@*|node()">
        <xsl:call-template name="logger.warn">
            <xsl:with-param name="msg">this is just a copy</xsl:with-param>
        </xsl:call-template>

        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>