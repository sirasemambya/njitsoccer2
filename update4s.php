<?php
$con=mysqli_connect("sql2.njit.edu","sbs43","hurrah37","sbs43");
$name =$_GET['name'];
$sql = "UPDATE team SET mid1 = '$name' WHERE ID = 2";

if (mysqli_query($con, $sql)) {
    echo "Record deleted";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($con);
}
header("Location: teamscoach.php");

?>
