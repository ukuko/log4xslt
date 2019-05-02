<?xml version="1.0" encoding="ISO-8859-1"?>
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