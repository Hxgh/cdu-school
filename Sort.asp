<!--#include file="inc/config.asp"-->
<!--#include file="inc/conn.asp"-->
<!--#include file="inc/function.asp"-->
<%
cid=Trim(request("id"))
if cid="" or IsNumeric(cid)=false then
   response.Redirect("index.asp")
end if
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
<!--#include file="inc/top.asp"-->
<table width="900" border="0" align="center" id="bor" bgcolor="#FFFBEE">
  <tr>
    <td width="133" valign="top"><!--#include file="inc/leftsort.asp"--></td>
    <td valign="top">
    <table width="757" align="center">
        <tr>
        <td width="32" height="33" align="center" class=whitetitle><%=cduLocation(cid)%></td>
        </tr>
    </table>
      <table width="757" align="center">
        <tr>
          <td>
		  <table width="96%"align="center">
            <tr>
              <td>
			  <div><ul id="plist3"><%=SortArticle(cid,6)%></ul></div>
              </td>
            </tr>
          </table>
         </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<!--#include file="inc/bottom.asp"-->
</body>
</html>