<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">
    <!-- IMPORT -->
    <xsl:import href="log4xslt.config.xsl"/>

    <!-- OUTPUT -->
    <!-- cdata-section-elements="entry" -->
    <xsl:output method="xml" indent="yes" encoding="utf-8"/>


    <!-- PARAMETERS -->

    <!-- VARIABLES -->
    <xsl:variable name="aVar"/>

    <xsl:template match="/">
        <xsl:call-template name="common.INFO" />
    <xsl:apply-templates select="*"/>
   </xsl:template>

    <!--  general copy -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>