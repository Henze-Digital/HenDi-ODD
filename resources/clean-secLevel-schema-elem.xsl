<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0" xpath-default-namespace="http://purl.oclc.org/dsdl/schematron">
  
  <!-- Identify the affected elements  -->
  <xsl:variable name="elements" as="element()*">
  	<xsl:sequence select="//schema//schema"/>
  </xsl:variable>
  
  <xsl:variable name="element_ln" select="distinct-values($elements/local-name())"/>
  
  <xsl:template match="*[local-name() = $element_ln][. = $elements]">
    <xsl:apply-templates select="node()"/>
  </xsl:template>
  
  <xsl:template match="* | text() | comment() | processing-instruction() | @*">
    <xsl:copy>
      <xsl:apply-templates select="node() | @*"/>
    </xsl:copy>
  </xsl:template>
  
</xsl:stylesheet>