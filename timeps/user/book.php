<?php
session_start();
if(isset($_POST['checko2']))
	{
$um=$_SESSION['uname'];
$dt=$_SESSION['dt'];
$qt=$_SESSION['qt'];
$mn=$_SESSION['mn'];
include('db.php');
$con = new mysqli("localhost", "root", "","tp");
 $query="SELECT * FROM tb_registration WHERE uname='".$um."'";
 $sql=mysqli_query($con,$query);
  
 while($row=mysqli_fetch_assoc($sql))
{ 
	$pn=$row['phone'];
	$em=$row['email'];
}
		$con = new mysqli("localhost", "root", "","tp");
		$query="INSERT INTO tb_ticket(uname,email,phone,qty,movie_name,show_date) values('$um','$em','$pn','$qt','$mn','$dt')";

		
		if (!mysqli_query($con, $query))
		{
			die('Error:' .mysqli_error($con));
		} 
		else 
		{
			header('location:mt_bill.php');
		}
	}

?>



