<?php
$con=mysqli_connect("sql2.njit.edu","sbs43","hurrah37","sbs43");
$id = $_GET['mid3'];

$sql = "UPDATE team SET mid3=null WHERE mid3='$id'";

if (mysqli_query($con, $sql)) {
    echo "Record deleted";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($con);
}
header("Location: index.php");

?>
