
<?php
$host="localhost";
$user="root";
$password = "";
$db="custlogin";

mysql_connect($host,$user,$password);
mysql_select_db($db);

if(isset($_POST['username']))
{
  $username=$_POST['username'];
  $password=$_POST['password'];
  $sql="select *from cust_login where username='".$username."' AND password='".$password."' limit 1";

  $result=mysql_query($sql);

  if(mysql_num_rows($result)==1)
  {
    echo "you have successfully logged in";
    header("Location: discover.php");
    exit();
  }
  else {
    echo "You have entered incorrect password";
    exit();
  }
}
?>



<!DOCTYPE html>
<html lang="en">
<head>
    
<meta charset="UTF-8">
<style>
body
{
  background-image: url("login.jpeg");
}

button
{
  background-color: #a47027;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 40%;
  opacity: 0.9;
}
input[type=text], input[type=password] {
  width: 60%;
  padding: 20px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border:black;
  background: whitesmoke;
  text-align: center;
}
.box
{
  width: 20%;
  border: 10px solid #060606;
  border-radius: 20px;
  padding: 20px;
  margin: 110px;
  color: black;
}

</style>
<title>
</title>
</head>

<body >
    
<form method="POST" action="#">
    <center>
    <div class="box">
      <h2 >CUSTOMER LOGIN</h2>

<input type="text" id="username" name="username" placeholder="Username" required>
<br>

<input type="password" id="password" name="password" placeholder="Password" required>
<br>
<button type="submit">LOG IN</button>
</div>
</center>
</form>



    </body>
    </html>