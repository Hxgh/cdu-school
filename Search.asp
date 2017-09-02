<!--#include file="inc/config.asp"-->
<!--#include file="inc/conn.asp"-->
<!--#include file="inc/function.asp"-->
<%
page=request("page")
up_down=request.QueryString("up_down")
keyword=replace(request.form("keyword"),"<","''")
Set rs=Server.CreateObject("Adodb.Recordset")
rs.open "select * from Article where title like '%"&keyword&"%' order by addtime desc",Conn,1,2
pgsz=15
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
<table width="900"align="center"id="bor" bgcolor="#FFFBEE">
  <tr>
    <td valign="top">
        <table width="757" align="center">
            <tr>
                <td width="32" height="33" align="center" class=whitetitle>搜索信息</td>
            </tr>
        </table>
    </td>
  </tr>
  <tr>
        <tr>
            <td>	  
	            <table width="98%"align="center">
                    <tr>
                        <td>
                            <div>
			                    <ul id="plist3">
    <%
    if rs.eof then 
    response.Write("<tr><td align=center>报歉！未找到符合条件的内容！</td></tr>")
    else
    i=1
    do while not rs.eof and i<=pgsz%> <li><a href="Article.asp?id=<%=rs("id")%>" target="_blank" title="<%=rs("title")%>"><%=left(rs("title"),40)%></a><span> <%=rs("addtime")%> </span></li>
    <%
    i=i+1
    rs.movenext
    loop
    end if
    %>
					 
			                    </ul>
			                </div>
                        </td>
                    </tr>
                    </table>
                        <table width="98%"align="center"id="tab">
                <tr>
                    <td style="font-size:14px;"align="center" bgcolor="#FFFBEE"><font style="color:#000"><%=session("cur_page")%></font>/<font style="color:#000"><%=session("total")%></font>, [<a href="?keyword=<%=keyword%>&up_down=up">上一页</a>] [<a href="?keyword=<%=keyword%>&up_down=down">下一页</a>]</td>
                </tr>
            </td>
        </tr>
    </table>
</tr>
</table>
<!--#include file="inc/bottom.asp"-->
</body>
</html>