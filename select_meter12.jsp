<%@ page import="java.sql.*,java.util.*" %>

<%! 
	Connection con;
	ResultSet rs,rs1;
	Statement st,st1;
%>

<html>
<body>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center"><b><font face="Monotype Corsiva" size="6" color="#FF0000">
View Meter Details</font></b></p>
<form action="view_meter12.jsp" >
<table align="center" width="306">
<tr>
 <td width="252"> <b><font face="Courier New" size="4">Select the Meter ID</font></b> 
 </td>

 <td width="44">
 <%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:power","power","power");
	st=con.createStatement();
String jy = "select * from meter ";
	rs = st.executeQuery(jy);
	%>
	<select size="1" name="no">
	<%
	while(rs.next())
	{
	String no = rs.getString(3);
	%>
	
	<option> <% out.println(no);%> </option>	
	<%
	}
	%>
 </td>
  </tr>
  <tr><td> <input type="Submit" value="Submit"></td></tr>
 </table>
 </form>
 </body></html>