
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

  df-messenger {
            --df-messenger-bot-message: #878fac;
            --df-messenger-button-titlebar-color: #df9b56;
            --df-messenger-chat-background-color: #fafafa;
            --df-messenger-font-color: white;
            --df-messenger-send-icon: #878fac;
            --df-messenger-user-message: #99b234;
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
  
<script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
<df-messenger
  intent="WELCOME"
  chat-icon="bot.png" 
  chat-background-color="white"
  chat-title="chatbot"
  agent-id="a2754a0c-4018-43ef-984d-78169ab8ce80"
  language-code="en"
></df-messenger>


    </body>
    </html>
