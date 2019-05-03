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