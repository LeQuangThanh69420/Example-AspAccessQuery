<!--#include file="connection.asp"-->
<%
	sid = Request.QueryString("sid")
	sql = "delete from 0204466_Supplier_97 where sid=" & sid 
	conn.execute sql 
	conn.close
	session("supplier_error")="Xóa thành công!"
	Response.Redirect("supplier_view.asp")
%>