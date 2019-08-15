# About
This project implements in pure XSLT 2.0  some of the concepts introduced by Log4j (https://logging.apache.org/log4j/2.x/), a popular Java library for logging.

This library provides in same flavour as Log4j:
* enabling /disabling logging
* set different levels of information
* time stamp

## Background
In XSLT there is
<pre>
xsl:message
</pre> 

to output logging information to the console.

But this is limited and there is no more detailed logging mechanisms out of the box

This was the reason what I wrote this.

# License
MIT - See LICENSE

# Installation
For easiness you can add this project as git submodule of your project and use it from there
but you can use any path.

Import log4xslt.config.xsl file (example below using submodule)

    <xsl:import href="log4xslt/log4xslt.config.xsl"/>

Already imported from above file are:
* common.variables.xsl: provides useful string variables
* common.templates.xsl: provides common templates

# Requirements
This was tested with Saxon HE parser (http://saxon.sourceforge.net/)
Any XSLT2.0 compliant parser should produce same output.

# Configuration
## Logger Level
Set a parameter at the beginning of your XSLT with desired level:

<xsl:param name="LOGGER.LEVEL">INFO</xsl:param>

This will have precedence over what is set inside the library (level is ALL)

Possible values (according to log4j.dtd) are:

ALL,TRACE,DEBUG,INFO,WARN,ERROR,FATAL,OFF,NULL

## Parameters
template common.INFO will look for up to 5 parameters (p1.. p5), which can be redefined at your XSLT. 

    <xsl:param name="p1"></xsl:param>
    <xsl:param name="p2"></xsl:param>
    <xsl:param name="p3"></xsl:param>
    <xsl:param name="p4"></xsl:param>
    <xsl:param name="p5"></xsl:param>

## Message Format
if really needed, you can adjust message FORMAT in log4xslt.config.xsl

(this shall be also configurable from outside in future versions)

# Tests 
See inside test subfolder: example.xml and example.xsl files

example.xsl : 
* adjust param LOGGER.LEVEL to different levels to see output.
* adjust params p1.. p5 to see how common.INFO template works
* java -jar <path to xslt processor> -s:example.xml -xsl:example.xsl  -o:example-output.xml

## sample output
output
<pre>
2019-08-15+02:00        09:54:57.309876+02:00   INFO    LOGGER level:INFO
2019-08-15+02:00        09:54:57.309876+02:00   INFO    XSLT version:3.0
2019-08-15+02:00        09:54:57.309876+02:00   INFO    XSLT Processor:Saxonica-HE 9.9.1.1
2019-08-15+02:00        09:54:57.309876+02:00   INFO    param $p1:
2019-08-15+02:00        09:54:57.309876+02:00   INFO    param $p2:
2019-08-15+02:00        09:54:57.309876+02:00   INFO    param $p3:abcd
2019-08-15+02:00        09:54:57.309876+02:00   INFO    param $p4:
2019-08-15+02:00        09:54:57.309876+02:00   INFO    param $p5:
2019-08-15+02:00        09:54:57.309876+02:00   WARN    this is just a copy
2019-08-15+02:00        09:54:57.309876+02:00   ERROR   just to show the level, not error actually
2019-08-15+02:00        09:54:57.309876+02:00   WARN    this is just a copy
2019-08-15+02:00        09:54:57.309876+02:00   WARN    this is just a copy
2019-08-15+02:00        09:54:57.309876+02:00   ERROR   just to show the level, not error actually
2019-08-15+02:00        09:54:57.309876+02:00   WARN    this is just a copy

</pre>