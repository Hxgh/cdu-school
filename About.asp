<!--#include file="inc/config.asp"-->
<!--#include file="inc/conn.asp"-->
<!--#include file="inc/function.asp"-->
<%
id=Trim(request("id"))
if id="" or IsNumeric(id)=false then
  response.Redirect("About.asp?id=1")
end if
set rs=Server.CreateObject("Adodb.Recordset")
rs.open "select * from About where id="&id&"",Conn,1,2
%>
<!doctype html>
<html>
<head>
    <!-- Basic Page Needs -->
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="keywords" content="<%=keywords%>" />
    <meta name="description" content="<%=description%>" />
    <title><%=SiteName%></title>
    <!-- javascript -->
    <script type="text/javascript"  rel="stylesheet" src="../images/yz/js/index.js"></script>
    <!-- css -->
    <link href="images/school.css" rel="stylesheet" type="text/css">
    <link href="images/lh.css" rel="stylesheet" type="text/css">
    <link type="text/css" rel="stylesheet" href="../images/yz/css/style.css">
    <!-- favicons -->
    <link rel="shortcut icon" href="favicon.ico">
<!--#include file=images/ini.sys -->
</head>
<body>
<!-- header -->
<!--#include file="inc/top.asp"-->
<table width="900" border="0" align="center" id="bor" bgcolor="#FFFBEE">
  <tr>
    <td width="133" valign="top"><!--#include file="inc/Left.asp"--></td>
    <td valign="top">
    <table width="757" align="center">
      <tr>
        <td width="32" height="33" align="center" class=whitetitle><%=rs("title")%></td>
      </tr>
    </table>
      <table width="757" align="center">
        <tr>
          <td><table width="96%" align="center">
            <tr>
              <td class=txt><%=rs("content")%></td>
            </tr>
          </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<%
rs.close
set rs=nothing
%>
<!--#include file="inc/bottom.asp"-->
</body>
</html>