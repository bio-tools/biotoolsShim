<?xml version="1.0" encoding="UTF-8"?>
<!--
This file was generated by Altova MapForce 2015sp2

YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.

Refer to the Altova MapForce Documentation for further details.
http://www.altova.com/mapforce
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://bio.tools" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" exclude-result-prefixes="ns0 xs fn">
	<xsl:output method="xml" encoding="UTF-8" byte-order-mark="no" indent="yes"/>
	<xsl:template match="/">
		<tools>
			<xsl:attribute name="xsi:noNamespaceSchemaLocation" namespace="http://www.w3.org/2001/XMLSchema-instance" select="'D:/repos/transforms/biotoolsShim/biotools-2.0.0_framework.xsd'"/>
			<xsl:for-each select="ns0:tools/ns0:tool">
				<root>
					<name>
						<xsl:sequence select="fn:string(ns0:summary/ns0:name)"/>
					</name>
					<id>
						<xsl:sequence select="xs:string(xs:anyURI(fn:string(ns0:summary/ns0:toolID)))"/>
					</id>
					<xsl:for-each select="ns0:summary/ns0:version">
						<version>
							<xsl:sequence select="fn:string(.)"/>
						</version>
					</xsl:for-each>
					<xsl:for-each select="ns0:summary/ns0:versionID">
						<versionID>
							<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
						</versionID>
					</xsl:for-each>
					<xsl:for-each select="ns0:summary/ns0:doi">
						<doi>
							<xsl:sequence select="fn:string(.)"/>
						</doi>
					</xsl:for-each>
					<xsl:for-each select="ns0:summary/ns0:shortDescription">
						<shortDescription>
							<xsl:sequence select="fn:string(.)"/>
						</shortDescription>
					</xsl:for-each>
					<description>
						<xsl:sequence select="fn:string(ns0:summary/ns0:description)"/>
					</description>
					<homepage>
						<xsl:sequence select="xs:string(xs:anyURI(fn:string(ns0:summary/ns0:homepage)))"/>
					</homepage>
					<function>
						<xsl:for-each select="ns0:function">
							<list-item>
								<operation>
									<xsl:for-each select="ns0:operation">
										<list-item>
											<xsl:for-each select="ns0:uri">
												<uri>
													<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
												</uri>
											</xsl:for-each>
											<xsl:for-each select="ns0:term">
												<term>
													<xsl:sequence select="fn:string(.)"/>
												</term>
											</xsl:for-each>
										</list-item>
									</xsl:for-each>
								</operation>
								<input>
									<xsl:for-each select="ns0:input">
										<list-item>
											<data>
												<xsl:for-each select="ns0:data/ns0:uri">
													<uri>
														<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
													</uri>
												</xsl:for-each>
												<xsl:for-each select="ns0:data/ns0:term">
													<term>
														<xsl:sequence select="fn:string(.)"/>
													</term>
												</xsl:for-each>
											</data>
											<xsl:for-each select="ns0:format">
												<format>
													<list-item>
														<xsl:for-each select="ns0:uri">
															<uri>
																<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
															</uri>
														</xsl:for-each>
														<xsl:for-each select="ns0:term">
															<term>
																<xsl:sequence select="fn:string(.)"/>
															</term>
														</xsl:for-each>
													</list-item>
												</format>
											</xsl:for-each>
										</list-item>
									</xsl:for-each>
								</input>
								<output>
									<xsl:for-each select="ns0:output">
										<list-item>
											<data>
												<xsl:for-each select="ns0:data/ns0:uri">
													<uri>
														<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
													</uri>
												</xsl:for-each>
												<xsl:for-each select="ns0:data/ns0:term">
													<term>
														<xsl:sequence select="fn:string(.)"/>
													</term>
												</xsl:for-each>
											</data>
											<xsl:for-each select="ns0:format">
												<format>
													<list-item>
														<xsl:for-each select="ns0:uri">
															<uri>
																<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
															</uri>
														</xsl:for-each>
														<xsl:for-each select="ns0:term">
															<term>
																<xsl:sequence select="fn:string(.)"/>
															</term>
														</xsl:for-each>
													</list-item>
												</format>
											</xsl:for-each>
										</list-item>
									</xsl:for-each>
								</output>
								<xsl:for-each select="ns0:comment">
									<comment>
										<xsl:sequence select="fn:string(.)"/>
									</comment>
								</xsl:for-each>
							</list-item>
						</xsl:for-each>
					</function>
					<toolType>
						<xsl:for-each select="ns0:labels/ns0:toolType">
							<list-item>
								<xsl:sequence select="fn:string(.)"/>
							</list-item>
						</xsl:for-each>
					</toolType>
					<topic>
						<xsl:for-each select="ns0:labels/ns0:topic">
							<list-item>
								<xsl:for-each select="ns0:uri">
									<uri>
										<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
									</uri>
								</xsl:for-each>
								<xsl:for-each select="ns0:term">
									<term>
										<xsl:sequence select="fn:string(.)"/>
									</term>
								</xsl:for-each>
							</list-item>
						</xsl:for-each>
					</topic>
					<goTermID>
						<xsl:for-each select="ns0:labels/ns0:goTermID">
							<list-item>
								<xsl:sequence select="fn:string(.)"/>
							</list-item>
						</xsl:for-each>
					</goTermID>
					<soTermID>
						<xsl:for-each select="ns0:labels/ns0:soTermID">
							<list-item>
								<xsl:sequence select="fn:string(.)"/>
							</list-item>
						</xsl:for-each>
					</soTermID>
					<taxID>
						<xsl:for-each select="ns0:labels/ns0:taxID">
							<list-item>
								<xsl:sequence select="xs:string(xs:integer(fn:string(.)))"/>
							</list-item>
						</xsl:for-each>
					</taxID>
					<operatingSystem>
						<xsl:for-each select="ns0:labels/ns0:operatingSystem">
							<list-item>
								<xsl:sequence select="fn:string(.)"/>
							</list-item>
						</xsl:for-each>
					</operatingSystem>
					<language>
						<xsl:for-each select="ns0:labels/ns0:language">
							<list-item>
								<xsl:sequence select="fn:string(.)"/>
							</list-item>
						</xsl:for-each>
					</language>
					<xsl:for-each select="ns0:labels/ns0:license">
						<license>
							<xsl:sequence select="fn:string(.)"/>
						</license>
					</xsl:for-each>
					<collectionID>
						<xsl:for-each select="ns0:labels/ns0:collectionID">
							<list-item>
								<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
							</list-item>
						</xsl:for-each>
					</collectionID>
					<xsl:for-each select="ns0:labels/ns0:maturity">
						<maturity>
							<xsl:sequence select="fn:string(.)"/>
						</maturity>
					</xsl:for-each>
					<xsl:for-each select="ns0:labels/ns0:cost">
						<cost>
							<xsl:sequence select="fn:string(.)"/>
						</cost>
					</xsl:for-each>
					<accessibility>
						<xsl:for-each select="ns0:labels/ns0:accessibility">
							<list-item>
								<xsl:sequence select="fn:string(.)"/>
							</list-item>
						</xsl:for-each>
					</accessibility>
					<relation>
						<xsl:for-each select="ns0:relation">
							<list-item>
								<biotoolsId>
									<xsl:sequence select="xs:string(xs:anyURI(fn:string(ns0:biotoolsId)))"/>
								</biotoolsId>
								<type>
									<xsl:sequence select="fn:string(ns0:type)"/>
								</type>
							</list-item>
						</xsl:for-each>
					</relation>
					<xsl:for-each select="ns0:apiSpec">
						<apiSpec>
							<baseURL>
								<xsl:sequence select="xs:string(xs:anyURI(fn:string(ns0:baseURL)))"/>
							</baseURL>
							<endpoint>
								<xsl:for-each select="ns0:endpoint">
									<list-item>
										<httpMethod>
											<xsl:sequence select="fn:string(ns0:httpMethod)"/>
										</httpMethod>
										<urlTemplate>
											<xsl:sequence select="fn:string(ns0:urlTemplate)"/>
										</urlTemplate>
										<output>
											<xsl:for-each select="ns0:output">
												<list-item>
													<data>
														<xsl:for-each select="ns0:data/ns0:uri">
															<uri>
																<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
															</uri>
														</xsl:for-each>
														<xsl:for-each select="ns0:data/ns0:term">
															<term>
																<xsl:sequence select="fn:string(.)"/>
															</term>
														</xsl:for-each>
													</data>
													<format>
														<xsl:for-each select="ns0:format">
															<list-item>
																<xsl:for-each select="ns0:uri">
																	<uri>
																		<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
																	</uri>
																</xsl:for-each>
																<xsl:for-each select="ns0:term">
																	<term>
																		<xsl:sequence select="fn:string(.)"/>
																	</term>
																</xsl:for-each>
															</list-item>
														</xsl:for-each>
													</format>
												</list-item>
											</xsl:for-each>
										</output>
										<xsl:for-each select="ns0:summary">
											<summary>
												<xsl:sequence select="fn:string(.)"/>
											</summary>
										</xsl:for-each>
										<parameter>
											<xsl:for-each select="ns0:parameter">
												<list-item>
													<urlTemplateFragment>
														<xsl:sequence select="fn:string(ns0:urlTemplateFragment)"/>
													</urlTemplateFragment>
													<xsl:for-each select="ns0:data">
														<data>
															<xsl:for-each select="ns0:uri">
																<uri>
																	<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
																</uri>
															</xsl:for-each>
															<xsl:for-each select="ns0:term">
																<term>
																	<xsl:sequence select="fn:string(.)"/>
																</term>
															</xsl:for-each>
														</data>
													</xsl:for-each>
													<xsl:for-each select="ns0:comment">
														<comment>
															<xsl:sequence select="fn:string(.)"/>
														</comment>
													</xsl:for-each>
												</list-item>
											</xsl:for-each>
										</parameter>
									</list-item>
								</xsl:for-each>
							</endpoint>
						</apiSpec>
					</xsl:for-each>
					<link>
						<xsl:for-each select="ns0:link">
							<list-item>
								<url>
									<xsl:sequence select="xs:string(xs:anyURI(fn:string(ns0:url)))"/>
								</url>
								<type>
									<xsl:sequence select="fn:string(ns0:type)"/>
								</type>
								<xsl:for-each select="ns0:comment">
									<comment>
										<xsl:sequence select="fn:string(.)"/>
									</comment>
								</xsl:for-each>
							</list-item>
						</xsl:for-each>
					</link>
					<download>
						<xsl:for-each select="ns0:download">
							<list-item>
								<url>
									<xsl:sequence select="xs:string(xs:anyURI(fn:string(ns0:url)))"/>
								</url>
								<type>
									<xsl:sequence select="fn:string(ns0:type)"/>
								</type>
								<xsl:for-each select="ns0:comment">
									<comment>
										<xsl:sequence select="fn:string(.)"/>
									</comment>
								</xsl:for-each>
								<xsl:for-each select="ns0:diskFormat">
									<diskFormat>
										<xsl:sequence select="fn:string(.)"/>
									</diskFormat>
								</xsl:for-each>
								<xsl:for-each select="ns0:containerFormat">
									<containerFormat>
										<xsl:sequence select="fn:string(.)"/>
									</containerFormat>
								</xsl:for-each>
								<xsl:for-each select="ns0:cmd">
									<cmd>
										<xsl:sequence select="fn:string(.)"/>
									</cmd>
								</xsl:for-each>
							</list-item>
						</xsl:for-each>
					</download>
					<documentation>
						<xsl:for-each select="ns0:documentation">
							<list-item>
								<url>
									<xsl:sequence select="xs:string(xs:anyURI(fn:string(ns0:url)))"/>
								</url>
								<type>
									<xsl:sequence select="fn:string(ns0:type)"/>
								</type>
								<xsl:for-each select="ns0:comment">
									<comment>
										<xsl:sequence select="fn:string(.)"/>
									</comment>
								</xsl:for-each>
							</list-item>
						</xsl:for-each>
					</documentation>
					<publication>
						<xsl:for-each select="ns0:publication">
							<list-item>
								<xsl:for-each select="ns0:doi">
									<doi>
										<xsl:sequence select="fn:string(.)"/>
									</doi>
								</xsl:for-each>
								<xsl:for-each select="ns0:pmid">
									<pmid>
										<xsl:sequence select="fn:string(.)"/>
									</pmid>
								</xsl:for-each>
								<xsl:for-each select="ns0:pmcid">
									<pmcid>
										<xsl:sequence select="fn:string(.)"/>
									</pmcid>
								</xsl:for-each>
								<xsl:for-each select="ns0:type">
									<type>
										<xsl:sequence select="fn:string(.)"/>
									</type>
								</xsl:for-each>
							</list-item>
						</xsl:for-each>
					</publication>
					<contact>
						<xsl:for-each select="ns0:contact">
							<list-item>
								<xsl:for-each select="ns0:email">
									<email>
										<xsl:sequence select="fn:string(.)"/>
									</email>
								</xsl:for-each>
								<xsl:for-each select="ns0:url">
									<url>
										<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
									</url>
								</xsl:for-each>
								<xsl:for-each select="ns0:name">
									<name>
										<xsl:sequence select="fn:string(.)"/>
									</name>
								</xsl:for-each>
								<xsl:for-each select="ns0:tel">
									<tel>
										<xsl:sequence select="fn:string(.)"/>
									</tel>
								</xsl:for-each>
							</list-item>
						</xsl:for-each>
					</contact>
					<credit>
						<xsl:for-each select="ns0:credit">
							<list-item>
								<name>
									<xsl:sequence select="fn:string(ns0:name)"/>
								</name>
								<xsl:for-each select="ns0:email">
									<email>
										<xsl:sequence select="fn:string(.)"/>
									</email>
								</xsl:for-each>
								<xsl:for-each select="ns0:url">
									<url>
										<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
									</url>
								</xsl:for-each>
								<xsl:for-each select="ns0:orcidId">
									<orcidId>
										<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
									</orcidId>
								</xsl:for-each>
								<xsl:for-each select="ns0:typeEntity">
									<typeEntity>
										<xsl:sequence select="fn:string(.)"/>
									</typeEntity>
								</xsl:for-each>
								<xsl:for-each select="ns0:typeRole">
									<typeRole>
										<xsl:sequence select="fn:string(.)"/>
									</typeRole>
								</xsl:for-each>
								<xsl:for-each select="ns0:comment">
									<comment>
										<xsl:sequence select="fn:string(.)"/>
									</comment>
								</xsl:for-each>
							</list-item>
						</xsl:for-each>
					</credit>
					<xsl:for-each select="ns0:elixirInfo">
						<elixirInfo>
							<lastReviewExternalSab>
								<xsl:sequence select="xs:string(xs:date(fn:string(ns0:lastReviewExternalSab)))"/>
							</lastReviewExternalSab>
							<lastReviewElixirSab>
								<xsl:sequence select="xs:string(xs:date(fn:string(ns0:lastReviewElixirSab)))"/>
							</lastReviewElixirSab>
							<inSDP>
								<xsl:sequence select="xs:string(xs:boolean(fn:string(ns0:inSDP)))"/>
							</inSDP>
							<isCoreDataResource>
								<xsl:sequence select="xs:string(xs:boolean(fn:string(ns0:isCoreDataResource)))"/>
							</isCoreDataResource>
							<platform>
								<xsl:sequence select="fn:string(ns0:platform)"/>
							</platform>
							<node>
								<xsl:sequence select="fn:string(ns0:node)"/>
							</node>
							<xsl:for-each select="ns0:comment">
								<comment>
									<xsl:sequence select="fn:string(.)"/>
								</comment>
							</xsl:for-each>
						</elixirInfo>
					</xsl:for-each>
				</root>
			</xsl:for-each>
		</tools>
	</xsl:template>
</xsl:stylesheet>