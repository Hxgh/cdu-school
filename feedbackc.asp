<!--#include file="inc/config.asp"-->
<!--#include file="inc/conn.asp"-->
<%
page=request("page")
up_down=request.QueryString("up_down")
Set rs=Server.CreateObject("Adodb.Recordset")
rs.open "select * from Feedback where chk=1 order by id desc",Conn,1,2
pgsz=10
 if rs.recordcount=0 then
   cur_page=1
   total=1
   session("count")=0
  else
   if isempty(session("cur_page")) or isNull(session("cur_page")) then
      session("cur_page")=0
   end if
   cur_page=session("cur_page")
   rs.pagesize=cint(pgsz)
   if (rs.recordcount/pgsz)=INT(rs.recordcount/pgsz) then
      total=INT(rs.recordcount/pgsz)
   else
      total=INT(rs.recordcount/pgsz)+1
   end if
   if page="" then
   if len(up_down)=0 then
      cur_page=1
   end if
   if up_down="up" then
      cur_page=cur_page-1
   end if
   if up_down="down" then
      cur_page=cur_page+1
   end if
   if cur_page>total then
      cur_page=total
   end if
   if cur_page=0 then
      cur_page=1
   end if
   else
   	  cur_page=page
   end if
   session("count")=rs.recordcount
   
   rs.absolutepage=cur_page
   rowcount=rs.pagesize
end if
   session("cur_page")=cur_page
   session("total")=total
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
    <td width="133" valign="top"><!--#include file="inc/Left.asp"--></td>
    <td valign="top">
    <table width="757" align="center">
      <tr>
        <td width="32" height="33" align="center" class=whitetitle>学生留言</td>
      </tr>
    </table>
      <table width="757" align="center">
      <tr>
          <td>
		  <table width="96%" align="center" cellpadding="5" cellspacing="1" id="tab">
<%
if rs.eof then 
response.Write("<tr><td align=center>暂无留言信息！</td></tr>")
else
	i=1
	do while not rs.eof and i<=pgsz%>
			<tr>
              <td style="font-size:14px;color:#000000; text-align:left;"> <strong><%=rs("person")%></strong>：<span id="righttitle"><%=rs("title")%></td>
            </tr>
            <tr>
              <td style="font-size:14px;color:#000000; text-align:left;" class="txt"><%=rs("content")%></td>
            </tr>
            <tr>
              <td style="font-size:14px;color:#000000; text-align:left;"><strong>管理员回复：</strong>
                  <p class="txt"><%=rs("reply")%></p></td>
            </tr>
<%
	i=i+1
	rs.movenext
	loop
end if
%>
            <tr>
              <td  style="font-size:14px;text-align:center;"><font><%=session("cur_page")%></font>/<font color="#FF0000"><%=session("total")%></font>, [<a href="?up_down=up">上一页</a>] [<a href="?up_down=down">下一页</a>]【<a href="feedback.asp#pub">我要留言</a>】</td>
            </tr>
          </table></td>
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
