<!--#include file="connection.asp"-->
<%
	sizeid = Request.QueryString("sizeid")
	sql = "delete from 0204466_Size_97 where sizeid=" & sizeid 
	conn.execute sql 
	conn.close
	session("size_error")="Xóa thành công!"
	Response.Redirect("size_view.asp")
%>