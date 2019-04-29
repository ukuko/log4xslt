# About
This project implements  in pure XSLT 2.0  some of the concepts introduced by Log4j (https://logging.apache.org/log4j/2.x/), a popular Java library for logging.

# Details
If your work with XSLT, then you know there is
<pre>
xsl:message
</pre> 

to output logging information to the console.

But this is limited and there is no more detailed logging mechanisms out of the box

# Features
This library provides in same flavour as Log4j:
* enabling /disabling logging
* set different levels of information
* time stamp


# Installation

* for easiness you can add this project as git submodule of your project and use it from there.
* import log4*.xsl files and (optional) common.variables.xsl using <pre>xsl:import</pre> 

# Configuration
* log4xslt.config.xsl: to configure error LEVEL and message FORMAT
* common.variables.xsl: provide useful string variables (they are being being used in provided example)

# License
MIT License (https://opensource.org/licenses/mit-license.php)
