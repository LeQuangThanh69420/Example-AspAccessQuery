<!--#include file="connection.asp"-->
<%
	sname = Request.Form("txtSName")
	saddress = Request.Form("txtSAddress")
	sphone = Request.Form("txtSPhone")
	stax = Request.Form("txtSTax")
	sstatus = Request.Form("rdSStatus")
	sql="select * from 0204466_Supplier_97 where sname like '" & sname & "'"
	rs.open sql,conn 
	if (not rs.eof) then
		session("supplier_add_error")="Danh mục " & sname & " đã tồn tại!"
		Response.Redirect("supplier_add.asp")
	else 
		'chèn vào CSDL
		sql = "insert into 0204466_Supplier_97(sname, saddress, sphone, stax, sstatus) values ('" & sname & "','" & saddress & "'," & sphone &"," & stax & ", " & sstatus & ")"
		conn.execute sql 
		session("supplier_error")="Thêm mới thành công!"
		response.redirect("supplier_view.asp")
	end if 
	rs.close
	conn.close
%>
<html>
	<head>
		<meta charset="utf-8">
		<title>Tiêu đề trang web</title>
	</head>
	<body>
	</body>
</html>