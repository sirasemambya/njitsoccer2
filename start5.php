<?php
$con=mysqli_connect("sql2.njit.edu","sbs43","hurrah37","sbs43");
$start =$_GET['start'];
$sql = "UPDATE team SET mid2s = '$start' WHERE ID = 2";

if (mysqli_query($con, $sql)) {
    echo "Record deleted";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($con);
}
header("Location: teamscoach.php");

?>
