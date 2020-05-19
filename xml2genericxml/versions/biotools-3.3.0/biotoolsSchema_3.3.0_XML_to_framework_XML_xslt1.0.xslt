<?xml version="1.0" encoding="UTF-8"?>
<!--
This file was generated by Altova MapForce 2019r3

YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.

Refer to the Altova MapForce Documentation for further details.
http://www.altova.com/mapforce
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="biotoolsSchema" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="ns0 xs">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:variable name="var1_initial" select="."/>
		<root>
			<xsl:attribute name="xsi:noNamespaceSchemaLocation" namespace="http://www.w3.org/2001/XMLSchema-instance">file:///E:/repos/GitHub/biotoolsShim/genericxml2xml/versions/biotools-3.3.0/biotools-3.3.0_framework.xsd</xsl:attribute>
			<list>
				<xsl:for-each select="ns0:tools/ns0:tool">
					<xsl:variable name="var2_cur" select="."/>
					<list-item>
						<name>
							<xsl:value-of select="ns0:name"/>
						</name>
						<description>
							<xsl:value-of select="ns0:description"/>
						</description>
						<homepage>
							<xsl:value-of select="ns0:homepage"/>
						</homepage>
						<xsl:for-each select="ns0:biotoolsID">
							<xsl:variable name="var3_cur" select="."/>
							<biotoolsID>
								<xsl:value-of select="."/>
							</biotoolsID>
						</xsl:for-each>
						<xsl:for-each select="ns0:biotoolsCURIE">
							<xsl:variable name="var4_cur" select="."/>
							<biotoolsCURIE>
								<xsl:value-of select="."/>
							</biotoolsCURIE>
						</xsl:for-each>
						<version>
							<xsl:for-each select="ns0:version">
								<xsl:variable name="var5_cur" select="."/>
								<list-item>
									<xsl:value-of select="."/>
								</list-item>
							</xsl:for-each>
						</version>
						<otherID>
							<xsl:for-each select="ns0:otherID">
								<xsl:variable name="var6_cur" select="."/>
								<list-item>
									<value>
										<xsl:value-of select="ns0:value"/>
									</value>
									<xsl:for-each select="ns0:type">
										<xsl:variable name="var7_cur" select="."/>
										<type>
											<xsl:value-of select="."/>
										</type>
									</xsl:for-each>
									<xsl:for-each select="ns0:version">
										<xsl:variable name="var8_cur" select="."/>
										<version>
											<xsl:value-of select="."/>
										</version>
									</xsl:for-each>
								</list-item>
							</xsl:for-each>
						</otherID>
						<function>
							<xsl:for-each select="ns0:function">
								<xsl:variable name="var9_cur" select="."/>
								<list-item>
									<operation>
										<xsl:for-each select="ns0:operation">
											<xsl:variable name="var10_cur" select="."/>
											<list-item>
												<xsl:for-each select="ns0:uri">
													<xsl:variable name="var11_cur" select="."/>
													<uri>
														<xsl:value-of select="."/>
													</uri>
												</xsl:for-each>
												<xsl:for-each select="ns0:term">
													<xsl:variable name="var12_cur" select="."/>
													<term>
														<xsl:value-of select="."/>
													</term>
												</xsl:for-each>
											</list-item>
										</xsl:for-each>
									</operation>
									<input>
										<xsl:for-each select="ns0:input">
											<xsl:variable name="var13_cur" select="."/>
											<list-item>
												<data>
													<xsl:for-each select="ns0:data/ns0:uri">
														<xsl:variable name="var14_cur" select="."/>
														<uri>
															<xsl:value-of select="."/>
														</uri>
													</xsl:for-each>
													<xsl:for-each select="ns0:data/ns0:term">
														<xsl:variable name="var15_cur" select="."/>
														<term>
															<xsl:value-of select="."/>
														</term>
													</xsl:for-each>
												</data>
												<format>
													<xsl:for-each select="ns0:format">
														<xsl:variable name="var16_cur" select="."/>
														<list-item>
															<xsl:for-each select="ns0:uri">
																<xsl:variable name="var17_cur" select="."/>
																<uri>
																	<xsl:value-of select="."/>
																</uri>
															</xsl:for-each>
															<xsl:for-each select="ns0:term">
																<xsl:variable name="var18_cur" select="."/>
																<term>
																	<xsl:value-of select="."/>
																</term>
															</xsl:for-each>
														</list-item>
													</xsl:for-each>
												</format>
											</list-item>
										</xsl:for-each>
									</input>
									<output>
										<xsl:for-each select="ns0:output">
											<xsl:variable name="var19_cur" select="."/>
											<list-item>
												<data>
													<xsl:for-each select="ns0:data/ns0:uri">
														<xsl:variable name="var20_cur" select="."/>
														<uri>
															<xsl:value-of select="."/>
														</uri>
													</xsl:for-each>
													<xsl:for-each select="ns0:data/ns0:term">
														<xsl:variable name="var21_cur" select="."/>
														<term>
															<xsl:value-of select="."/>
														</term>
													</xsl:for-each>
												</data>
												<format>
													<xsl:for-each select="ns0:format">
														<xsl:variable name="var22_cur" select="."/>
														<list-item>
															<xsl:for-each select="ns0:uri">
																<xsl:variable name="var23_cur" select="."/>
																<uri>
																	<xsl:value-of select="."/>
																</uri>
															</xsl:for-each>
															<xsl:for-each select="ns0:term">
																<xsl:variable name="var24_cur" select="."/>
																<term>
																	<xsl:value-of select="."/>
																</term>
															</xsl:for-each>
														</list-item>
													</xsl:for-each>
												</format>
											</list-item>
										</xsl:for-each>
									</output>
									<xsl:for-each select="ns0:note">
										<xsl:variable name="var25_cur" select="."/>
										<note>
											<xsl:value-of select="."/>
										</note>
									</xsl:for-each>
									<xsl:for-each select="ns0:cmd">
										<xsl:variable name="var26_cur" select="."/>
										<cmd>
											<xsl:value-of select="."/>
										</cmd>
									</xsl:for-each>
								</list-item>
							</xsl:for-each>
						</function>
						<toolType>
							<xsl:for-each select="ns0:toolType">
								<xsl:variable name="var27_cur" select="."/>
								<list-item>
									<xsl:value-of select="."/>
								</list-item>
							</xsl:for-each>
						</toolType>
						<topic>
							<xsl:for-each select="ns0:topic">
								<xsl:variable name="var28_cur" select="."/>
								<list-item>
									<xsl:for-each select="ns0:uri">
										<xsl:variable name="var29_cur" select="."/>
										<uri>
											<xsl:value-of select="."/>
										</uri>
									</xsl:for-each>
									<xsl:for-each select="ns0:term">
										<xsl:variable name="var30_cur" select="."/>
										<term>
											<xsl:value-of select="."/>
										</term>
									</xsl:for-each>
								</list-item>
							</xsl:for-each>
						</topic>
						<operatingSystem>
							<xsl:for-each select="ns0:operatingSystem">
								<xsl:variable name="var31_cur" select="."/>
								<list-item>
									<xsl:value-of select="."/>
								</list-item>
							</xsl:for-each>
						</operatingSystem>
						<language>
							<xsl:for-each select="ns0:language">
								<xsl:variable name="var32_cur" select="."/>
								<list-item>
									<xsl:value-of select="."/>
								</list-item>
							</xsl:for-each>
						</language>
						<xsl:for-each select="ns0:license">
							<xsl:variable name="var33_cur" select="."/>
							<license>
								<xsl:value-of select="."/>
							</license>
						</xsl:for-each>
						<collectionID>
							<xsl:for-each select="ns0:collectionID">
								<xsl:variable name="var34_cur" select="."/>
								<list-item>
									<xsl:value-of select="."/>
								</list-item>
							</xsl:for-each>
						</collectionID>
						<xsl:for-each select="ns0:maturity">
							<xsl:variable name="var35_cur" select="."/>
							<maturity>
								<xsl:value-of select="."/>
							</maturity>
						</xsl:for-each>
						<xsl:for-each select="ns0:cost">
							<xsl:variable name="var36_cur" select="."/>
							<cost>
								<xsl:value-of select="."/>
							</cost>
						</xsl:for-each>
						<xsl:for-each select="ns0:accessibility">
							<xsl:variable name="var37_cur" select="."/>
							<accessibility>
								<xsl:value-of select="."/>
							</accessibility>
						</xsl:for-each>
						<elixirPlatform>
							<xsl:for-each select="ns0:elixirPlatform">
								<xsl:variable name="var38_cur" select="."/>
								<list-item>
									<xsl:value-of select="."/>
								</list-item>
							</xsl:for-each>
						</elixirPlatform>
						<elixirCommunity>
							<xsl:for-each select="ns0:elixirCommunity">
								<xsl:variable name="var39_cur" select="."/>
								<list-item>
									<xsl:value-of select="."/>
								</list-item>
							</xsl:for-each>
						</elixirCommunity>
						<elixirNode>
							<xsl:for-each select="ns0:elixirNode">
								<xsl:variable name="var40_cur" select="."/>
								<list-item>
									<xsl:value-of select="."/>
								</list-item>
							</xsl:for-each>
						</elixirNode>
						<link>
							<xsl:for-each select="ns0:link">
								<xsl:variable name="var41_cur" select="."/>
								<list-item>
									<url>
										<xsl:value-of select="ns0:url"/>
									</url>
									<xsl:for-each select="ns0:type">
										<xsl:variable name="var42_cur" select="."/>
										<type>
											<xsl:value-of select="."/>
										</type>
									</xsl:for-each>
									<xsl:for-each select="ns0:note">
										<xsl:variable name="var43_cur" select="."/>
										<note>
											<xsl:value-of select="."/>
										</note>
									</xsl:for-each>
								</list-item>
							</xsl:for-each>
						</link>
						<download>
							<xsl:for-each select="ns0:download">
								<xsl:variable name="var44_cur" select="."/>
								<list-item>
									<url>
										<xsl:value-of select="ns0:url"/>
									</url>
									<type>
										<xsl:value-of select="ns0:type"/>
									</type>
									<xsl:for-each select="ns0:note">
										<xsl:variable name="var45_cur" select="."/>
										<note>
											<xsl:value-of select="."/>
										</note>
									</xsl:for-each>
									<xsl:for-each select="ns0:version">
										<xsl:variable name="var46_cur" select="."/>
										<version>
											<xsl:value-of select="."/>
										</version>
									</xsl:for-each>
								</list-item>
							</xsl:for-each>
						</download>
						<documentation>
							<xsl:for-each select="ns0:documentation">
								<xsl:variable name="var47_cur" select="."/>
								<list-item>
									<url>
										<xsl:value-of select="ns0:url"/>
									</url>
									<xsl:for-each select="ns0:type">
										<xsl:variable name="var48_cur" select="."/>
										<type>
											<xsl:value-of select="."/>
										</type>
									</xsl:for-each>
									<xsl:for-each select="ns0:note">
										<xsl:variable name="var49_cur" select="."/>
										<note>
											<xsl:value-of select="."/>
										</note>
									</xsl:for-each>
								</list-item>
							</xsl:for-each>
						</documentation>
						<relation>
							<xsl:for-each select="ns0:relation">
								<xsl:variable name="var50_cur" select="."/>
								<list-item>
									<biotoolsID>
										<xsl:value-of select="ns0:biotoolsID"/>
									</biotoolsID>
									<type>
										<xsl:value-of select="ns0:type"/>
									</type>
								</list-item>
							</xsl:for-each>
						</relation>
						<publication>
							<xsl:for-each select="ns0:publication">
								<xsl:variable name="var51_cur" select="."/>
								<list-item>
									<xsl:for-each select="ns0:doi">
										<xsl:variable name="var52_cur" select="."/>
										<doi>
											<xsl:value-of select="."/>
										</doi>
									</xsl:for-each>
									<xsl:for-each select="ns0:pmid">
										<xsl:variable name="var53_cur" select="."/>
										<pmid>
											<xsl:value-of select="."/>
										</pmid>
									</xsl:for-each>
									<xsl:for-each select="ns0:pmcid">
										<xsl:variable name="var54_cur" select="."/>
										<pmcid>
											<xsl:value-of select="."/>
										</pmcid>
									</xsl:for-each>
									<xsl:for-each select="ns0:type">
										<xsl:variable name="var55_cur" select="."/>
										<type>
											<xsl:value-of select="."/>
										</type>
									</xsl:for-each>
									<xsl:for-each select="ns0:version">
										<xsl:variable name="var56_cur" select="."/>
										<version>
											<xsl:value-of select="."/>
										</version>
									</xsl:for-each>
									<xsl:for-each select="ns0:note">
										<xsl:variable name="var57_cur" select="."/>
										<note>
											<xsl:value-of select="."/>
										</note>
									</xsl:for-each>
								</list-item>
							</xsl:for-each>
						</publication>
						<credit>
							<xsl:for-each select="ns0:credit">
								<xsl:variable name="var58_cur" select="."/>
								<list-item>
									<xsl:for-each select="ns0:name">
										<xsl:variable name="var59_cur" select="."/>
										<name>
											<xsl:value-of select="."/>
										</name>
									</xsl:for-each>
									<xsl:for-each select="ns0:email">
										<xsl:variable name="var60_cur" select="."/>
										<email>
											<xsl:value-of select="."/>
										</email>
									</xsl:for-each>
									<xsl:for-each select="ns0:url">
										<xsl:variable name="var61_cur" select="."/>
										<url>
											<xsl:value-of select="."/>
										</url>
									</xsl:for-each>
									<xsl:for-each select="ns0:orcidid">
										<xsl:variable name="var62_cur" select="."/>
										<orcidid>
											<xsl:value-of select="."/>
										</orcidid>
									</xsl:for-each>
									<xsl:for-each select="ns0:gridid">
										<xsl:variable name="var63_cur" select="."/>
										<gridid>
											<xsl:value-of select="."/>
										</gridid>
									</xsl:for-each>
									<xsl:for-each select="ns0:rorid">
										<xsl:variable name="var64_cur" select="."/>
										<rorid>
											<xsl:value-of select="."/>
										</rorid>
									</xsl:for-each>
									<xsl:for-each select="ns0:fundrefid">
										<xsl:variable name="var65_cur" select="."/>
										<fundrefid>
											<xsl:value-of select="."/>
										</fundrefid>
									</xsl:for-each>
									<xsl:for-each select="ns0:typeEntity">
										<xsl:variable name="var66_cur" select="."/>
										<typeEntity>
											<xsl:value-of select="."/>
										</typeEntity>
									</xsl:for-each>
									<typeRole>
										<xsl:for-each select="ns0:typeRole">
											<xsl:variable name="var67_cur" select="."/>
											<list-item>
												<xsl:value-of select="."/>
											</list-item>
										</xsl:for-each>
									</typeRole>
									<xsl:for-each select="ns0:note">
										<xsl:variable name="var68_cur" select="."/>
										<note>
											<xsl:value-of select="."/>
										</note>
									</xsl:for-each>
								</list-item>
							</xsl:for-each>
						</credit>
					</list-item>
				</xsl:for-each>
			</list>
		</root>
	</xsl:template>
</xsl:stylesheet>
