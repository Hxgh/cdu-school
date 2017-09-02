<header class="box box0">
    <div class="header">
        <div class="header-box">
            <div class="header-logo">
                <a href="index.asp"><img src="../images/yz/image/logo.png" id="logo"></a>
            </div>
            <div class="header-m">
                <table width="650" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td>
                        <div id="menu">
                            <ul>
                                <%
                                Set rsMenu=Server.CreateObject("Adodb.Recordset")
                                rsMenu.open "select top 10 * from SClass where tid=0 and IsMenu=1 order by pid asc",conn,1,3
                                do while not rsMenu.eof
                                %>
                                <li>
                                    <%if rsMenu("yn")=2 then
                                    response.write"<a href=""Sort.asp?id="&rsMenu("id")&""">"&rsMenu("cname")&"</a>"
                                    elseif rsMenu("yn")=1 then
                                    response.write"<a href=""About.asp?id="&rsMenu("id")&""">"&rsMenu("cname")&"</a>"
                                    else
                                    response.write"<a href="""&rsMenu("content")&""">"&rsMenu("cname")&"</a>"
                                    end if%>
                                </li>
                                <%
                                rsMenu.movenext
                                loop
                                rsMenu.close
                                set rsMenu=nothing
                                %>
                            </ul>
                        </div> 
                    </td>
                  </tr>
                </table>
            </div>
            <div class="search-box">
                <form id="form1" name="form1" method="post" action="search.asp"> 
                    <input type="text" name="keyword" id="keyword"  class="search-start" value="" placeholder="ËÑË÷" onfocus="this.className='search-end'" onblur="this.className='search-start'" >
                </form>
            </div>
        </div>
    </div>
</header>
