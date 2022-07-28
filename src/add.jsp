<html>
<head>
  <title> Student Managemet System </title>
  <style>
	* { font-size:20px; font-family: Krylon; }
	body {	background-color:orange;  color:black;}
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
  <h1> ADD     RECORD</h1>
  <form mehtod="POST">
	<label>Roll No :   </label><input type="number" name="rno"  placeholder="Enter Roll No "  required min=1 style="width:200px">
	<br><br>
	<label>Name :      </label><input type="text" name="name"  placeholder="Enter Student Name "  required minlength="2" style="width:200px">
	<br><br>
	<label>Subject 1 : </label><input type="number" name="sub1"  placeholder="Enter Marks "  required min=1 max=100  style="width:200px">
	<br><br>
	<label>Subject 2 : </label><input type="number" name="sub2"  placeholder="Enter Marks "  required min=1 max=100  style="width:200px">
	<br><br>
	<label>Subject 3 : </label><input type="number" name="sub3"  placeholder="Enter Marks "  required min=1 max=100  style="width:200px">
	<br><br>
	<input type="submit"  value="Save" name="btn">
  </form>
</center>
</body>
</html>