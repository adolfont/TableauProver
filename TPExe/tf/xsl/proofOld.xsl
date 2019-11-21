<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h1>Tableau Prover Proof</h1>

<h2>Problem data</h2>
<table border="1">
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

<h4>Formulas</h4>
<table border="1">
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

<h4>Signed Formulas</h4>
<table border="1">
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


<h2>Execution data</h2>

<table border="1">
<tr bgcolor="#9acd32">
<th align="left">date</th>
<th align="left">time</th>
<th align="left">time elapsed (in seconds)</th>
<th align="left">rules usage</th>
</tr>
<xsl:for-each select="proof/execution">
<tr>
<td><xsl:value-of select="date"/></td>
<td><xsl:value-of select="time"/></td>
<td><xsl:value-of select="timeElapsed"/></td>
<td><xsl:value-of select="rulesUsage/total"/></td>
</tr>
</xsl:for-each>
</table>

<h3>Rule usage</h3>

<h4>By type</h4>
<table border="1">
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
<table border="1">
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

<h3>Signed Formula Builder</h3>


<h4>Formulas</h4>
<table border="1">
<tr bgcolor="#9acd32">
<th align="left">number of atomic formulas</th>
<th align="left">number of composite formulas</th>
<th align="left">number of connectives</th>
<th align="left">measurement</th>
</tr>
<xsl:for-each select="proof/execution/signedFormulaBuilder/formulas">
<tr>
<td><xsl:value-of select="atomic"/></td>
<td><xsl:value-of select="composite"/></td>
<td><xsl:value-of select="connectives"/></td>
<td><xsl:value-of select="measurement"/></td>
</tr>
</xsl:for-each>
</table>

<h4>Signed Formulas</h4>
<table border="1">
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

<h2>Proof Tree</h2>

<h3>Data</h3>
<table border="1">
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

<hr/>
<xsl:apply-templates select="proof/proofTree/tree"/>

</body>
</html>




</xsl:template>

 <xsl:template match="proof/proofTree">

     <xsl:apply-templates select="tree"/>
  </xsl:template>

  <xsl:template match="tree">
   <table border="0">
   <tr bgcolor="#9acd32">
    <th align="left">content</th>
    <th align="left">origin</th>
   </tr>

   <xsl:for-each select="node">
   <tr>
    <td><xsl:value-of select="content"/></td>
    <td><xsl:value-of select="origin"/></td>
   </tr>
   </xsl:for-each>

    <xsl:if test="count(left)>0">
     <tr>
       <h4>Left</h4>
       <xsl:apply-templates select="left"/>
     </tr>
    </xsl:if>

    <xsl:if test="count(right)>0">
     <tr>
       <h4>Right</h4>
       <xsl:apply-templates select="right"/>
     </tr>
    </xsl:if>

   </table>
   <hr/>
</xsl:template>

   <xsl:template match="left">
   	   <xsl:apply-templates select="tree"/>
   </xsl:template>

   <xsl:template match="right">
   	   <xsl:apply-templates select="tree"/>
   </xsl:template>


</xsl:stylesheet>
