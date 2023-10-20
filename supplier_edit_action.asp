<!--#include file="connection.asp"-->
<%
	sid = Request.Form("sid")
	sname = Request.Form("txtSName")
	saddress = Request.Form("txtSAddress")
	sphone = Request.Form("txtSPhone")
	stax = Request.Form("txtSTax")
	sstatus = Request.Form("rdSStatus")
	sql = "update 0204466_Supplier_97 set sname='" & sname & "', saddress='" & saddress & "', sphone=" & sphone &", stax=" & stax &", sstatus=" & sstatus & " where sid = " & sid 
	conn.execute sql
	conn.close
	session("supplier_error") = "Cập nhật thành công!"
	Response.Redirect("supplier_view.asp")
%>
<html>
	<head>
		<meta charset="utf-8">
		<title>Tiêu đề trang web</title>
	</head>
	<body>
	</body>
</html>