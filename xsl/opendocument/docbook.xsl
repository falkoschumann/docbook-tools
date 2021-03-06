<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:db="http://docbook.org/ns/docbook" db:version="5.0"
                xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" office:version="1.2"
                office:mimetype="application/vnd.oasis.opendocument.text"
                xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0"
                xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
                xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
                xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0"
                xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0"
                xmlns:xlink="http://www.w3.org/1999/xlink"
                xmlns:dc="http://purl.org/dc/elements/1.1/"
                xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0"
                xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0"
                xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0"
                xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0"
                xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0"
                xmlns:math="http://www.w3.org/1998/Math/MathML"
                xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0"
                xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0"
                xmlns:config="urn:oasis:names:tc:opendocument:xmlns:config:1.0"
                xmlns:ooo="http://openoffice.org/2004/office"
                xmlns:ooow="http://openoffice.org/2004/writer"
                xmlns:oooc="http://openoffice.org/2004/calc"
                xmlns:dom="http://www.w3.org/2001/xml-events"
                xmlns:xforms="http://www.w3.org/2002/xforms"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:rpt="http://openoffice.org/2005/report"
                xmlns:of="urn:oasis:names:tc:opendocument:xmlns:of:1.2"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:grddl="http://www.w3.org/2003/g/data-view#"
                xmlns:officeooo="http://openoffice.org/2009/office"
                xmlns:tableooo="http://openoffice.org/2009/table"
                xmlns:drawooo="http://openoffice.org/2010/draw"
                xmlns:calcext="urn:org:documentfoundation:names:experimental:calc:xmlns:calcext:1.0"
                xmlns:loext="urn:org:documentfoundation:names:experimental:office:xmlns:loext:1.0"
                xmlns:field="urn:openoffice:names:experimental:ooo-ms-interop:xmlns:field:1.0"
                xmlns:formx="urn:openoffice:names:experimental:ooxml-odf-interop:xmlns:form:1.0"
                xmlns:css3t="http://www.w3.org/TR/css3-text/">

    <xsl:include href="../../lib/docbook-xsl/common/l10n.xsl"/>
    <xsl:include href="../../lib/docbook-xsl/common/common.xsl"/>
    <xsl:include href="../../lib/docbook-xsl/common/utility.xsl"/>
    <xsl:include href="../../lib/docbook-xsl/common/labels.xsl"/>
    <xsl:include href="../../lib/docbook-xsl/common/titles.xsl"/>
    <xsl:include href="../../lib/docbook-xsl/common/subtitles.xsl"/>
    <xsl:include href="../../lib/docbook-xsl/common/gentext.xsl"/>
    <xsl:include href="../../lib/docbook-xsl/common/targets.xsl"/>
    <xsl:include href="../../lib/docbook-xsl/common/olink.xsl"/>
    <xsl:include href="../../lib/docbook-xsl/common/pi.xsl"/>

    <xsl:include href="font-face-decls.xsl"/>

    <xsl:template match="db:article|db:book">
        <office:document xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" office:version="1.2"
                         office:mimetype="application/vnd.oasis.opendocument.text"
                         xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0"
                         xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
                         xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
                         xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0"
                         xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0"
                         xmlns:xlink="http://www.w3.org/1999/xlink"
                         xmlns:dc="http://purl.org/dc/elements/1.1/"
                         xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0"
                         xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0"
                         xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0"
                         xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0"
                         xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0"
                         xmlns:math="http://www.w3.org/1998/Math/MathML"
                         xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0"
                         xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0"
                         xmlns:config="urn:oasis:names:tc:opendocument:xmlns:config:1.0"
                         xmlns:ooo="http://openoffice.org/2004/office"
                         xmlns:ooow="http://openoffice.org/2004/writer"
                         xmlns:oooc="http://openoffice.org/2004/calc"
                         xmlns:dom="http://www.w3.org/2001/xml-events"
                         xmlns:xforms="http://www.w3.org/2002/xforms"
                         xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                         xmlns:rpt="http://openoffice.org/2005/report"
                         xmlns:of="urn:oasis:names:tc:opendocument:xmlns:of:1.2"
                         xmlns:xhtml="http://www.w3.org/1999/xhtml"
                         xmlns:grddl="http://www.w3.org/2003/g/data-view#"
                         xmlns:officeooo="http://openoffice.org/2009/office"
                         xmlns:tableooo="http://openoffice.org/2009/table"
                         xmlns:drawooo="http://openoffice.org/2010/draw"
                         xmlns:calcext="urn:org:documentfoundation:names:experimental:calc:xmlns:calcext:1.0"
                         xmlns:loext="urn:org:documentfoundation:names:experimental:office:xmlns:loext:1.0"
                         xmlns:field="urn:openoffice:names:experimental:ooo-ms-interop:xmlns:field:1.0"
                         xmlns:formx="urn:openoffice:names:experimental:ooxml-odf-interop:xmlns:form:1.0"
                         xmlns:css3t="http://www.w3.org/TR/css3-text/">
            <xsl:call-template name="insert-font-declaration"/>
            <office:body>
                <office:text>
                    <text:sequence-decls>
                        <text:sequence-decl text:display-outline-level="0" text:name="Illustration"/>
                        <text:sequence-decl text:display-outline-level="0" text:name="Table"/>
                        <text:sequence-decl text:display-outline-level="0" text:name="Text"/>
                        <text:sequence-decl text:display-outline-level="0" text:name="Drawing"/>
                    </text:sequence-decls>
                    <xsl:apply-templates/>
                </office:text>
            </office:body>
        </office:document>
    </xsl:template>

    <xsl:template match="db:info">
        <text:p text:style-name="Title">
            <xsl:value-of select="db:title"/>
        </text:p>
        <text:p text:style-name="Subtitle">
            <xsl:value-of select="db:subtitle"/>
        </text:p>
    </xsl:template>

    <xsl:template match="db:chapter">
        <text:h text:outline-level="1">
            <xsl:value-of select="db:title"/>
        </text:h>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="db:section">
        <xsl:variable name="depth" select="count(ancestor::db:section)+1"/>
        <text:h text:outline-level="{$depth}">
            <xsl:value-of select="db:title"/>
        </text:h>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="db:para">
        <text:p>
            <xsl:value-of select="."/>
        </text:p>
    </xsl:template>

    <xsl:template match="*" priority="-10">
        <xsl:message>
            <xsl:text>Element </xsl:text>
            <xsl:value-of select="local-name(.)"/>
            <xsl:text> in namespace '</xsl:text>
            <xsl:value-of select="namespace-uri(.)"/>
            <xsl:text>' encountered</xsl:text>
            <xsl:if test="parent::*">
                <xsl:text> in </xsl:text>
                <xsl:value-of select="name(parent::*)"/>
            </xsl:if>
            <xsl:text>, but no template matches.</xsl:text>
        </xsl:message>
    </xsl:template>

    <xsl:template match="db:bridgehead">
        <text:p text:style-name="Heading">
            <xsl:value-of select="."/>
        </text:p>
    </xsl:template>

    <xsl:template match="db:itemizedlist">
        <text:list>
            <xsl:apply-templates/>
        </text:list>
    </xsl:template>

    <xsl:template match="db:listitem">
        <text:list-item>
            <xsl:apply-templates/>
        </text:list-item>
    </xsl:template>

    <xsl:template match="db:informaltable">
        <table:table>
            <xsl:apply-templates/>
        </table:table>
    </xsl:template>

    <xsl:template match="db:tgroup">
        <xsl:variable name="cols" select="db:tgroup"/>
        <table:table-column>
            <xsl:attribute name="table:number-columns-repeated"><xsl:value-of select="@cols"/></xsl:attribute>
        </table:table-column>
         <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="db:thead">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="db:tbody">
        <xsl:apply-templates/>
    </xsl:template>


    <xsl:template match="db:row">
        <table:table-row>
            <xsl:apply-templates/>
        </table:table-row>
    </xsl:template>

    <xsl:template match="db:entry">
        <table:table-cell office:value-type="string">
            <text:p><xsl:value-of select="."/></text:p>
        </table:table-cell>
    </xsl:template>

</xsl:stylesheet>
