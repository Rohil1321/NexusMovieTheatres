
<html>
<head>
</head>

<style>
.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;

}
.form {
  position: relative;
  z-index: 1;
  background: lightgreen;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form option{
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
body {
   /*background-image: url("uimg/citty.jpg");*/
  background-repeat: no-repeat;
  background-size: 1390px 2000px; 
}
body{
  margin:0;
  text-align: center;
}
}</style>
<br>
<br><br><br><br>


<body>
<?php
session_start();

if(isset($_POST['checko1']))
{
  $id=$_SESSION['id'];
  $dt=$_POST['date'];
  $mn=$_POST['movie_name'];
  $Timestamp = strtotime($dt);
  $day = date("l", $Timestamp);

  $_SESSION['dt']="$dt";
  $_SESSION['mn']="$mn";

  $td = date("Y-m-d");

  if ($dt<$td) {
 	echo "<script type = \"text/javascript\">
	alert(\"You have selected wrong date....... !\");
	window.location = (\"userhome.php\")
	</script>";
  }
  
  if ($day!='Monday' & $id==1) 
  {
  	echo "<script type = \"text/javascript\">
	alert(\"You have selected wrong date....... !\");
	window.location = (\"viewmv.php?id=1\")
	</script>";
  }
  if ($day!='Wednesday' & $id==2) 
  {
  	echo "<script type = \"text/javascript\">
	alert(\"You have selected wrong date....... !\");
	window.location = (\"viewmv.php?id=2\")
	</script>";
  }
  if ($day!='Friday' & $id==3) 
  {
  	echo "<script type = \"text/javascript\">
	alert(\"You have selected wrong date....... !\");
	window.location = (\"viewmv.php?id=3\")
	</script>";
  }
?>
  

  
<div class="login-page">
  <div class="form">
 
    <form class="login-form" action="book.php" method="post">

    Card no. :- <input type="text" placeholder="Cardno" name="card" style="text-align:center" minlength="12" maxlength="12" required />
    CVV :- <input type="password" placeholder="CVV" name="cvv" style="text-align:center" minlength="3" maxlength="3" required />

    OTP :- <input type="text" name="OTP" style="text-align:center" value="123" required readonly/>
    Enter your OTP :- <input type="password" placeholder="OTP" name="otp" style="text-align:center" required />
  
  
    <input type="submit" value="Checkout" name="checko2">

    </form>
  </div>
</div>
  <?php 

}
  ?>


  
</body>
</html>
