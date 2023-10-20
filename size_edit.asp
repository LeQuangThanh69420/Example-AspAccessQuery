<!--#include file="connection.asp"-->
<%
	sizeid = Request.Querystring("sizeid")
	'lấy dữ liệu cũ ra để điền vào form
	sql = "select * from 0204466_Size_97 where sizeid=" & sizeid 
	rs.open sql, conn 
	if (rs.eof) then
		session("size_error")="Dữ liệu không tồn tại!"
		Response.Redirect("size_view.asp")
	else
%>
<html>
	<head>
		<meta charset="utf-8">
		<title>Tiêu đề trang web</title>
	</head>
	<body>
		<h1 align=center>Sửa kích thước</h1>
		<center>
			<font color=red>
				<%=Session("size_edit_error")%>
			</font>
		</center>
		<form action="size_edit_action.asp" method=POST>
		<table border=0 cellspacing=5 cellpadding=5 align=center>
            <input type=hidden value="<%=rs("sizeid")%>" name="sizeid">
			<tr>
				<td>Tên nhóm:</td>
				<td><input type=text name=txtSizeName value="<%=rs("sizename")%>"></td>
			</tr>
			<tr>
				<td>Trạng thái:</td>
				<td>
					<input type=radio name=rdSizeStatus value=1 <% if (rs("sizestatus")=1) then response.write(" checked")%>>Hoạt động
					<Input type=radio name=rdSizeStatus value=0 <% if (rs("sizestatus")=0) then response.write(" checked")%>>Ngừng hoạt động
				</td>
			</tr>
			<tr>
				<td align=right><input type=submit value="Cập nhật"></td>
				<td><input type=reset value="Hủy bỏ"></td>
			</tr>
		</table>
		</form>
	</body>
	<%
		end if 
		rs.close
		conn.close 
	%>
</html>