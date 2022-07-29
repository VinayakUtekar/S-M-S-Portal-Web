<%@ page import="java.sql.*" %>

<%
	if(request.getParameter("dr") != null)
	{
	try{
		DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

		String url = "jdbc:mysql://localhost:3306/sms_4july22";
		String un = "root";
		String pw = "abc456";

		Connection con = DriverManager.getConnection(url,un,pw);

		String sql = "delete from student where  rno = ?";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, Integer.parseInt(request.getParameter("dr")));
		pst.executeUpdate();

		con.close();
	}
	catch(SQLException e){
		out.println("issue " + e);
	}
	}
%>
<html>
<head>
  <title> Student Managemet System </title>
  <style>
	* { font-size:20px; font-family: Krylon; }
	body {	background-color:lightgray;  color:black;}
	.nav { background-color:black; }
	.nav a { color:white; text-decoration:none; padding:40px; }
	.nav a:hover { color:yellow; } 
	td { text-align : center; }
  </style>
</head>
<body>
  <center>
  <div class="nav">
	<a href="index.jsp"> Home Page</a>
	<a href="add.jsp"> Create Record</a>
	<a href="update.jsp"> Update Record </a>
	<a href="view.jsp"> View/Delete Records</a>
  </div>
  <h1> VIEW / DELETE RECORD </h1>
  <table border="2"  style="width:80%" >
 	<tr>
	   <th> Rno  </th>
	   <th> Name  </th>
	   <th> Subect1  </th>
	   <th> Subect2  </th>
	   <th> Subect3  </th>
	   <th> Delete  </th>
	</tr>	
  <%
	try{
		DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

		String url = "jdbc:mysql://localhost:3306/smsproject2";
		String un = "root";
		String pw = "abc456";

		Connection con = DriverManager.getConnection(url,un,pw);

		String sql = "select * from student";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
			int rno = rs.getInt(1);
			String name = rs.getString(2);
			Double sub1 = rs.getDouble(3);	
			Double sub2 = rs.getDouble(4);
			Double sub3 = rs.getDouble(5);
  %>
  <tr width="50%">
	<td> <%= rno %> </td>
	<td> <%= name %> </td>
	<td> <%= sub1 %> </td>
	<td> <%= sub2 %> </td>
	<td> <%= sub3 %> </td>
	<td> <a href="?dr=<%= rno %>" onclick="return confirm('Are you Sure??')" > Delete </a> </td>
  <tr>
  <%
		}
		con.close();
	}
	catch(SQLException e){
		out.println("issue " + e);
	}
  %>
  </table>
</center>
</body>
</html>
