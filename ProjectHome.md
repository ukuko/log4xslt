In XSLT there is
<pre><xsl:message></pre> to output logging information to the console, but this is limited and there is no direct way for more detailed logging mechanisms, like enabling /disabling it, set different levels of information and time stamp.

This project implements in pure XSLT 2.0 some of the concepts introduced by log4j, a popular Java library for logging.

To use it, import <pre>log4*.xsl</pre> files in own template using <pre><xsl:import></pre>. configure error LEVEL and message FORMAT in log4xslt.config.xsl.

Additionally, common.variables.xsl can be also imported to provide useful string variables (this is being used in current example)