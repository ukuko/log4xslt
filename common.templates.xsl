<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format"
   >

<!-- TEMPLATES -->
   <!-- general info -->
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

</xsl:stylesheet>
