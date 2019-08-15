<?xml version="1.0" encoding="ISO-8859-1"?>
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

<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
    <!-- defined by default -->
    <xsl:param name="p1"></xsl:param>
    <xsl:param name="p2"></xsl:param>
    <xsl:param name="p3"></xsl:param>
    <xsl:param name="p4"></xsl:param>
    <xsl:param name="p5"></xsl:param>

    <!-- this is not standalone
    it depends from common.variables.xsl
    -->
<!-- TEMPLATES -->
    <!-- general info -->
    <!-- following parameters need too be defined in xsl -->

    <xsl:template name="common.INFO">
        <xsl:call-template name="logger.info">
            <xsl:with-param name="msg">LOGGER level:<xsl:value-of select="$LOGGER.LEVEL" />
            </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="logger.info">
            <xsl:with-param name="msg">XSLT version:<xsl:value-of select="system-property('xsl:version')" />
            </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="logger.info">
            <xsl:with-param name="msg">XSLT Processor:<xsl:value-of select="concat(system-property('xsl:vendor'),'-',system-property('xsl:product-version'))" />
            </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="logger.info">
            <xsl:with-param name="msg">param $p1:<xsl:value-of select="$p1" />
            </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="logger.info">
            <xsl:with-param name="msg">param $p2:<xsl:value-of select="$p2" />
            </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="logger.info">
            <xsl:with-param name="msg">param $p3:<xsl:value-of select="$p3" />
            </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="logger.info">
            <xsl:with-param name="msg">param $p4:<xsl:value-of select="$p4" />
            </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="logger.info">
            <xsl:with-param name="msg">param $p5:<xsl:value-of select="$p5" />
            </xsl:with-param>
        </xsl:call-template>
        <!--
        this is only for centralized VCS
        -->
        <!--
        <xsl:call-template name="logger.info">
            <xsl:with-param name="msg"><xsl:value-of select="$CM_REVISION" />
            </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="logger.info">
            <xsl:with-param name="msg"><xsl:value-of select="$CM_CHECKPOINT" />
            </xsl:with-param>
        </xsl:call-template>
-->
    </xsl:template>

    <!-- to output new lines in html-->
    <xsl:template name="common.HTML.NewLines">
        <xsl:param name="node"/>
        <xsl:for-each select="tokenize($node, $_n)">
            <xsl:value-of select="."/>
            <xsl:if test="position() != last()">
                <br/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
