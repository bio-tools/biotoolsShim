<?xml version="1.0" encoding="UTF-8"?>
<!--
This file was generated by Altova MapForce 2019r3

YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.

Refer to the Altova MapForce Documentation for further details.
http://www.altova.com/mapforce
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" exclude-result-prefixes="xs fn">
	<xsl:output method="xml" encoding="UTF-8" byte-order-mark="no" indent="yes"/>
	<xsl:template match="/">
		<tools xmlns="biotoolsSchema">
			<xsl:attribute name="xsi:schemaLocation" namespace="http://www.w3.org/2001/XMLSchema-instance" select="'biotoolsSchema file:///E:/repos/GitHub/biotoolsShim/genericxml2xml/versions/biotools-3.3.0/biotools_3.3.0.xsd'"/>
			<xsl:for-each select="*:root[fn:namespace-uri() eq '']/*:list[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
				<tool>
					<name>
						<xsl:sequence select="fn:string(*:name[fn:namespace-uri() eq ''])"/>
					</name>
					<description>
						<xsl:sequence select="fn:string(*:description[fn:namespace-uri() eq ''])"/>
					</description>
					<homepage>
						<xsl:sequence select="xs:string(xs:anyURI(fn:string(*:homepage[fn:namespace-uri() eq ''])))"/>
					</homepage>
					<xsl:for-each select="*:biotoolsID[fn:namespace-uri() eq '']">
						<biotoolsID>
							<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
						</biotoolsID>
					</xsl:for-each>
					<xsl:for-each select="*:biotoolsCURIE[fn:namespace-uri() eq '']">
						<biotoolsCURIE>
							<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
						</biotoolsCURIE>
					</xsl:for-each>
					<xsl:for-each select="*:version[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<version>
							<xsl:sequence select="fn:string(.)"/>
						</version>
					</xsl:for-each>
					<xsl:for-each select="*:otherID[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<otherID>
							<value>
								<xsl:sequence select="fn:string(*:value[fn:namespace-uri() eq ''])"/>
							</value>
							<xsl:for-each select="*:type[fn:namespace-uri() eq '']">
								<type>
									<xsl:sequence select="fn:string(.)"/>
								</type>
							</xsl:for-each>
							<xsl:for-each select="*:version[fn:namespace-uri() eq '']">
								<version>
									<xsl:sequence select="fn:string(.)"/>
								</version>
							</xsl:for-each>
						</otherID>
					</xsl:for-each>
					<xsl:for-each select="*:toolType[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<toolType>
							<xsl:sequence select="fn:string(.)"/>
						</toolType>
					</xsl:for-each>
					<xsl:for-each select="*:topic[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<topic>
							<xsl:for-each select="*:uri[fn:namespace-uri() eq '']">
								<uri>
									<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
								</uri>
							</xsl:for-each>
							<xsl:for-each select="*:term[fn:namespace-uri() eq '']">
								<term>
									<xsl:sequence select="fn:string(.)"/>
								</term>
							</xsl:for-each>
						</topic>
					</xsl:for-each>
					<xsl:for-each select="*:operatingSystem[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<operatingSystem>
							<xsl:sequence select="fn:string(.)"/>
						</operatingSystem>
					</xsl:for-each>
					<xsl:for-each select="*:language[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<language>
							<xsl:sequence select="fn:string(.)"/>
						</language>
					</xsl:for-each>
					<xsl:for-each select="*:license[fn:namespace-uri() eq '']">
						<license>
							<xsl:sequence select="fn:string(.)"/>
						</license>
					</xsl:for-each>
					<xsl:for-each select="*:collectionID[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<collectionID>
							<xsl:sequence select="fn:string(.)"/>
						</collectionID>
					</xsl:for-each>
					<xsl:for-each select="*:maturity[fn:namespace-uri() eq '']">
						<maturity>
							<xsl:sequence select="fn:string(.)"/>
						</maturity>
					</xsl:for-each>
					<xsl:for-each select="*:cost[fn:namespace-uri() eq '']">
						<cost>
							<xsl:sequence select="fn:string(.)"/>
						</cost>
					</xsl:for-each>
					<xsl:for-each select="*:accessibility[fn:namespace-uri() eq '']">
						<accessibility>
							<xsl:sequence select="fn:string(.)"/>
						</accessibility>
					</xsl:for-each>
					<xsl:for-each select="*:elixirPlatform[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<elixirPlatform>
							<xsl:sequence select="fn:string(.)"/>
						</elixirPlatform>
					</xsl:for-each>
					<xsl:for-each select="*:elixirCommunity[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<elixirCommunity>
							<xsl:sequence select="fn:string(.)"/>
						</elixirCommunity>
					</xsl:for-each>
					<xsl:for-each select="*:elixirNode[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<elixirNode>
							<xsl:sequence select="fn:string(.)"/>
						</elixirNode>
					</xsl:for-each>
					<xsl:for-each select="*:function[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<function>
							<xsl:for-each select="*:operation[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
								<operation>
									<xsl:for-each select="*:uri[fn:namespace-uri() eq '']">
										<uri>
											<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
										</uri>
									</xsl:for-each>
									<xsl:for-each select="*:term[fn:namespace-uri() eq '']">
										<term>
											<xsl:sequence select="fn:string(.)"/>
										</term>
									</xsl:for-each>
								</operation>
							</xsl:for-each>
							<xsl:for-each select="*:input[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
								<input>
									<xsl:variable name="var1_data" as="node()" select="*:data[fn:namespace-uri() eq '']"/>
									<data>
										<xsl:for-each select="$var1_data/*:uri[fn:namespace-uri() eq '']">
											<uri>
												<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
											</uri>
										</xsl:for-each>
										<xsl:for-each select="$var1_data/*:term[fn:namespace-uri() eq '']">
											<term>
												<xsl:sequence select="fn:string(.)"/>
											</term>
										</xsl:for-each>
									</data>
									<xsl:for-each select="*:format[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
										<format>
											<xsl:for-each select="*:uri[fn:namespace-uri() eq '']">
												<uri>
													<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
												</uri>
											</xsl:for-each>
											<xsl:for-each select="*:term[fn:namespace-uri() eq '']">
												<term>
													<xsl:sequence select="fn:string(.)"/>
												</term>
											</xsl:for-each>
										</format>
									</xsl:for-each>
								</input>
							</xsl:for-each>
							<xsl:for-each select="*:output[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
								<output>
									<xsl:variable name="var2_data" as="node()" select="*:data[fn:namespace-uri() eq '']"/>
									<data>
										<xsl:for-each select="$var2_data/*:uri[fn:namespace-uri() eq '']">
											<uri>
												<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
											</uri>
										</xsl:for-each>
										<xsl:for-each select="$var2_data/*:term[fn:namespace-uri() eq '']">
											<term>
												<xsl:sequence select="fn:string(.)"/>
											</term>
										</xsl:for-each>
									</data>
									<xsl:for-each select="*:format[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
										<format>
											<xsl:for-each select="*:uri[fn:namespace-uri() eq '']">
												<uri>
													<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
												</uri>
											</xsl:for-each>
											<xsl:for-each select="*:term[fn:namespace-uri() eq '']">
												<term>
													<xsl:sequence select="fn:string(.)"/>
												</term>
											</xsl:for-each>
										</format>
									</xsl:for-each>
								</output>
							</xsl:for-each>
							<xsl:for-each select="*:note[fn:namespace-uri() eq '']">
								<note>
									<xsl:sequence select="fn:string(.)"/>
								</note>
							</xsl:for-each>
							<xsl:for-each select="*:cmd[fn:namespace-uri() eq '']">
								<cmd>
									<xsl:sequence select="fn:string(.)"/>
								</cmd>
							</xsl:for-each>
						</function>
					</xsl:for-each>
					<xsl:for-each select="*:link[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<link>
							<url>
								<xsl:sequence select="xs:string(xs:anyURI(fn:string(*:url[fn:namespace-uri() eq ''])))"/>
							</url>
							<xsl:for-each select="*:type[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
								<type>
									<xsl:sequence select="fn:string(.)"/>
								</type>
							</xsl:for-each>
							<xsl:for-each select="*:note[fn:namespace-uri() eq '']">
								<note>
									<xsl:sequence select="fn:string(.)"/>
								</note>
							</xsl:for-each>
						</link>
					</xsl:for-each>
					<xsl:for-each select="*:download[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<download>
							<url>
								<xsl:sequence select="xs:string(xs:anyURI(fn:string(*:url[fn:namespace-uri() eq ''])))"/>
							</url>
							<type>
								<xsl:sequence select="fn:string(*:type[fn:namespace-uri() eq ''])"/>
							</type>
							<xsl:for-each select="*:note[fn:namespace-uri() eq '']">
								<note>
									<xsl:sequence select="fn:string(.)"/>
								</note>
							</xsl:for-each>
							<xsl:for-each select="*:version[fn:namespace-uri() eq '']">
								<version>
									<xsl:sequence select="fn:string(.)"/>
								</version>
							</xsl:for-each>
						</download>
					</xsl:for-each>
					<xsl:for-each select="*:documentation[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<documentation>
							<url>
								<xsl:sequence select="xs:string(xs:anyURI(fn:string(*:url[fn:namespace-uri() eq ''])))"/>
							</url>
							<xsl:for-each select="*:type[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
								<type>
									<xsl:sequence select="fn:string(.)"/>
								</type>
							</xsl:for-each>
							<xsl:for-each select="*:note[fn:namespace-uri() eq '']">
								<note>
									<xsl:sequence select="fn:string(.)"/>
								</note>
							</xsl:for-each>
						</documentation>
					</xsl:for-each>
					<xsl:for-each select="*:relation[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<relation>
							<biotoolsID>
								<xsl:sequence select="xs:string(xs:anyURI(fn:string(*:biotoolsID[fn:namespace-uri() eq ''])))"/>
							</biotoolsID>
							<type>
								<xsl:sequence select="fn:string(*:type[fn:namespace-uri() eq ''])"/>
							</type>
						</relation>
					</xsl:for-each>
					<xsl:for-each select="*:publication[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<publication>
							<xsl:for-each select="*:doi[fn:namespace-uri() eq '']">
								<doi>
									<xsl:sequence select="fn:string(.)"/>
								</doi>
							</xsl:for-each>
							<xsl:for-each select="*:pmid[fn:namespace-uri() eq '']">
								<pmid>
									<xsl:sequence select="fn:string(.)"/>
								</pmid>
							</xsl:for-each>
							<xsl:for-each select="*:pmcid[fn:namespace-uri() eq '']">
								<pmcid>
									<xsl:sequence select="fn:string(.)"/>
								</pmcid>
							</xsl:for-each>
							<xsl:for-each select="*:type[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
								<type>
									<xsl:sequence select="fn:string(.)"/>
								</type>
							</xsl:for-each>
							<xsl:for-each select="*:version[fn:namespace-uri() eq '']">
								<version>
									<xsl:sequence select="fn:string(.)"/>
								</version>
							</xsl:for-each>
							<xsl:for-each select="*:note[fn:namespace-uri() eq '']">
								<note>
									<xsl:sequence select="fn:string(.)"/>
								</note>
							</xsl:for-each>
						</publication>
					</xsl:for-each>
					<xsl:for-each select="*:credit[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
						<credit>
							<xsl:for-each select="*:name[fn:namespace-uri() eq '']">
								<name>
									<xsl:sequence select="fn:string(.)"/>
								</name>
							</xsl:for-each>
							<xsl:for-each select="*:email[fn:namespace-uri() eq '']">
								<email>
									<xsl:sequence select="fn:string(.)"/>
								</email>
							</xsl:for-each>
							<xsl:for-each select="*:url[fn:namespace-uri() eq '']">
								<url>
									<xsl:sequence select="xs:string(xs:anyURI(fn:string(.)))"/>
								</url>
							</xsl:for-each>
							<xsl:for-each select="*:orcidid[fn:namespace-uri() eq '']">
								<orcidid>
									<xsl:sequence select="fn:string(.)"/>
								</orcidid>
							</xsl:for-each>
							<xsl:for-each select="*:gridid[fn:namespace-uri() eq '']">
								<gridid>
									<xsl:sequence select="fn:string(.)"/>
								</gridid>
							</xsl:for-each>
							<xsl:for-each select="*:rorid[fn:namespace-uri() eq '']">
								<rorid>
									<xsl:sequence select="fn:string(.)"/>
								</rorid>
							</xsl:for-each>
							<xsl:for-each select="*:fundrefid[fn:namespace-uri() eq '']">
								<fundrefid>
									<xsl:sequence select="fn:string(.)"/>
								</fundrefid>
							</xsl:for-each>
							<xsl:for-each select="*:typeEntity[fn:namespace-uri() eq '']">
								<typeEntity>
									<xsl:sequence select="fn:string(.)"/>
								</typeEntity>
							</xsl:for-each>
							<xsl:for-each select="*:typeRole[fn:namespace-uri() eq '']/*:list-item[fn:namespace-uri() eq '']">
								<typeRole>
									<xsl:sequence select="fn:string(.)"/>
								</typeRole>
							</xsl:for-each>
							<xsl:for-each select="*:note[fn:namespace-uri() eq '']">
								<note>
									<xsl:sequence select="fn:string(.)"/>
								</note>
							</xsl:for-each>
						</credit>
					</xsl:for-each>
				</tool>
			</xsl:for-each>
		</tools>
	</xsl:template>
</xsl:stylesheet>
