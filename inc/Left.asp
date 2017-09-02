<table width="100%">
  <tr>
    <td height="33" class="newsl"><span id=lefttitle>×ß½øÐ£Ô°</span></td>
  </tr>
  <tr>
    <td>
	<div>
      <ul id="plist4">
	  <%
	   Set rsAbout=Server.CreateObject("Adodb.Recordset")
	   rsAbout.open "select * from About",conn,1,3
	   do while not rsAbout.eof
	  %>
	    <li><a href="About.asp?id=<%=rsAbout("id")%>"><%=rsAbout("title")%></a></li>
	  <%
	   rsAbout.movenext
	   loop
	   rsAbout.close
       set rsAbout=nothing
       %>
       </ul>
    </div></td>
  </tr>
</table>