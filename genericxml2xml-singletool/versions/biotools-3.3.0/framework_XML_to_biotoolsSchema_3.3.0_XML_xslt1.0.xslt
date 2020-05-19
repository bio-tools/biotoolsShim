<?xml version="1.0" encoding="UTF-8"?>
<!--
This file was generated by Altova MapForce 2019r3

YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.

Refer to the Altova MapForce Documentation for further details.
http://www.altova.com/mapforce
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:variable name="var1_initial" select="."/>
		<tools xmlns="biotoolsSchema">
			<xsl:attribute name="xsi:schemaLocation" namespace="http://www.w3.org/2001/XMLSchema-instance">biotoolsSchema file:///E:/repos/GitHub/biotoolsShim/genericxml2xml-singletool/versions/biotools-3.3.0/biotools_3.3.0.xsd</xsl:attribute>
			<xsl:for-each select="*[local-name()='root' and namespace-uri()='']">
				<xsl:variable name="var2_cur" select="."/>
				<tool>
					<name>
						<xsl:value-of select="*[local-name()='name' and namespace-uri()='']"/>
					</name>
					<description>
						<xsl:value-of select="*[local-name()='description' and namespace-uri()='']"/>
					</description>
					<homepage>
						<xsl:value-of select="*[local-name()='homepage' and namespace-uri()='']"/>
					</homepage>
					<xsl:for-each select="*[local-name()='biotoolsID' and namespace-uri()='']">
						<xsl:variable name="var3_cur" select="."/>
						<biotoolsID>
							<xsl:value-of select="."/>
						</biotoolsID>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='biotoolsCURIE' and namespace-uri()='']">
						<xsl:variable name="var4_cur" select="."/>
						<biotoolsCURIE>
							<xsl:value-of select="."/>
						</biotoolsCURIE>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='version' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var5_cur" select="."/>
						<version>
							<xsl:value-of select="."/>
						</version>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='otherID' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var6_cur" select="."/>
						<otherID>
							<value>
								<xsl:value-of select="*[local-name()='value' and namespace-uri()='']"/>
							</value>
							<xsl:for-each select="*[local-name()='type' and namespace-uri()='']">
								<xsl:variable name="var7_cur" select="."/>
								<type>
									<xsl:value-of select="."/>
								</type>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='version' and namespace-uri()='']">
								<xsl:variable name="var8_cur" select="."/>
								<version>
									<xsl:value-of select="."/>
								</version>
							</xsl:for-each>
						</otherID>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='toolType' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var9_cur" select="."/>
						<toolType>
							<xsl:value-of select="."/>
						</toolType>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='topic' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var10_cur" select="."/>
						<topic>
							<xsl:for-each select="*[local-name()='uri' and namespace-uri()='']">
								<xsl:variable name="var11_cur" select="."/>
								<uri>
									<xsl:value-of select="."/>
								</uri>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='term' and namespace-uri()='']">
								<xsl:variable name="var12_cur" select="."/>
								<term>
									<xsl:value-of select="."/>
								</term>
							</xsl:for-each>
						</topic>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='operatingSystem' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var13_cur" select="."/>
						<operatingSystem>
							<xsl:value-of select="."/>
						</operatingSystem>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='language' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var14_cur" select="."/>
						<language>
							<xsl:value-of select="."/>
						</language>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='license' and namespace-uri()='']">
						<xsl:variable name="var15_cur" select="."/>
						<license>
							<xsl:value-of select="."/>
						</license>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='collectionID' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var16_cur" select="."/>
						<collectionID>
							<xsl:value-of select="."/>
						</collectionID>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='maturity' and namespace-uri()='']">
						<xsl:variable name="var17_cur" select="."/>
						<maturity>
							<xsl:value-of select="."/>
						</maturity>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='cost' and namespace-uri()='']">
						<xsl:variable name="var18_cur" select="."/>
						<cost>
							<xsl:value-of select="."/>
						</cost>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='accessibility' and namespace-uri()='']">
						<xsl:variable name="var19_cur" select="."/>
						<accessibility>
							<xsl:value-of select="."/>
						</accessibility>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='elixirPlatform' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var20_cur" select="."/>
						<elixirPlatform>
							<xsl:value-of select="."/>
						</elixirPlatform>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='elixirCommunity' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var21_cur" select="."/>
						<elixirCommunity>
							<xsl:value-of select="."/>
						</elixirCommunity>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='elixirNode' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var22_cur" select="."/>
						<elixirNode>
							<xsl:value-of select="."/>
						</elixirNode>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='function' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var23_cur" select="."/>
						<function>
							<xsl:for-each select="*[local-name()='operation' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
								<xsl:variable name="var24_cur" select="."/>
								<operation>
									<xsl:for-each select="*[local-name()='uri' and namespace-uri()='']">
										<xsl:variable name="var25_cur" select="."/>
										<uri>
											<xsl:value-of select="."/>
										</uri>
									</xsl:for-each>
									<xsl:for-each select="*[local-name()='term' and namespace-uri()='']">
										<xsl:variable name="var26_cur" select="."/>
										<term>
											<xsl:value-of select="."/>
										</term>
									</xsl:for-each>
								</operation>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='input' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
								<xsl:variable name="var27_cur" select="."/>
								<input>
									<data>
										<xsl:for-each select="*[local-name()='data' and namespace-uri()='']/*[local-name()='uri' and namespace-uri()='']">
											<xsl:variable name="var28_cur" select="."/>
											<uri>
												<xsl:value-of select="."/>
											</uri>
										</xsl:for-each>
										<xsl:for-each select="*[local-name()='data' and namespace-uri()='']/*[local-name()='term' and namespace-uri()='']">
											<xsl:variable name="var29_cur" select="."/>
											<term>
												<xsl:value-of select="."/>
											</term>
										</xsl:for-each>
									</data>
									<xsl:for-each select="*[local-name()='format' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
										<xsl:variable name="var30_cur" select="."/>
										<format>
											<xsl:for-each select="*[local-name()='uri' and namespace-uri()='']">
												<xsl:variable name="var31_cur" select="."/>
												<uri>
													<xsl:value-of select="."/>
												</uri>
											</xsl:for-each>
											<xsl:for-each select="*[local-name()='term' and namespace-uri()='']">
												<xsl:variable name="var32_cur" select="."/>
												<term>
													<xsl:value-of select="."/>
												</term>
											</xsl:for-each>
										</format>
									</xsl:for-each>
								</input>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='output' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
								<xsl:variable name="var33_cur" select="."/>
								<output>
									<data>
										<xsl:for-each select="*[local-name()='data' and namespace-uri()='']/*[local-name()='uri' and namespace-uri()='']">
											<xsl:variable name="var34_cur" select="."/>
											<uri>
												<xsl:value-of select="."/>
											</uri>
										</xsl:for-each>
										<xsl:for-each select="*[local-name()='data' and namespace-uri()='']/*[local-name()='term' and namespace-uri()='']">
											<xsl:variable name="var35_cur" select="."/>
											<term>
												<xsl:value-of select="."/>
											</term>
										</xsl:for-each>
									</data>
									<xsl:for-each select="*[local-name()='format' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
										<xsl:variable name="var36_cur" select="."/>
										<format>
											<xsl:for-each select="*[local-name()='uri' and namespace-uri()='']">
												<xsl:variable name="var37_cur" select="."/>
												<uri>
													<xsl:value-of select="."/>
												</uri>
											</xsl:for-each>
											<xsl:for-each select="*[local-name()='term' and namespace-uri()='']">
												<xsl:variable name="var38_cur" select="."/>
												<term>
													<xsl:value-of select="."/>
												</term>
											</xsl:for-each>
										</format>
									</xsl:for-each>
								</output>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='note' and namespace-uri()='']">
								<xsl:variable name="var39_cur" select="."/>
								<note>
									<xsl:value-of select="."/>
								</note>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='cmd' and namespace-uri()='']">
								<xsl:variable name="var40_cur" select="."/>
								<cmd>
									<xsl:value-of select="."/>
								</cmd>
							</xsl:for-each>
						</function>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='link' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var41_cur" select="."/>
						<link>
							<url>
								<xsl:value-of select="*[local-name()='url' and namespace-uri()='']"/>
							</url>
							<xsl:for-each select="*[local-name()='type' and namespace-uri()='']">
								<xsl:variable name="var42_cur" select="."/>
								<type>
									<xsl:value-of select="."/>
								</type>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='note' and namespace-uri()='']">
								<xsl:variable name="var43_cur" select="."/>
								<note>
									<xsl:value-of select="."/>
								</note>
							</xsl:for-each>
						</link>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='download' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var44_cur" select="."/>
						<download>
							<url>
								<xsl:value-of select="*[local-name()='url' and namespace-uri()='']"/>
							</url>
							<type>
								<xsl:value-of select="*[local-name()='type' and namespace-uri()='']"/>
							</type>
							<xsl:for-each select="*[local-name()='note' and namespace-uri()='']">
								<xsl:variable name="var45_cur" select="."/>
								<note>
									<xsl:value-of select="."/>
								</note>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='version' and namespace-uri()='']">
								<xsl:variable name="var46_cur" select="."/>
								<version>
									<xsl:value-of select="."/>
								</version>
							</xsl:for-each>
						</download>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='documentation' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var47_cur" select="."/>
						<documentation>
							<url>
								<xsl:value-of select="*[local-name()='url' and namespace-uri()='']"/>
							</url>
							<xsl:for-each select="*[local-name()='type' and namespace-uri()='']">
								<xsl:variable name="var48_cur" select="."/>
								<type>
									<xsl:value-of select="."/>
								</type>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='note' and namespace-uri()='']">
								<xsl:variable name="var49_cur" select="."/>
								<note>
									<xsl:value-of select="."/>
								</note>
							</xsl:for-each>
						</documentation>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='relation' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var50_cur" select="."/>
						<relation>
							<biotoolsID>
								<xsl:value-of select="*[local-name()='biotoolsID' and namespace-uri()='']"/>
							</biotoolsID>
							<type>
								<xsl:value-of select="*[local-name()='type' and namespace-uri()='']"/>
							</type>
						</relation>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='publication' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var51_cur" select="."/>
						<publication>
							<xsl:for-each select="*[local-name()='doi' and namespace-uri()='']">
								<xsl:variable name="var52_cur" select="."/>
								<doi>
									<xsl:value-of select="."/>
								</doi>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='pmid' and namespace-uri()='']">
								<xsl:variable name="var53_cur" select="."/>
								<pmid>
									<xsl:value-of select="."/>
								</pmid>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='pmcid' and namespace-uri()='']">
								<xsl:variable name="var54_cur" select="."/>
								<pmcid>
									<xsl:value-of select="."/>
								</pmcid>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='type' and namespace-uri()='']">
								<xsl:variable name="var55_cur" select="."/>
								<type>
									<xsl:value-of select="."/>
								</type>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='version' and namespace-uri()='']">
								<xsl:variable name="var56_cur" select="."/>
								<version>
									<xsl:value-of select="."/>
								</version>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='note' and namespace-uri()='']">
								<xsl:variable name="var57_cur" select="."/>
								<note>
									<xsl:value-of select="."/>
								</note>
							</xsl:for-each>
						</publication>
					</xsl:for-each>
					<xsl:for-each select="*[local-name()='credit' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
						<xsl:variable name="var58_cur" select="."/>
						<credit>
							<xsl:for-each select="*[local-name()='name' and namespace-uri()='']">
								<xsl:variable name="var59_cur" select="."/>
								<name>
									<xsl:value-of select="."/>
								</name>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='email' and namespace-uri()='']">
								<xsl:variable name="var60_cur" select="."/>
								<email>
									<xsl:value-of select="."/>
								</email>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='url' and namespace-uri()='']">
								<xsl:variable name="var61_cur" select="."/>
								<url>
									<xsl:value-of select="."/>
								</url>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='orcidid' and namespace-uri()='']">
								<xsl:variable name="var62_cur" select="."/>
								<orcidid>
									<xsl:value-of select="."/>
								</orcidid>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='gridid' and namespace-uri()='']">
								<xsl:variable name="var63_cur" select="."/>
								<gridid>
									<xsl:value-of select="."/>
								</gridid>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='rorid' and namespace-uri()='']">
								<xsl:variable name="var64_cur" select="."/>
								<rorid>
									<xsl:value-of select="."/>
								</rorid>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='fundrefid' and namespace-uri()='']">
								<xsl:variable name="var65_cur" select="."/>
								<fundrefid>
									<xsl:value-of select="."/>
								</fundrefid>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='typeEntity' and namespace-uri()='']">
								<xsl:variable name="var66_cur" select="."/>
								<typeEntity>
									<xsl:value-of select="."/>
								</typeEntity>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='typeRole' and namespace-uri()='']/*[local-name()='list-item' and namespace-uri()='']">
								<xsl:variable name="var67_cur" select="."/>
								<typeRole>
									<xsl:value-of select="."/>
								</typeRole>
							</xsl:for-each>
							<xsl:for-each select="*[local-name()='note' and namespace-uri()='']">
								<xsl:variable name="var68_cur" select="."/>
								<note>
									<xsl:value-of select="."/>
								</note>
							</xsl:for-each>
						</credit>
					</xsl:for-each>
				</tool>
			</xsl:for-each>
		</tools>
	</xsl:template>
</xsl:stylesheet>
