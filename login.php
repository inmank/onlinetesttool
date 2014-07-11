<!DOCTYPE html>
<?php
session_start();
include "dbconfig.php";

if(isset($_POST["registeract"])) {
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if (!$conn)
{
    die('Could not connect: '.mysql_error());
}
mysql_select_db($dbname, $conn) or die('Could not connect: '.mysql_error());

$sql1 = "select * from userdetails where Id='".$_POST["uName"]."'";
//Querying the database. 
$result = mysql_query($sql1, $conn) or die("Could not execute query");

//Getting the number of rows returned by the SQL Server. 
$rows = @mysql_num_rows($result);	

if ($rows > 0) {
$arr = mysql_fetch_array($result);

if ($_POST["pWord"] != $arr["Password"]) {
	die(header("location: ".$path."login.php?msg='Invalid Password Please try again'"));
} else if ($_POST["role"] != $arr["Role"]) {
	header("location: ".$path."login.php?msg='Accees Restricted. Contact Admin.'");
} else {	
	mysql_close($conn);
	if ($arr["Role"] == "Admin")
		header("location: ".$path."admin.php");
	else
		header("location: ".$path."launcher.php");
}
} else {
	mysql_close($conn);
	header("location: ".$path."login.php?msg='Invalid username please try again'");
} 
}
?>
<html>
<head>
	<title>Online Assement Tool</title>
</head>
<body>
<script type="text/javascript">
document.getElementById("registeract").value = "";
function validate() {
if (document.getElementById("uName").value == "") {
	alert("Username cannot be blank");
	return false;
}
	
if (document.getElementById("pWord").value == "") {
	alert("Password field cannot be blank");
	return false;
}

if (document.getElementById("role").value == "") {
	alert("Role field cannot be left blank");
	return false;
}

document.getElementById("registeract").value = "Register";
}
</script>
<form name="login" action="./login.php" method="post">
Name:<input type="text" name="uName" id="uName"/>
Password:<input type="password" name="pWord" id="pWord"/>
Role:<input type="list" list="roles" name="role" id="role">
<input name="submit" type="submit" id="submit" onclick="return validate()" value="Login">
<input name="reset" type="reset" id="reset" value="Reset">
<input type="hidden" name="registeract" id="registeract" value="">
<label name="error" id="error" value=""/>
<?php 
if(isset($_GET["msg"]))
	echo $_GET["msg"];
?>
</form>
<datalist id="roles">
<option>Admin<option>
<option>User<option>
</datalist>
<body>
</html>