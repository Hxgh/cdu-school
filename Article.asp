<!--#include file="inc/config.asp"-->
<!--#include file="inc/conn.asp"-->
<!--#include file="inc/function.asp"-->
<%
id=Trim(request("id"))
if id="" or IsNumeric(id)=false then
  response.Redirect("index.asp")
end if
Set rs=Server.CreateObject("Adodb.Recordset")
rs.open "select * from Article where id="&id,Conn,1,2
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
    <script language=JavaScript> 
        function fontZoom(size)
        {
        document.getElementById('fontzoom').style.fontSize=size+'px'
        }
    </script>
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
    <td width="133" valign="top">
        <table width="100%">
            <tbody>
                <tr>
                    <td height="33" class="newsl"><span id="lefttitle">走进校园</span></td>
                </tr>
                <tr>
                    <td>
                        <div>
                            <ul id="plist4">
	                            <li><a href="http://www.cdu.edu.cn/">学校首页</a></li>
	                            <li><a href="#">信息平台</a></li>
	                            <li><a href="#">数据研究</a></li>
	                            <li><a href="http://computer.cdu.edu.cn/zxjy/login.do">学习平台</a></li>
	                            <li><a href="http://computer.cdu.edu.cn/lydoa">毕业设计</a></li>
                            </ul>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </td>
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