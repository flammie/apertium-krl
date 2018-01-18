<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>

  <xsl:template match="Dictionary">
    <xsl:apply-templates select="DictionaryEntry">
      <xsl:sort select="@sortKey" data-type="number"/>
    </xsl:apply-templates>
  </xsl:template>

  <xsl:template match="DictionaryEntry">
    <xsl:choose>
      <xsl:when test="SenseGrp">
        <xsl:for-each select="SenseGrp">
          <xsl:apply-templates select="../HeadwordCtn/Headword"/><xsl:text> </xsl:text>
          <xsl:apply-templates
            select="../HeadwordCtn/PartOfSpeechCtn/PartOfSpeech/@value"/>
          <xsl:apply-templates
            select="PartOfSpeechCtn/PartOfSpeech/@value"/> ; ! <xsl:apply-templates
            select="Definition"/><xsl:text>&#x0a;</xsl:text>
        </xsl:for-each>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="HeadwordCtn/Headword"/><xsl:text> </xsl:text>
        <xsl:apply-templates
          select="HeadwordCtn/PartOfSpeechCtn/PartOfSpeech/@value"/> ; ! <xsl:apply-templates select="Definition"/>
        <xsl:text>&#x0a;</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
