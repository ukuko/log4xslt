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

<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
   <xsl:output method="text"
   name="outTXT"
      version="1.0"
      encoding="iso-8859-1"
      indent="yes"
      omit-xml-declaration="yes"
      />
   <!-- VARIABLES -->
<xsl:variable name="_s" select="'&#160;'"/><!--  nbsp -->
<xsl:variable name="_n" select="'&#10;'"/><!--  new line -->
<xsl:variable name="_t" select="'&#x09;'"/><!--  tab -->
<xsl:variable name="_dot" select="'&#183; '"/><!--  dot + space -->
<xsl:variable name="_dp" select="': '"/><!--  : + space -->


</xsl:stylesheet>
