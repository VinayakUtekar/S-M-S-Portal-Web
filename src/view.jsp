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
  <tr width="50%">
	<td> <%= rno %> </td>
	<td> <%= name %> </td>
	<td> <%= sub1 %> </td>
	<td> <%= sub2 %> </td>
	<td> <%= sub3 %> </td>
	<td> <a href="?dr=<%= rno %>" onclick="return confirm('Are you Sure??')" > Delete </a> </td>
  <tr>
  </table>
</center>
</body>
</html>