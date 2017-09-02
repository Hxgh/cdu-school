<%
DIM Conn,Connstr
set conn=server.createobject("adodb.connection")
Connstr="driver={SQL Server};server=(local);uid=sa;pwd=school;database=school"
conn.open Connstr
%>