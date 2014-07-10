<?php
if(isset($_POST["uName"])) {
echo "inside";
$link = mysql_connect('localhost', 'root', '');
if (!$link)
{
    die('Could not connect: '.mysql_error());
}
mysql_select_db("oatools", $link);
}
?>
<html>
<head>
	<title>Online Assement Tool</title>
</head>
<body>
<script type="text/javascript">
function validate() {

}
</script>
<form name="login" action="./conn.php" method="post">
Name:<input type="text" name="uName" />
Password:<input type="password" name="pWord" />
<button type="submit" onclick="validate()">submit</button>
</form>
<body>
</html>