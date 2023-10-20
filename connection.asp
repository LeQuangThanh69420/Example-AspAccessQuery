<%
    set conn = Server.CreateObject("ADODB.Connection")
    conn.open "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" & Server.Mappath("Database1.accdb")
    set rs = Server.CreateObject("ADODB.Recordset")
    set rs1 = Server.CreateObject("ADODB.Recordset")
    set rs2 = Server.CreateObject("ADODB.Recordset")
    set rs3 = Server.CreateObject("ADODB.Recordset")
%>