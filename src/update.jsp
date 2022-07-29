<%@ page import="java.sql.*" %>
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
  <h1> UPDATE      RECORD </h1>
  <form mehtod="POST">
	<label>Roll No : </label><input type="number" name="rno"  placeholder="Enter Roll No "  required min=1 style="width:200px">
	<br><br>
	<label>Name : </label><input type="text" name="name"  placeholder="Enter Name "  required minlength="2" style="width:200px">
	<br><br>
	<label>Subject 1 : </label><input type="number" name="sub1"  placeholder="Enter Update Marks "  required min=1 max=100  style="width:200px">
	<br><br>
	<label>Subject 2 : </label><input type="number" name="sub2"  placeholder="Enter Updated Marks "  required min=1 max=100  style="width:200px">
	<br><br>
	<label>Subject 3 : </label><input type="number" name="sub3"  placeholder="Enter Updated Marks "  required min=1 max=100  style="width:200px">
	<br><br>
	<input type="submit"  value="Save" name="btn">
  </form>
  <%
	if(request.getParameter("btn") != null){
	int rno = Integer.parseInt(request.getParameter("rno"));
	String name = request.getParameter("name");
	int sub1 = Integer.parseInt(request.getParameter("sub1"));
	int sub2 = Integer.parseInt(request.getParameter("sub2"));
	int sub3 = Integer.parseInt(request.getParameter("sub3"));
	try{
		DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

		String url = "jdbc:mysql://localhost:3306/smsproject2";
		String un = "root";
		String pw = "abc456";

		Connection con = DriverManager.getConnection(url,un,pw);

		String sq = "select * from student where rno = ?";
		PreparedStatement ps = con.prepareStatement(sq);
		ps.setInt(1, rno);
		ResultSet rs = ps.executeQuery();
		if(rs.next()){
			out.println(rno + "  already exists");
		}
		else{
			String sql = "update student set name=?, sub1=?, sub2=?, sub3=? where rno=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, name);
			pst.setDouble(2, sub1);
			pst.setDouble(3, sub2);
			pst.setDouble(4, sub3);
			pst.setInt(5, rno);
			pst.executeUpdate();
			out.println("Record Updated");

		}
		con.close();
	}
	catch(SQLException e){
		out.println("issue " + e);
	}
  }
  %>
  </table>
</center>
</body>
</html>
