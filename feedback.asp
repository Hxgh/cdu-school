<!--#include file="inc/config.asp"-->
<!--#include file="inc/conn.asp"-->
<%
if request.Form("action")="add" then
    validCode=request.form("validCode")
   if validCode<>CStr(session("validCode")) then
      response.write("<script>alert('���������֤����ϵͳ�����Ĳ�һ�£����������룡');window.close();</script>")
   else
    data_Author= replace(request.form("data_Author"),"<","''")
    data_Title= replace(request.form("data_Title"),"<","''")
    data_Content= replace(request.form("data_Content"),"<","''")
	Conn.execute("insert into feedback(person,title,content) values('"&data_Author&"','"&data_Title&"','"&data_Content&"')")
response.write "<script language=JavaScript>alert('���������ύ�ɹ�����ȴ�����Ա��ˣ�'); window.location.href='feedbackc.asp'</script>"
   end if
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
    <td width="133" valign="top"><!--#include file="inc/Left.asp"--></td>
    <td valign="top">
    <table width="757" align="center">
      <tr>
        <td width="32" height="33" align="center" class=whitetitle>ѧ������</td>
      </tr>
    </table>
    <table cellspacing="0" cellpadding="5" width="96%" align="center" border="0" id="tab">
              <script language="JavaScript" type="text/javascript">
				function VerifyInput()
				{
				 if (document.feedback.data_Author.value == "")
				 {
				  alert("��������������");
				  document.feedback.data_Author.focus();
				  return false;
				 }
				 if (document.feedback.data_Title.value == "")
				 {
				  alert("���������Ǳ��������");
				  document.feedback.data_Title.focus();
				  return false;
				 }
			      if (document.feedback.data_Content.value == "")
				 {
				  alert("������������������");
			      document.feedback.data_Content.focus();
				  return false;
				  }
                 if (document.feedback.validCode.value == "")
				 {
                  alert("�����������֤��!");
		          document.feedback.validCode.focus();
                  return false;
                  }
				 }
			  </script>
              <form action="feedback.asp" method="post" name="feedback" id="feedback">
                <tbody>
                  <tr>
                    <td align="left">���� :</td>
                    <td width="90%"><input name="data_Author" id="inputstyle" type="text" size="15" maxlength="8"  msg="��������������" datatype="Require" /></td>
                  </tr>
                  <tr>
                    <td align="left">���� :</td>
                    <td><input name="data_Title" type="text"  id="data_Title" size="40" maxlength="30" msg="�����������������" datatype="Require" /></td>
                  </tr>
                  <tr>
                    <td valign="top" align="left">���� :</td>
                    <td ><textarea name="data_Content" rows="8" cols="70" msg="������������ѯ����" datatype="Require"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td  align="left" >��֤: </td>
                    <td ><input name="validCode" type="text" id="inputstyle" size="4" maxlength="4"  msg="��������֤��" datatype="Require" />
                    <img src="images/CheckCode.asp" style='cursor:hand;width:40px;height:14px' border='0' align='absmiddle' onClick="this.src='images/CheckCode.asp'" alt='����ˢ����֤��' /></td>
                  </tr>
                  <tr>
                    <td align="center" colspan="2"><input onclick="return VerifyInput();" type="submit" value=" �ύ���� " name="Submit" />
                        <input type="reset" value=" ������д " name="Reset" />
                        <input name="action" value="add" type="hidden" /></td>
                  </tr>
                </tbody>
              </form>
          </table>
    </td>
</table>
 <!--#include file="inc/bottom.asp"-->
</body>
</html>