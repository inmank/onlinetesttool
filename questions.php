<?php echo " Inside questions";
?>
<html>
<head>
	<title>Online Assement Tool</title>
</head>
<body>
<script type="text/javascript">
function validate() {
for (i=1; i < 50; i++) {
var qObj = document.getElementById("option1"+i);
var aObj = document.getElementById("answer"+i);

if ( qObj == null)
	break;
	
alert(getSelectedValue(i));
alert(aObj.value);
if (getSelectedValue(i) == "") {
	alert("All questions needs to be answered");
	return false;
}
aObj.value = aObj.value + "_" + qObj.value;

}
}

function getSelectedValue(qnum) {
alert(1);
for (i=1; i < 5; i++) {
var qObj = document.getElementById("option"+i+qnum);
if (qObj == null) 
	return "";

if (qObj.checked())
	return qObj.value;

}
return "";
}	

function confirm() {
}
</script>
<form name="launch" action="./validate.php" method="post">
<?php 
include "dbconfig.php";

$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if (!$conn)
{
    die('Could not connect: '.mysql_error());
}
mysql_select_db($dbname, $conn) or die('Could not connect: '.mysql_error());
$qnum = 1;
createQuestions("qa_basic", 5, $conn, $qnum);
createQuestions("qa_medium", 3, $conn, $qnum);
createQuestions("qa_expert", 2, $conn, $qnum);

function createQuestions($tablename, $count, $connection, $qnum) {
 global $qnum;
$query = "SELECT * FROM ".$tablename." ORDER BY RAND() LIMIT ".$count;
//Querying the database. 
$result = mysql_query($query, $connection) or die("Could not execute query:".mysql_error());

while($row=mysql_fetch_array($result)) {
echo $qnum.". ".$row["question"]."<br>";
echo "<input type='radio' name='option".$qnum."' id='option1".$qnum."' value=''>".$row["option1"]."<br>";
echo "<input type='radio' name='option".$qnum."' id='option2".$qnum."' value='".$row["option2"]."'>".$row["option2"]."<br>";
if (isset($row["option3"])) echo "<input type='radio' name='option3".$qnum."' id='option".$qnum."' value='".$row["option3"]."'>".$row["option3"]."<br>";
if (isset($row["option4"])) echo "<input type='radio' name='option4".$qnum."' id='option".$qnum."' value='".$row["option4"]."'>".$row["option4"]."<br>";
if (isset($row["option5"])) echo "<input type='radio' name='option5".$qnum."' id='option".$qnum."' value='".$row["option5"]."'>".$row["option5"]."<br>";

echo "<input type='hidden' name='answer".$qnum."' id='answer".$qnum."'value='".$row["qid"]."'>";
echo "<br><br>";
$qnum++;
}
}
?>
<input name="submit" type="submit" id="submit" onclick="return validate()" value="Submit">
<input name="reset" type="reset" id="reset" onclick="return confirm()" value="Reset">
</form>
</body>
</html>