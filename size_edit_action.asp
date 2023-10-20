<!--#include file="connection.asp"-->
<%
	sizeid = Request.Form("sizeid")
	sizename = Request.Form("txtSizeName")
	sizestatus = Request.Form("rdSizeStatus")
	sql = "update 0204466_Size_97 set sizename='" & sizename & "',sizestatus=" & sizestatus & " where sizeid = " & sizeid 
	conn.execute sql
	conn.close
	session("size_error") = "Cập nhật thành công!"
	Response.Redirect("size_view.asp")
%>
<html>
	<head>
		<meta charset="utf-8">
		<title>Tiêu đề trang web</title>
	</head>
	<body>
	</body>
</html>