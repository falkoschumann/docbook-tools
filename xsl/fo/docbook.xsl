<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:import href="../../lib/docbook-xsl/fo/docbook.xsl"/>

    <!-- Paper -->
    <xsl:param name="paper.type" select="'A4'"/>

    <!-- Sidebar -->
    <!-- float is not yet supported by Apache FOP
    <xsl:param name="sidebar.float.type">end</xsl:param>
    <xsl:param name="sidebar.float.width">1in</xsl:param>
    -->

</xsl:stylesheet>
