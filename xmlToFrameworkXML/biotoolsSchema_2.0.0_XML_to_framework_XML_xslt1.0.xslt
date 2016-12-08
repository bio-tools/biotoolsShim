<?xml version="1.0" encoding="UTF-8"?>
<!--
This file was generated by Altova MapForce 2015sp2

YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.

Refer to the Altova MapForce Documentation for further details.
http://www.altova.com/mapforce
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://bio.tools" xmlns:agt="http://www.altova.com/Mapforce/agt" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="ns0 agt xs">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var2_create_version">
		<xsl:param name="var1_current"/>
		<version>
			<xsl:value-of select="string($var1_current)"/>
		</version>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var4_create_versionID">
		<xsl:param name="var3_current"/>
		<versionID>
			<xsl:value-of select="string($var3_current)"/>
		</versionID>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var6_create_doi">
		<xsl:param name="var5_current"/>
		<doi>
			<xsl:value-of select="string($var5_current)"/>
		</doi>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var8_create_shortDescription">
		<xsl:param name="var7_current"/>
		<shortDescription>
			<xsl:value-of select="string($var7_current)"/>
		</shortDescription>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var10_create_uri">
		<xsl:param name="var9_current"/>
		<uri>
			<xsl:value-of select="string($var9_current)"/>
		</uri>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var12_create_term">
		<xsl:param name="var11_current"/>
		<term>
			<xsl:value-of select="string($var11_current)"/>
		</term>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var14_create_listitem">
		<xsl:param name="var13_current"/>
		<list-item>
			<xsl:for-each select="$var13_current/ns0:uri">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var10_create_uri">
					<xsl:with-param name="var9_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var13_current/ns0:term">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var12_create_term">
					<xsl:with-param name="var11_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var16_create_uri">
		<xsl:param name="var15_current"/>
		<uri>
			<xsl:value-of select="string($var15_current)"/>
		</uri>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var18_create_term">
		<xsl:param name="var17_current"/>
		<term>
			<xsl:value-of select="string($var17_current)"/>
		</term>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var20_create_uri">
		<xsl:param name="var19_current"/>
		<uri>
			<xsl:value-of select="string($var19_current)"/>
		</uri>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var22_create_term">
		<xsl:param name="var21_current"/>
		<term>
			<xsl:value-of select="string($var21_current)"/>
		</term>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var24_create_format">
		<xsl:param name="var23_current"/>
		<format>
			<list-item>
				<xsl:for-each select="$var23_current/ns0:uri">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var20_create_uri">
						<xsl:with-param name="var19_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
				<xsl:for-each select="$var23_current/ns0:term">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var22_create_term">
						<xsl:with-param name="var21_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</list-item>
		</format>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var26_create_listitem">
		<xsl:param name="var25_current"/>
		<list-item>
			<data>
				<xsl:for-each select="$var25_current/ns0:data/ns0:uri">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var16_create_uri">
						<xsl:with-param name="var15_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
				<xsl:for-each select="$var25_current/ns0:data/ns0:term">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var18_create_term">
						<xsl:with-param name="var17_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</data>
			<xsl:for-each select="$var25_current/ns0:format">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var24_create_format">
					<xsl:with-param name="var23_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var28_create_uri">
		<xsl:param name="var27_current"/>
		<uri>
			<xsl:value-of select="string($var27_current)"/>
		</uri>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var30_create_term">
		<xsl:param name="var29_current"/>
		<term>
			<xsl:value-of select="string($var29_current)"/>
		</term>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var32_create_uri">
		<xsl:param name="var31_current"/>
		<uri>
			<xsl:value-of select="string($var31_current)"/>
		</uri>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var34_create_term">
		<xsl:param name="var33_current"/>
		<term>
			<xsl:value-of select="string($var33_current)"/>
		</term>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var36_create_format">
		<xsl:param name="var35_current"/>
		<format>
			<list-item>
				<xsl:for-each select="$var35_current/ns0:uri">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var32_create_uri">
						<xsl:with-param name="var31_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
				<xsl:for-each select="$var35_current/ns0:term">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var34_create_term">
						<xsl:with-param name="var33_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</list-item>
		</format>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var38_create_listitem">
		<xsl:param name="var37_current"/>
		<list-item>
			<data>
				<xsl:for-each select="$var37_current/ns0:data/ns0:uri">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var28_create_uri">
						<xsl:with-param name="var27_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
				<xsl:for-each select="$var37_current/ns0:data/ns0:term">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var30_create_term">
						<xsl:with-param name="var29_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</data>
			<xsl:for-each select="$var37_current/ns0:format">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var36_create_format">
					<xsl:with-param name="var35_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var40_create_comment">
		<xsl:param name="var39_current"/>
		<comment>
			<xsl:value-of select="string($var39_current)"/>
		</comment>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var42_create_listitem">
		<xsl:param name="var41_current"/>
		<list-item>
			<operation>
				<xsl:for-each select="$var41_current/ns0:operation">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var14_create_listitem">
						<xsl:with-param name="var13_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</operation>
			<input>
				<xsl:for-each select="$var41_current/ns0:input">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var26_create_listitem">
						<xsl:with-param name="var25_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</input>
			<output>
				<xsl:for-each select="$var41_current/ns0:output">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var38_create_listitem">
						<xsl:with-param name="var37_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</output>
			<xsl:for-each select="$var41_current/ns0:comment">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var40_create_comment">
					<xsl:with-param name="var39_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var44_create_listitem">
		<xsl:param name="var43_current"/>
		<list-item>
			<xsl:value-of select="string($var43_current)"/>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var46_create_uri">
		<xsl:param name="var45_current"/>
		<uri>
			<xsl:value-of select="string($var45_current)"/>
		</uri>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var48_create_term">
		<xsl:param name="var47_current"/>
		<term>
			<xsl:value-of select="string($var47_current)"/>
		</term>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var50_create_listitem">
		<xsl:param name="var49_current"/>
		<list-item>
			<xsl:for-each select="$var49_current/ns0:uri">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var46_create_uri">
					<xsl:with-param name="var45_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var49_current/ns0:term">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var48_create_term">
					<xsl:with-param name="var47_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var52_create_listitem">
		<xsl:param name="var51_current"/>
		<list-item>
			<xsl:value-of select="string($var51_current)"/>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var54_create_listitem">
		<xsl:param name="var53_current"/>
		<list-item>
			<xsl:value-of select="string($var53_current)"/>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var56_create_listitem">
		<xsl:param name="var55_current"/>
		<list-item>
			<xsl:value-of select="string(floor(number(string($var55_current))))"/>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var58_create_listitem">
		<xsl:param name="var57_current"/>
		<list-item>
			<xsl:value-of select="string($var57_current)"/>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var60_create_listitem">
		<xsl:param name="var59_current"/>
		<list-item>
			<xsl:value-of select="string($var59_current)"/>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var62_create_license">
		<xsl:param name="var61_current"/>
		<license>
			<xsl:value-of select="string($var61_current)"/>
		</license>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var64_create_listitem">
		<xsl:param name="var63_current"/>
		<list-item>
			<xsl:value-of select="string($var63_current)"/>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var66_create_maturity">
		<xsl:param name="var65_current"/>
		<maturity>
			<xsl:value-of select="string($var65_current)"/>
		</maturity>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var68_create_cost">
		<xsl:param name="var67_current"/>
		<cost>
			<xsl:value-of select="string($var67_current)"/>
		</cost>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var70_create_listitem">
		<xsl:param name="var69_current"/>
		<list-item>
			<xsl:value-of select="string($var69_current)"/>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var72_create_listitem">
		<xsl:param name="var71_current"/>
		<list-item>
			<biotoolsId>
				<xsl:value-of select="string($var71_current/ns0:biotoolsId)"/>
			</biotoolsId>
			<type>
				<xsl:value-of select="string($var71_current/ns0:type)"/>
			</type>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var74_create_uri">
		<xsl:param name="var73_current"/>
		<uri>
			<xsl:value-of select="string($var73_current)"/>
		</uri>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var76_create_term">
		<xsl:param name="var75_current"/>
		<term>
			<xsl:value-of select="string($var75_current)"/>
		</term>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var78_create_uri">
		<xsl:param name="var77_current"/>
		<uri>
			<xsl:value-of select="string($var77_current)"/>
		</uri>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var80_create_term">
		<xsl:param name="var79_current"/>
		<term>
			<xsl:value-of select="string($var79_current)"/>
		</term>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var82_create_listitem">
		<xsl:param name="var81_current"/>
		<list-item>
			<xsl:for-each select="$var81_current/ns0:uri">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var78_create_uri">
					<xsl:with-param name="var77_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var81_current/ns0:term">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var80_create_term">
					<xsl:with-param name="var79_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var84_create_listitem">
		<xsl:param name="var83_current"/>
		<list-item>
			<data>
				<xsl:for-each select="$var83_current/ns0:data/ns0:uri">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var74_create_uri">
						<xsl:with-param name="var73_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
				<xsl:for-each select="$var83_current/ns0:data/ns0:term">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var76_create_term">
						<xsl:with-param name="var75_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</data>
			<format>
				<xsl:for-each select="$var83_current/ns0:format">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var82_create_listitem">
						<xsl:with-param name="var81_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</format>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var86_create_summary">
		<xsl:param name="var85_current"/>
		<summary>
			<xsl:value-of select="string($var85_current)"/>
		</summary>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var88_create_uri">
		<xsl:param name="var87_current"/>
		<uri>
			<xsl:value-of select="string($var87_current)"/>
		</uri>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var90_create_term">
		<xsl:param name="var89_current"/>
		<term>
			<xsl:value-of select="string($var89_current)"/>
		</term>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var92_create_data">
		<xsl:param name="var91_current"/>
		<data>
			<xsl:for-each select="$var91_current/ns0:uri">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var88_create_uri">
					<xsl:with-param name="var87_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var91_current/ns0:term">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var90_create_term">
					<xsl:with-param name="var89_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</data>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var94_create_comment">
		<xsl:param name="var93_current"/>
		<comment>
			<xsl:value-of select="string($var93_current)"/>
		</comment>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var96_create_listitem">
		<xsl:param name="var95_current"/>
		<list-item>
			<urlTemplateFragment>
				<xsl:value-of select="string($var95_current/ns0:urlTemplateFragment)"/>
			</urlTemplateFragment>
			<xsl:for-each select="$var95_current/ns0:data">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var92_create_data">
					<xsl:with-param name="var91_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var95_current/ns0:comment">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var94_create_comment">
					<xsl:with-param name="var93_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var98_create_listitem">
		<xsl:param name="var97_current"/>
		<list-item>
			<httpMethod>
				<xsl:value-of select="string($var97_current/ns0:httpMethod)"/>
			</httpMethod>
			<urlTemplate>
				<xsl:value-of select="string($var97_current/ns0:urlTemplate)"/>
			</urlTemplate>
			<output>
				<xsl:for-each select="$var97_current/ns0:output">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var84_create_listitem">
						<xsl:with-param name="var83_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</output>
			<xsl:for-each select="$var97_current/ns0:summary">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var86_create_summary">
					<xsl:with-param name="var85_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<parameter>
				<xsl:for-each select="$var97_current/ns0:parameter">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var96_create_listitem">
						<xsl:with-param name="var95_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</parameter>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var100_create_apiSpec">
		<xsl:param name="var99_current"/>
		<apiSpec>
			<baseURL>
				<xsl:value-of select="string($var99_current/ns0:baseURL)"/>
			</baseURL>
			<endpoint>
				<xsl:for-each select="$var99_current/ns0:endpoint">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var98_create_listitem">
						<xsl:with-param name="var97_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</endpoint>
		</apiSpec>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var102_create_comment">
		<xsl:param name="var101_current"/>
		<comment>
			<xsl:value-of select="string($var101_current)"/>
		</comment>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var104_create_listitem">
		<xsl:param name="var103_current"/>
		<list-item>
			<url>
				<xsl:value-of select="string($var103_current/ns0:url)"/>
			</url>
			<type>
				<xsl:value-of select="string($var103_current/ns0:type)"/>
			</type>
			<xsl:for-each select="$var103_current/ns0:comment">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var102_create_comment">
					<xsl:with-param name="var101_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var106_create_comment">
		<xsl:param name="var105_current"/>
		<comment>
			<xsl:value-of select="string($var105_current)"/>
		</comment>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var108_create_diskFormat">
		<xsl:param name="var107_current"/>
		<diskFormat>
			<xsl:value-of select="string($var107_current)"/>
		</diskFormat>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var110_create_containerFormat">
		<xsl:param name="var109_current"/>
		<containerFormat>
			<xsl:value-of select="string($var109_current)"/>
		</containerFormat>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var112_create_cmd">
		<xsl:param name="var111_current"/>
		<cmd>
			<xsl:value-of select="string($var111_current)"/>
		</cmd>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var114_create_listitem">
		<xsl:param name="var113_current"/>
		<list-item>
			<url>
				<xsl:value-of select="string($var113_current/ns0:url)"/>
			</url>
			<type>
				<xsl:value-of select="string($var113_current/ns0:type)"/>
			</type>
			<xsl:for-each select="$var113_current/ns0:comment">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var106_create_comment">
					<xsl:with-param name="var105_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var113_current/ns0:diskFormat">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var108_create_diskFormat">
					<xsl:with-param name="var107_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var113_current/ns0:containerFormat">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var110_create_containerFormat">
					<xsl:with-param name="var109_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var113_current/ns0:cmd">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var112_create_cmd">
					<xsl:with-param name="var111_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var116_create_comment">
		<xsl:param name="var115_current"/>
		<comment>
			<xsl:value-of select="string($var115_current)"/>
		</comment>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var118_create_listitem">
		<xsl:param name="var117_current"/>
		<list-item>
			<url>
				<xsl:value-of select="string($var117_current/ns0:url)"/>
			</url>
			<type>
				<xsl:value-of select="string($var117_current/ns0:type)"/>
			</type>
			<xsl:for-each select="$var117_current/ns0:comment">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var116_create_comment">
					<xsl:with-param name="var115_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var120_create_doi">
		<xsl:param name="var119_current"/>
		<doi>
			<xsl:value-of select="string($var119_current)"/>
		</doi>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var122_create_pmid">
		<xsl:param name="var121_current"/>
		<pmid>
			<xsl:value-of select="string($var121_current)"/>
		</pmid>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var124_create_pmcid">
		<xsl:param name="var123_current"/>
		<pmcid>
			<xsl:value-of select="string($var123_current)"/>
		</pmcid>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var126_create_type">
		<xsl:param name="var125_current"/>
		<type>
			<xsl:value-of select="string($var125_current)"/>
		</type>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var128_create_listitem">
		<xsl:param name="var127_current"/>
		<list-item>
			<xsl:for-each select="$var127_current/ns0:doi">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var120_create_doi">
					<xsl:with-param name="var119_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var127_current/ns0:pmid">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var122_create_pmid">
					<xsl:with-param name="var121_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var127_current/ns0:pmcid">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var124_create_pmcid">
					<xsl:with-param name="var123_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var127_current/ns0:type">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var126_create_type">
					<xsl:with-param name="var125_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var130_create_email">
		<xsl:param name="var129_current"/>
		<email>
			<xsl:value-of select="string($var129_current)"/>
		</email>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var132_create_url">
		<xsl:param name="var131_current"/>
		<url>
			<xsl:value-of select="string($var131_current)"/>
		</url>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var134_create_name">
		<xsl:param name="var133_current"/>
		<name>
			<xsl:value-of select="string($var133_current)"/>
		</name>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var136_create_tel">
		<xsl:param name="var135_current"/>
		<tel>
			<xsl:value-of select="string($var135_current)"/>
		</tel>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var138_create_listitem">
		<xsl:param name="var137_current"/>
		<list-item>
			<xsl:for-each select="$var137_current/ns0:email">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var130_create_email">
					<xsl:with-param name="var129_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var137_current/ns0:url">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var132_create_url">
					<xsl:with-param name="var131_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var137_current/ns0:name">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var134_create_name">
					<xsl:with-param name="var133_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var137_current/ns0:tel">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var136_create_tel">
					<xsl:with-param name="var135_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var140_create_email">
		<xsl:param name="var139_current"/>
		<email>
			<xsl:value-of select="string($var139_current)"/>
		</email>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var142_create_url">
		<xsl:param name="var141_current"/>
		<url>
			<xsl:value-of select="string($var141_current)"/>
		</url>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var144_create_orcidId">
		<xsl:param name="var143_current"/>
		<orcidId>
			<xsl:value-of select="string($var143_current)"/>
		</orcidId>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var146_create_typeEntity">
		<xsl:param name="var145_current"/>
		<typeEntity>
			<xsl:value-of select="string($var145_current)"/>
		</typeEntity>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var148_create_typeRole">
		<xsl:param name="var147_current"/>
		<typeRole>
			<xsl:value-of select="string($var147_current)"/>
		</typeRole>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var150_create_comment">
		<xsl:param name="var149_current"/>
		<comment>
			<xsl:value-of select="string($var149_current)"/>
		</comment>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var152_create_listitem">
		<xsl:param name="var151_current"/>
		<list-item>
			<name>
				<xsl:value-of select="string($var151_current/ns0:name)"/>
			</name>
			<xsl:for-each select="$var151_current/ns0:email">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var140_create_email">
					<xsl:with-param name="var139_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var151_current/ns0:url">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var142_create_url">
					<xsl:with-param name="var141_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var151_current/ns0:orcidId">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var144_create_orcidId">
					<xsl:with-param name="var143_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var151_current/ns0:typeEntity">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var146_create_typeEntity">
					<xsl:with-param name="var145_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var151_current/ns0:typeRole">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var148_create_typeRole">
					<xsl:with-param name="var147_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var151_current/ns0:comment">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var150_create_comment">
					<xsl:with-param name="var149_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</list-item>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var154_create_comment">
		<xsl:param name="var153_current"/>
		<comment>
			<xsl:value-of select="string($var153_current)"/>
		</comment>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var156_create_elixirInfo">
		<xsl:param name="var155_current"/>
		<elixirInfo>
			<lastReviewExternalSab>
				<xsl:value-of select="string($var155_current/ns0:lastReviewExternalSab)"/>
			</lastReviewExternalSab>
			<lastReviewElixirSab>
				<xsl:value-of select="string($var155_current/ns0:lastReviewElixirSab)"/>
			</lastReviewElixirSab>
			<inSDP>
				<xsl:value-of select="string((translate(string($var155_current/ns0:inSDP), '1falseru0 ', 't') = 't'))"/>
			</inSDP>
			<isCoreDataResource>
				<xsl:value-of select="string((translate(string($var155_current/ns0:isCoreDataResource), '1falseru0 ', 't') = 't'))"/>
			</isCoreDataResource>
			<platform>
				<xsl:value-of select="string($var155_current/ns0:platform)"/>
			</platform>
			<node>
				<xsl:value-of select="string($var155_current/ns0:node)"/>
			</node>
			<xsl:for-each select="$var155_current/ns0:comment">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var154_create_comment">
					<xsl:with-param name="var153_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</elixirInfo>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var158_create_root">
		<xsl:param name="var157_current"/>
		<root>
			<name>
				<xsl:value-of select="string($var157_current/ns0:summary/ns0:name)"/>
			</name>
			<id>
				<xsl:value-of select="string($var157_current/ns0:summary/ns0:toolID)"/>
			</id>
			<xsl:for-each select="$var157_current/ns0:summary/ns0:version">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var2_create_version">
					<xsl:with-param name="var1_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var157_current/ns0:summary/ns0:versionID">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var4_create_versionID">
					<xsl:with-param name="var3_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var157_current/ns0:summary/ns0:doi">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var6_create_doi">
					<xsl:with-param name="var5_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var157_current/ns0:summary/ns0:shortDescription">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var8_create_shortDescription">
					<xsl:with-param name="var7_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<description>
				<xsl:value-of select="string($var157_current/ns0:summary/ns0:description)"/>
			</description>
			<homepage>
				<xsl:value-of select="string($var157_current/ns0:summary/ns0:homepage)"/>
			</homepage>
			<function>
				<xsl:for-each select="$var157_current/ns0:function">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var42_create_listitem">
						<xsl:with-param name="var41_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</function>
			<toolType>
				<xsl:for-each select="$var157_current/ns0:labels/ns0:toolType">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var44_create_listitem">
						<xsl:with-param name="var43_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</toolType>
			<topic>
				<xsl:for-each select="$var157_current/ns0:labels/ns0:topic">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var50_create_listitem">
						<xsl:with-param name="var49_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</topic>
			<goTermID>
				<xsl:for-each select="$var157_current/ns0:labels/ns0:goTermID">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var52_create_listitem">
						<xsl:with-param name="var51_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</goTermID>
			<soTermID>
				<xsl:for-each select="$var157_current/ns0:labels/ns0:soTermID">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var54_create_listitem">
						<xsl:with-param name="var53_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</soTermID>
			<taxID>
				<xsl:for-each select="$var157_current/ns0:labels/ns0:taxID">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var56_create_listitem">
						<xsl:with-param name="var55_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</taxID>
			<operatingSystem>
				<xsl:for-each select="$var157_current/ns0:labels/ns0:operatingSystem">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var58_create_listitem">
						<xsl:with-param name="var57_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</operatingSystem>
			<language>
				<xsl:for-each select="$var157_current/ns0:labels/ns0:language">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var60_create_listitem">
						<xsl:with-param name="var59_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</language>
			<xsl:for-each select="$var157_current/ns0:labels/ns0:license">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var62_create_license">
					<xsl:with-param name="var61_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<collectionID>
				<xsl:for-each select="$var157_current/ns0:labels/ns0:collectionID">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var64_create_listitem">
						<xsl:with-param name="var63_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</collectionID>
			<xsl:for-each select="$var157_current/ns0:labels/ns0:maturity">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var66_create_maturity">
					<xsl:with-param name="var65_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="$var157_current/ns0:labels/ns0:cost">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var68_create_cost">
					<xsl:with-param name="var67_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<accessibility>
				<xsl:for-each select="$var157_current/ns0:labels/ns0:accessibility">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var70_create_listitem">
						<xsl:with-param name="var69_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</accessibility>
			<relation>
				<xsl:for-each select="$var157_current/ns0:relation">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var72_create_listitem">
						<xsl:with-param name="var71_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</relation>
			<xsl:for-each select="$var157_current/ns0:apiSpec">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var100_create_apiSpec">
					<xsl:with-param name="var99_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<link>
				<xsl:for-each select="$var157_current/ns0:link">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var104_create_listitem">
						<xsl:with-param name="var103_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</link>
			<download>
				<xsl:for-each select="$var157_current/ns0:download">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var114_create_listitem">
						<xsl:with-param name="var113_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</download>
			<documentation>
				<xsl:for-each select="$var157_current/ns0:documentation">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var118_create_listitem">
						<xsl:with-param name="var117_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</documentation>
			<publication>
				<xsl:for-each select="$var157_current/ns0:publication">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var128_create_listitem">
						<xsl:with-param name="var127_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</publication>
			<contact>
				<xsl:for-each select="$var157_current/ns0:contact">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var138_create_listitem">
						<xsl:with-param name="var137_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</contact>
			<credit>
				<xsl:for-each select="$var157_current/ns0:credit">
					<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var152_create_listitem">
						<xsl:with-param name="var151_current" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</credit>
			<xsl:for-each select="$var157_current/ns0:elixirInfo">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var156_create_elixirInfo">
					<xsl:with-param name="var155_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</root>
	</xsl:template>
	<xsl:template name="agt:MapTobiotools-2_0_0_framework_var160_resultof_map">
		<xsl:param name="var159_current"/>
		<xsl:for-each select="$var159_current/ns0:tool">
			<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var158_create_root">
				<xsl:with-param name="var157_current" select="."/>
			</xsl:call-template>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="/">
		<tools>
			<xsl:attribute name="xsi:noNamespaceSchemaLocation" namespace="http://www.w3.org/2001/XMLSchema-instance">D:/repos/transforms/biotoolsShim/biotools-2.0.0_framework.xsd</xsl:attribute>
			<xsl:for-each select="ns0:tools">
				<xsl:call-template name="agt:MapTobiotools-2_0_0_framework_var160_resultof_map">
					<xsl:with-param name="var159_current" select="."/>
				</xsl:call-template>
			</xsl:for-each>
		</tools>
	</xsl:template>
</xsl:stylesheet>
