<xsl:stylesheet version="1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:i="http://www.acmm.sydney.edu.au/schemata/olympusCellR"
    xmlns:dmsutil="http://www.acmm.sydney.edu.au/au.org.intersect.dms.util"
    exclude-result-prefixes="dmsutil">

<xsl:output method="html" encoding="UTF-8"/>
<xsl:variable name="mapping" select="document('olympus_cell_r-mapping.xml')/mapping"/>
<xsl:template match="/">
	<style>

#content-container
{
	padding: 2px 18px 8px 8px; /* top right bottom left */	
}

	</style>
    
<div id="content-container">

<!-- BEGIN CONTENT -->
	<ul>
	<li style="background-color:#333333;color:#ffffff;"><b>Properties: <xsl:value-of select="@name" /></b></li>
	<xsl:for-each select="//i:olympusCellR/i:property">
		<xsl:call-template name="property">
			<xsl:with-param name="property"><xsl:value-of select="node()"/></xsl:with-param>
		</xsl:call-template>
	</xsl:for-each>
	</ul>
</div>
</xsl:template>

<xsl:template name="property">
	<xsl:param name="property" />
    <xsl:variable name="property-name"><xsl:value-of select="@name"/></xsl:variable>
    <xsl:variable name="property-mapping" select="$mapping/property[@xml-field=concat($property-name, '')]"/>
	<ul>
	<li><b><xsl:value-of select="@name" />:</b> 
    <xsl:choose>
        <xsl:when test="$property-mapping/@type = 'date'">
            <xsl:value-of select="dmsutil:DateFormatter.formatXMLDate2EST(@value)"/>
        </xsl:when>
        <xsl:otherwise><xsl:value-of select="@value" /></xsl:otherwise>
    </xsl:choose>
    </li>
	</ul>
</xsl:template>

</xsl:stylesheet>
