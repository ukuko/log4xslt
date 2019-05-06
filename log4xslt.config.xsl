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

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0"
>
    <!-- IMPORT -->
    <xsl:import href="log4xslt.xsl"/>
    <xsl:import href="common.templates.xsl"/>
    <xsl:import href="common.variables.xsl"/>

    <xsl:param name="LOGGER.LEVEL">ALL</xsl:param>
    <!-- possible values (according to log4j.dtd)
           ALL,TRACE,DEBUG,INFO,WARN,ERROR,FATAL,OFF,NULL
           -->

    <!-- general TEMPLATE -->
    <xsl:template name="Tlogger">
        <xsl:param name="msg"/>
        <xsl:param name="position"/> <!-- internal variable -->
        <xsl:variable name="label" select="$LOGGER.LEVEL.LABEL[number($position)]"/>

        <xsl:if test="($position &lt; 8) and ($position >= $LOGGER.LEVEL.NR)">

            <!-- TODO: adjust layout format
            it is possible to use any xslt intrinsic functions,
            known variables at time of running,
            and the message (msg) itself
            -->
            <xsl:variable name="layout" select="concat(current-date(),$_t,current-time(),$_t, $label,$_t, $msg)"/>

            <!-- output, no need to modify -->
            <xsl:message>
                <xsl:value-of select="$layout"/>
            </xsl:message>

        </xsl:if>
    </xsl:template>


</xsl:stylesheet>