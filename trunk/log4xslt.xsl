<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
   <!-- OUTPUT -->
   <!-- EXTERNAL PARAMETERS -->
   <xsl:param name="LOGGER.LEVEL">OFF</xsl:param>
   <!-- VARIABLES -->
   <xsl:variable name="LOGGER.LEVEL.LABEL"
      select="'ALL','TRACE','DEBUG','INFO','WARN','ERROR','FATAL','OFF','NULL'" />
      <!--     1     2        3        4     5     6        7        8     9 -->

   <!-- DEPENDANT VARIABLES -->
   <!--  this is not so elegant, but have so far no way to do it better -->
   <xsl:variable name="LOGGER.LEVEL.NR">
   <xsl:choose>
   <xsl:when test="$LOGGER.LEVEL = $LOGGER.LEVEL.LABEL[1]">1</xsl:when>
   <xsl:when test="$LOGGER.LEVEL = $LOGGER.LEVEL.LABEL[2]">2</xsl:when>
   <xsl:when test="$LOGGER.LEVEL = $LOGGER.LEVEL.LABEL[3]">3</xsl:when>
   <xsl:when test="$LOGGER.LEVEL = $LOGGER.LEVEL.LABEL[4]">4</xsl:when>
   <xsl:when test="$LOGGER.LEVEL = $LOGGER.LEVEL.LABEL[5]">5</xsl:when>
   <xsl:when test="$LOGGER.LEVEL = $LOGGER.LEVEL.LABEL[6]">6</xsl:when>
   <xsl:when test="$LOGGER.LEVEL = $LOGGER.LEVEL.LABEL[7]">7</xsl:when>
   <xsl:when test="$LOGGER.LEVEL = $LOGGER.LEVEL.LABEL[8]">8</xsl:when>
   <!-- NULL is same as OFF for practical purposes -->
   <xsl:when test="$LOGGER.LEVEL = $LOGGER.LEVEL.LABEL[9]">8</xsl:when>
   <xsl:otherwise>8</xsl:otherwise>
   </xsl:choose>

</xsl:variable>

<!--  TODO: the output format can be adjusted in config file -->
   
   <!-- TEMPLATES -->
   <xsl:template name="logger.all">
      <xsl:param name="msg" />
      <xsl:param name="position">1</xsl:param>
      <xsl:call-template name="Tlogger">
         <xsl:with-param name="position" select="$position"/>
         <xsl:with-param name="msg" select="$msg" />
      </xsl:call-template>
   </xsl:template>

   <xsl:template name="logger.trace">
      <xsl:param name="msg" />
      <xsl:param name="position">2</xsl:param>
      <xsl:call-template name="Tlogger">
         <xsl:with-param name="position" select="$position"/>
         <xsl:with-param name="msg" select="$msg" />
      </xsl:call-template>
   </xsl:template>

   <xsl:template name="logger.debug">
      <xsl:param name="msg" />
      <xsl:param name="position">3</xsl:param>
      <xsl:call-template name="Tlogger">
         <xsl:with-param name="position" select="$position"/>
         <xsl:with-param name="msg" select="$msg" />
      </xsl:call-template>
   </xsl:template>

   <xsl:template name="logger.info">
      <xsl:param name="msg" />
      <xsl:param name="position">4</xsl:param>
      <xsl:call-template name="Tlogger">
         <xsl:with-param name="position" select="$position"/>
         <xsl:with-param name="msg" select="$msg" />
      </xsl:call-template>
   </xsl:template>
   
   <xsl:template name="logger.warn">
      <xsl:param name="msg" />
      <xsl:param name="position">5</xsl:param>
      <xsl:call-template name="Tlogger">
         <xsl:with-param name="position" select="$position"/>
         <xsl:with-param name="msg" select="$msg" />
      </xsl:call-template>
   </xsl:template>
   
   <xsl:template name="logger.error">
      <xsl:param name="msg" />
      <xsl:param name="position">6</xsl:param>
      <xsl:call-template name="Tlogger">
         <xsl:with-param name="position" select="$position"/>
         <xsl:with-param name="msg" select="$msg" />
      </xsl:call-template>
   </xsl:template>

   <xsl:template name="logger.fatal">
      <xsl:param name="msg" />
      <xsl:param name="position">7</xsl:param>
      <xsl:call-template name="Tlogger">
         <xsl:with-param name="position" select="$position"/>
         <xsl:with-param name="msg" select="$msg" />
      </xsl:call-template>
   </xsl:template>

</xsl:stylesheet>