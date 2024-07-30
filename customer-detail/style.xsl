<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<!-- สร้างส่วนหัวเอกสาร HTML -->
<html>
<head><title> Customer </title></head>
<body>

<!-- สร้างส่วนหัวของแต่ละคอลัมน์ -->
    <table width="100%" height="50%" border="1" style="border-collapse: collapse">
        <tr>
            <td width="5%" height="10%" bgcolor="#01A7FF"><font face="MS Sans Serif" size="4" color="black"><b><center>ID</center></b></font></td>
            <td width="5%" height="20%" bgcolor="#01A7FF"><font face="MS Sans Serif" size="4" color="black"><b><center>Name Lastname</center></b></font></td>
            <td width="5%" height="25%" bgcolor="#01A7FF"><font face="MS Sans Serif" size="4" color="black"><b><center>Amount</center></b></font></td>
            <td width="5%" height="20%" bgcolor="#01A7FF"><font face="MS Sans Serif" size="4" color="black"><b><center>Payment</center></b></font></td>
            <td width="5%" height="10%" bgcolor="#01A7FF"><font face="MS Sans Serif" size="4" color="black"><b><center>Tell</center></b></font></td>
        </tr>

<!-- เริ่มต้นอ่านข้อมูลจากไฟล์ .xml โดนการวนลูป -->
    <xsl:for-each select="member/detail">
        <tr>
            <td height="10%" ><font face="MS Sans Serif" size="2"><center><xsl:value-of select="id"/></center></font></td>
            <td height="10%"><font face="MS Sans Serif" size="2"><center><xsl:value-of select="name_ltname"/></center></font></td>
            <td height="10%"><font face="MS Sans Serif" size="2"><center><xsl:value-of select="amount"/></center></font></td>
            <td height="10%"><font face="MS Sans Serif" size="2"><center><xsl:value-of select="payment"/></center></font></td>
            <td height="10%"><font face="MS Sans Serif" size="2"><center><xsl:value-of select="tell"/></center></font></td>
        </tr>
    </xsl:for-each>
        </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>