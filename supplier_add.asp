<html>
	<head>
		<meta charset="utf-8">
		<title>Tiêu đề trang web</title>
	</head>
	<body>
		<h1 align=center>Thêm mới nhà cung cấp</h1>
		<center>
			<font color=red>
				<%=Session("supplier_add_error")%>
			</font>
		</center>
		<form action="supplier_add_action.asp" method=POST>
		<table border=0 cellspacing=5 cellpadding=5 align=center>
			<tr>
				<td>Tên supplier:</td>
				<td><input type=text name=txtSName></td>
			</tr>
            <tr>
				<td>Địa chỉ:</td>
				<td><input type=text name=txtSAddress></td>
			</tr>
            <tr>
				<td>Sđt:</td>
				<td><input type=text name=txtSPhone></td>
			</tr>
            <tr>
				<td>Tax:</td>
				<td><input type=text name=txtSTax></td>
			</tr>
			<tr>
				<td>Trạng thái:</td>
				<td>
					<input type=radio name=rdSStatus value=1 checked>Hoạt động
					<Input type=radio name=rdSStatus value=0>Ngừng hoạt động
				</td>
			</tr>
			<tr>
				<td align=right><input type=submit value="Gửi đi">
				</td>
				<td><input type=reset value="Hủy bỏ"></td>
			</tr>
		</table>
		</form>
	</body>
</html>