<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
               
                <title>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title" />
                </title>

                 <link rel="stylesheet" type="text/css" href="./mycss.css" />
                <style>
                    h1{
                        color:red;
                    }
                    span{
                        color:blue;
                    }
                    
                </style>
            </head>
            <body>
                    <h1>Noi, i ragazzi dello zoo di Berlino</h1>
                <div>
                    <xsl:apply-templates select="child::node()" />
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="tei:div[@type='chapter']">
            <ol>Paragrafi: <br />
                <xsl:for-each select="tei:p">
                    <li>
                        <xsl:value-of select="child::node()" />
                    </li>
                </xsl:for-each>
            </ol>
    </xsl:template>
    <!--<xsl:template match="titleStmt/title">
        <h2>
            <xsl:value-of select="." />
        </h2>
    </xsl:template>
    <xsl:template match="div/head">
        <h3>
            <xsl:value-of select="." />
        </h3>
    </xsl:template>-->

    <xsl:template match="tei:teiHeader">
        <span>
        [<xsl:value-of select="@xml:id" />]
        </span>
    </xsl:template>


</xsl:stylesheet>