<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
  xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
  <sch:pattern>
    <sch:rule context="@name | @u">
      <sch:report test="string-length(normalize-space(.)) eq 0">Value of attribute <sch:value-of
          select="name()"/> cannot be empty string</sch:report>
    </sch:rule>
    <sch:rule context="sup | base">
      <sch:report test="string-length(.) eq 0">Missing character</sch:report>
      <sch:report test="string-length(.) gt 1">More than one character supplied</sch:report>
    </sch:rule>
  </sch:pattern>
</sch:schema>
