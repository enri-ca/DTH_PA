<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="//tei[starts-with(@*, 'facs|#facs')]">
        <xsl:variable name="attribute_name"><xsl:value-of select="@*(starts-with(@*, 'facs|#facs'))"/></xsl:variable>
        <xsl:variable name="attribute_value"><xsl:value-of select="@*(starts-with(@*, 'facs|#facs'))"/></xsl:variable>
                <xsl:variable name="add_title"><xsl:value-of select="data(tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title)"/></xsl:variable>
        <xsl:variable name="id"><xsl:value-of select="//tei[starts-with(@*, 'facs|#facs')]"/></xsl:variable>
        <xsl:attribute name="{$attribute_name}">
            <xsl:apply-templates select="{$attribute_value} | node()" />
        </xsl:attribute>
    </xsl:template>
</xsl:stylesheet>