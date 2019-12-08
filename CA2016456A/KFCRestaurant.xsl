<?xml version="1.0"?> <!--Using XSL file from https://github.com/mikhail-cct/CA1-In-class-Demo Changes in menu-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
                <table id="menuTable" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">KFC Restaurant Menu</th>
                        </tr>
                        <tr>
                            <th>Select</th> <!-- For  Select  -->
                            <th>Item</th>   <!-- Items -->
                            <th>Price</th>  <!-- Prices -->
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/KFCmenu/section">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="entree"> <!--Select entrees-->
                            <tr id="{position()}">
                                <xsl:attribute name="vegetarian">   <!-- Select Vegeterian Entrees -->
                                    <xsl:value-of select="boolean(./@vegetarian)" />
                                </xsl:attribute>
                                <td align="center">
                                    <input name="item0" type="checkbox" />
                                </td>
                                <td>
                                    <xsl:value-of select="item" />
                                </td>
                                <td align="right">
                                    <xsl:value-of select="price" />
                                </td>
                            </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table><br/>
    </xsl:template>
</xsl:stylesheet>