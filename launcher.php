<?php
echo "Inside Launcher";
?>
<html>
<head>
	<title>Online Assement Tool</title>
</head>
<body>
<script type="text/javascript">
</script>
<form name="launch" action="./questions.php?test='Optical Basics'" method="post">
<table border="1">
<tr>
	<th>Exam name</th>
	<th>Time Limit</th>
	</th></th>
</tr>
<tr>
	<td>Optical Basics</td>
	<td>30 min</td>
	<td><input name="submit" type="submit" id="submit" value="TakeTest"></td>
</tr>
</table>
<br/>
Instructions:

<?php 
if(isset($_GET["msg"]))
	echo $_GET["msg"];
?>
</form>
</body>
</html>