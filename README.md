# About
This project implements  in pure XSLT 2.0  some of the concepts introduced by log4j (https://logging.apache.org/log4j/2.x/), a popular Java library for logging.

# Details
In XSLT there is
<pre>
xsl:message
</pre> 

to output logging information to the console, but this is limited and there is no direct way for more detailed logging mechanisms, like enabling /disabling it, set different levels of information and time stamp.

# Usage
* import log4*.xsl files in own template using <pre>xsl:import</pre>
* log4xslt.config.xsl: to configure error LEVEL and message FORMAT
* (optional) common.variables.xsl: this can be also imported to provide useful string variables (this is being used in current example)
