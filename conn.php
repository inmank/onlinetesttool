<?php
echo $_POST["uName"];
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
<HTML>
<body>
<p> Test </P>
</body>
</html>