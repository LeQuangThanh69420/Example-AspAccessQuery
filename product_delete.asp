<!--#include file="connection.asp"-->
<%
	pid = Request.QueryString("pid")
	sql = "delete from [0204466_Product_97] where pid = " & pid 
	conn.execute sql
	Session("product_error")="Xóa thành công!"
	Response.redirect("product_view.asp")
%>