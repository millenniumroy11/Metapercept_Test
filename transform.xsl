<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    |<xsl:output method="html" />
    <xsl:template match="/">
    <html>
    <head>
    <style>
    table {
        font-size: 12pt;
        border-collapse: collapse;
    }
    th {
        background-color: #D6EFED;
        text-align: center;
        border: 1pt solid #D6EFED;
    }
    td {
        border: 1pt solid #D6EFED
    }
    </style>
    </head>
    <body>
        <table>
        <thead>
        <tr>
        <th>Employee Name</th>
        <th>Designation</th>
        <th>Date Of Joining</th>
        </tr>
        </thead>
        <tbody>
        <xsl: for-each select="/employees/employee[designation= 'Technical Writer' or (salary > 500000 and salary < 700000)]">
        <tr>
        <td><xsl:value-of select="name" /></td>
        <td><xsl:value-of select="designation" /></td>
        <td><xsl:value-of select="date_of_joining" /></td>
        </tr>
        </xsl:for-each>
        </tbody>
        </table>
    </body>
    </html>
    </xsl:template>
</xsl:stylesheet>