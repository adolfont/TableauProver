<?xml version="1.0" encoding="UTF-8"?>
<!--

Pretty XML Tree Viewer 1.0 (15 Oct 2001):
An XPath/XSLT visualisation tool for XML documents

Written by Mike J. Brown and Jeni Tennison.
No license; use freely, but please credit the authors if republishing elsewhere.

Use this stylesheet to produce an HTML document containing an ASCII art
representation of an XML document's node tree, as exposed by the XML parser
and interpreted by the XSLT processor. Note that the parser may not expose
comments to the XSLT processor.

Usage notes
===========

The output from this stylesheet is HTML that relies heavily on the tree-view.css
stylesheet. If you need plain text output, use the ASCII-only version, not this
stylesheet.

By default, this stylesheet will not show namespace nodes. If the XSLT processor
supports the namespace axis and you want to see namespace nodes, just pass a
non-empty "show_ns" parameter to the stylesheet. Example using Instant Saxon:

    saxon somefile.xml tree-view.xsl show_ns=yes

If you want to ignore whitespace-only text nodes, uncomment the xsl:strip-space
instruction below. This is recommended if you are a beginner.

-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="no"/>


  <xsl:strip-space elements="*"/>


  <xsl:param name="show_ns"/>
  <xsl:variable name="apos">'</xsl:variable>

<xsl:template match="/">
<html>
<body>
<h1>Tableau Prover Proof</h1>

<ol>
<h2><li>Problem data</li></h2>


<table border="1" cellpadding="5" cellspacing="5">
<tr bgcolor="#9acd32">
<th align="left">Problem name</th>
<th align="left">Size</th>
<th align="left">Type</th>
</tr>
<xsl:for-each select="proof/problem">
<tr>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="size"/></td>
<td><xsl:value-of select="type"/></td>
</tr>
</xsl:for-each>
</table>

<h3>Problem complexity</h3>

<ul>

<h4><li>Formulas</li></h4>
<table border="1" cellpadding="5" cellspacing="5">
<tr bgcolor="#9acd32">
<th align="left">number of atomic formulas</th>
<th align="left">number of composite formulas</th>
<th align="left">number of connectives</th>
<th align="left">measurement</th>
</tr>
<xsl:for-each select="proof/problem/complexity/formulas">
<tr>
<td><xsl:value-of select="atomic"/></td>
<td><xsl:value-of select="composite"/></td>
<td><xsl:value-of select="connectives"/></td>
<td><xsl:value-of select="measurement"/></td>
</tr>
</xsl:for-each>
</table>

<h4><li>Signed Formulas</li></h4>
<table border="1" cellpadding="5" cellspacing="5">
<tr bgcolor="#9acd32">
<th align="left">number of signed formulas</th>
<th align="left">measurement</th>
</tr>
<xsl:for-each select="proof/problem/complexity/signedFormulas">
<tr>
<td><xsl:value-of select="number"/></td>
<td><xsl:value-of select="measurement"/></td>
</tr>
</xsl:for-each>
</table>

</ul>

<h2><li>Execution data</li></h2>

<h3>Host</h3>

<table border="1" cellpadding="5" cellspacing="5">
<tr bgcolor="#9acd32">
<th align="left">Host name</th>
<th align="left">Operating system (OS)</th>
<th align="left">OS version</th>
</tr>
<xsl:for-each select="proof/execution">
<tr>
<td><xsl:value-of select="hostname"/></td>
<td><xsl:value-of select="operatingSystem/name"/></td>
<td><xsl:value-of select="operatingSystem/version"/></td>
</tr>
</xsl:for-each>
</table>

<h3>Date and time</h3>

<table border="1" cellpadding="5" cellspacing="5">
<tr bgcolor="#9acd32">
<th align="left">Date</th>
<th align="left">Time</th>
<th align="left">Time elapsed (in seconds)</th>
<th align="left">Strategy used</th>
</tr>
<xsl:for-each select="proof/execution">
<tr>
<td><xsl:value-of select="date"/></td>
<td><xsl:value-of select="time"/></td>
<td><xsl:value-of select="timeElapsed"/></td>
<td><xsl:value-of select="strategy"/></td>
</tr>
</xsl:for-each>
</table>

<h3>Memory (in bytes)</h3>

<table border="1" cellpadding="5" cellspacing="5">
<tr bgcolor="#9acd32">
<th align="left">Free memory</th>
<th align="left">Max memory</th>
<th align="left">Total memory</th>
</tr>
<xsl:for-each select="proof/execution">
<tr>
<td><xsl:value-of select="memory/free"/></td>
<td><xsl:value-of select="memory/max"/></td>
<td><xsl:value-of select="memory/total"/></td>
</tr>
</xsl:for-each>
</table>

<h3>Rule usage</h3>

Total: <xsl:value-of select="proof/execution/rulesUsage/total"/> <br/>

<h4>By type</h4>
<table border="1" cellpadding="5" cellspacing="5">
<tr bgcolor="#9acd32">
<th align="left">simple</th>
<th align="left">substitution</th>
<th align="left">PB</th>
</tr>
<xsl:for-each select="proof/execution/rulesUsage/rulesByType">
<tr>
<td><xsl:value-of select="simple"/></td>
<td><xsl:value-of select="sub"/></td>
<td><xsl:value-of select="PB"/></td>
</tr>
</xsl:for-each>
</table>

<h4>All rules used</h4>
<table border="1" cellpadding="5" cellspacing="5">
<tr bgcolor="#9acd32">
<th align="left">rules</th>
<th align="left">times used</th>
</tr>
<xsl:for-each select="proof/execution/rulesUsage/rules/rule">
<tr>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="times"/></td>
</tr>
</xsl:for-each>
</table>

<h4>Repeated formulas </h4>

Total of repeated formulas: <xsl:value-of select="proof/execution/rulesUsage/totalRepeatedFormulas"/> <br/>


<h5>Rules that generated repeated formulas</h5>
<table border="1" cellpadding="5" cellspacing="5">
<tr bgcolor="#9acd32">
<th align="left">rules</th>
<th align="left">formulas generated</th>
</tr>
<xsl:for-each select="proof/execution/rulesUsage/repeatedFormulas/rule">
<tr>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="times"/></td>
</tr>
</xsl:for-each>
</table>

<h3>Signed Formula Builder</h3>


<h4>Formulas</h4>
<table border="1" cellpadding="5" cellspacing="5">
<tr bgcolor="#9acd32">
<th align="left">number of atomic formulas</th>
<th align="left">number of composite formulas</th>
<th align="left">number of connectives</th>
<th align="left">size of structures</th>
<th align="left">measurement</th>
</tr>
<xsl:for-each select="proof/execution/signedFormulaBuilder/formulas">
<tr>
<td><xsl:value-of select="atomic"/></td>
<td><xsl:value-of select="composite"/></td>
<td><xsl:value-of select="connectives"/></td>
<td><xsl:value-of select="structuresSize"/></td>
<td><xsl:value-of select="measurement"/></td>
</tr>
</xsl:for-each>
</table>

<h4>Signed Formulas</h4>
<table border="1" cellpadding="5" cellspacing="5">
<tr bgcolor="#9acd32">
<th align="left">number of signed formulas</th>
<th align="left">measurement</th>
</tr>
<xsl:for-each select="proof/execution/signedFormulaBuilder/signedFormulas">
<tr>
<td><xsl:value-of select="number"/></td>
<td><xsl:value-of select="measurement"/></td>
</tr>
</xsl:for-each>
</table>

<h2><li>Proof Tree</li></h2>

<table border="1" cellpadding="5" cellspacing="5">
<tr bgcolor="#9acd32">
<th align="left">number of branches</th>
<th align="left">height</th>
<th align="left">number of nodes</th>
<th align="left">status</th>
</tr>
<xsl:for-each select="proof/proofTree">
<tr>
<td><xsl:value-of select="branches"/></td>
<td><xsl:value-of select="height"/></td>
<td><xsl:value-of select="nodes"/></td>
<td><xsl:value-of select="status"/></td>
</tr>
</xsl:for-each>
</table>

<h3>Nodes</h3>

<xsl:apply-templates select="proof/proofTree"/>

</ol>
</body>
</html>


</xsl:template>


  <xsl:template match="proof/proofTree">
    <html>
      <head>
        <title>Tableau Prover Proof Tree</title>
        <link type="text/css" rel="stylesheet" href="proofTree.css"/>
      </head>
      <body>
        <h3>Tableau Prover Proof Tree</h3>
        <xsl:apply-templates select="*" mode="render"/>

      </body>
    </html>
  </xsl:template>

  <xsl:template match="/" mode="render">
    <span class="root">root</span>
    <br/>
    <xsl:apply-templates mode="render"/>
  </xsl:template>

  <xsl:template match="*" mode="render">
    <xsl:call-template name="ascii-art-hierarchy"/>
    <br/>
    <xsl:call-template name="ascii-art-hierarchy"/>
    <span class="connector">___</span>
<!--    <span class="element">element</span> -->
    <xsl:text> </xsl:text>
    <xsl:if test="namespace-uri()">
      <xsl:text>{</xsl:text>
      <span class="uri">
        <xsl:value-of select="namespace-uri()"/>
      </span>
      <xsl:text>}</xsl:text>
    </xsl:if>
    <span class="name">
      <xsl:value-of select="local-name()"/>
    </span>
    <xsl:if test="local-name() != name()">
      <xsl:text> (QName </xsl:text>
      <span class="altname">
        <xsl:value-of select="name()"/>
      </span>
      <xsl:text>)</xsl:text>
    </xsl:if>
    <br/>
    <xsl:apply-templates select="@*" mode="render"/>
    <xsl:if test="$show_ns">
      <xsl:for-each select="namespace::*">
        <xsl:sort select="name()"/>
        <xsl:call-template name="ascii-art-hierarchy"/>
        <span class="connector">  </span>
        <span class="connector">\___</span>
        <span class="namespace">namespace</span>
        <xsl:text> </xsl:text>
        <xsl:choose>
          <xsl:when test="name()">
            <span class="name">
              <xsl:value-of select="name()"/>
            </span>
          </xsl:when>
          <xsl:otherwise>#default</xsl:otherwise>
        </xsl:choose>
        <xsl:text> = </xsl:text>
        <span class="uri">
          <xsl:value-of select="."/>
        </span>
        <br/>
      </xsl:for-each>
    </xsl:if>
    <xsl:apply-templates mode="render"/>
  </xsl:template>

  <xsl:template match="@*" mode="render">
    <xsl:call-template name="ascii-art-hierarchy"/>
    <span class="connector">  </span>
    <span class="connector">\___</span>
    <span class="attribute">attribute</span>
    <xsl:text> </xsl:text>
    <xsl:if test="namespace-uri()">
      <xsl:text>{</xsl:text>
      <span class="uri">
        <xsl:value-of select="namespace-uri()"/>
      </span>
      <xsl:text>}</xsl:text>
    </xsl:if>
    <span class="name">
      <xsl:value-of select="local-name()"/>
    </span>
    <xsl:if test="local-name() != name()">
      <xsl:text> (QName </xsl:text>
      <span class="altname">
        <xsl:value-of select="name()"/>
      </span>
      <xsl:text>)</xsl:text>
    </xsl:if>
    <xsl:text> = </xsl:text>
    <span class="value">
      <!-- make spaces be non-breaking spaces, since this is HTML -->
      <xsl:call-template name="escape-ws">
        <xsl:with-param name="text" select="translate(.,' ',' ')"/>
      </xsl:call-template>
    </span>
    <br/>
  </xsl:template>

  <xsl:template match="text()" mode="render">
    <xsl:call-template name="ascii-art-hierarchy"/>
    <br/>
    <xsl:call-template name="ascii-art-hierarchy"/>
    <span class="connector">___</span>
<!--    <span class="text">text</span> -->
    <xsl:text> </xsl:text>
    <span class="value">
      <!-- make spaces be non-breaking spaces, since this is HTML -->
      <xsl:call-template name="escape-ws">
        <xsl:with-param name="text" select="translate(.,' ',' ')"/>
      </xsl:call-template>
    </span>
    <br/>
  </xsl:template>

  <xsl:template match="text()" mode="render">
    <xsl:call-template name="ascii-art-hierarchy"/>
    <br/>
    <xsl:call-template name="ascii-art-hierarchy"/>
    <span class="connector">___</span>
<!--    <span class="text">text</span> -->
    <xsl:text> </xsl:text>
    <span class="value">
      <!-- make spaces be non-breaking spaces, since this is HTML -->
      <xsl:call-template name="escape-ws">
        <xsl:with-param name="text" select="translate(.,' ',' ')"/>
      </xsl:call-template>
    </span>
    <br/>
  </xsl:template>

  <xsl:template match="comment()" mode="render">
    <xsl:call-template name="ascii-art-hierarchy"/>
    <br/>
    <xsl:call-template name="ascii-art-hierarchy"/>
    <span class="connector">___</span>
    <span class="comment">comment</span>
    <xsl:text> </xsl:text>
    <span class="value">
      <!-- make spaces be non-breaking spaces, since this is HTML -->
      <xsl:call-template name="escape-ws">
        <xsl:with-param name="text" select="translate(.,' ',' ')"/>
      </xsl:call-template>
    </span>
    <br/>
  </xsl:template>

  <xsl:template match="processing-instruction()" mode="render">
    <xsl:call-template name="ascii-art-hierarchy"/>
    <br/>
    <xsl:call-template name="ascii-art-hierarchy"/>
    <span class="connector">___</span>
    <span class="pi">processing instruction</span>
    <xsl:text> </xsl:text>
    <xsl:text>target=</xsl:text>
    <span class="value">
      <xsl:value-of select="name()"/>
    </span>
    <xsl:text> instruction=</xsl:text>
    <span class="value">
      <xsl:value-of select="."/>
    </span>
    <br/>
  </xsl:template>

  <xsl:template name="ascii-art-hierarchy">
    <xsl:for-each select="ancestor::*">
      <xsl:choose>
        <xsl:when test="following-sibling::node()">
          <span class="connector">  </span>|<span class="connector">  </span>
          <xsl:text> </xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <span class="connector">    </span>
          <span class="connector">  </span>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
    <xsl:choose>
      <xsl:when test="parent::node() and ../child::node()">
        <span class="connector">  </span>
        <xsl:text>|</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <span class="connector">   </span>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- recursive template to escape linefeeds, tabs -->
  <xsl:template name="escape-ws">
    <xsl:param name="text"/>
    <xsl:choose>
      <xsl:when test="contains($text, '
')">
        <xsl:call-template name="escape-ws">
          <xsl:with-param name="text" select="substring-before($text, '
')"/>
        </xsl:call-template>
        <span class="escape">\n</span>
        <xsl:call-template name="escape-ws">
          <xsl:with-param name="text" select="substring-after($text, '
')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:when test="contains($text, '	')">
        <xsl:value-of select="substring-before($text, '	')"/>
        <span class="escape">\t</span>
        <xsl:call-template name="escape-ws">
          <xsl:with-param name="text" select="substring-after($text, '	')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise><xsl:value-of select="$text"/></xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
