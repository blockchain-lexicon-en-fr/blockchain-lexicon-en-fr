<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    body {
                    background-color: #312D2D;
                    background-image: url(c1_2108411_210430122446.jpg);
                    font-family: Calibri;
                    }
                    h1 {
                    margin-left: 20px;
                    color: white;
                    font-size: 50px;
                    }
                    table
                    {
                    background-color: #FF797C;
                    width: 90%;
                    margin-top: 10px;
                    margin-right: 20px;
                    margin-left: 10px;
                    margin-bottom: 15px;
                    text-align: left;
                    display: grid;
                    border-style: solid;
                    }
                    th{
                    text-align: left;
                    font-size: 25px;
                    
                    }
                    td {
                    border-style: solid;
                    border-width: 5px;
                    margin-bottom: 5px;
                    }
                    .term {
                    font-weight: bold;
                    }
                </style>
            </head>
            <body>
                
                <button><a href="blockchainLexiconFr.html">Français</a></button>         
                <h1 style="color: #FF797C;">Blockchain lexicon</h1>  
                
                <table>
                    <tr>
                        <th>Terms</th>
                        <th>Definitions</th>
                    </tr>
                    <xsl:for-each select="tmx/body/tu/tuv[@xml:lang='en']">
                        <xsl:sort select="term" order="ascending"/>
                        <tr>
                            <td class="term"><xsl:value-of select="term"/></td>
                            <td class="def"><xsl:value-of select="definition"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
            </body>
        </html>   
    </xsl:template>
</xsl:stylesheet>