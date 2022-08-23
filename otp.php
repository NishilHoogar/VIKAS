<?php
$err ="";
$ses = "";


if (isset($_POST['btn'])) {

echo $otp = rand(1111,9999);

$no = $_POST['num'];
if(preg_match("/^\d+\.?\d*$/",$no) && strlen($no)==10){

$fields = array(
"variables_values" => "$otp",
"route" => "otp",
"numbers" => "$no",
);

$curl = curl_init();

curl_setopt_array($curl, array(
CURLOPT_URL => "https://www.fast2sms.com/dev/bulkV2",
CURLOPT_RETURNTRANSFER => true,
CURLOPT_ENCODING => "",
CURLOPT_MAXREDIRS => 10,
CURLOPT_TIMEOUT => 30,
CURLOPT_SSL_VERIFYHOST => 0,
CURLOPT_SSL_VERIFYPEER => 0,
CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
CURLOPT_CUSTOMREQUEST => "POST",
CURLOPT_POSTFIELDS => json_encode($fields),
CURLOPT_HTTPHEADER => array(
"authorization: MbiVmYwZOPK6eGhN52jdUW17ko9zBTCrA0fcspRyJHlFt3vgnL2TxcKuVtXmiSL8RgpAUWI17ke3jbJq",
"accept: */*",
"cache-control: no-cache",
"content-type: application/json"
),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
echo "cURL Error #:" . $err;
} else {
$data = json_decode($response);
//$sts = $data->return;
//if ($sts == false) {
$err = "Otp Not Send";
//}else{
$ses = "Your OTP is send";
//}
}


}else{
$err = "Invalied Mobile Number";
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
  border: 10px solid #0a0a0a;
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
	
<form action="login.php" method="post">
	<center>
    <div class="box">
      <h2 >OTP VARIFICATION</h2>
<label for="username">PHONE NO</label>
<br>
<input type="text" id="num" name="num" placeholder="PHONE NUMBER" class="form-control" required>
<br>
<button type="submit" id="btn" name="btn" class="btn btn-primary">SEND OTP</button>
</div>
</center>
</form>
<p class=" text-center text-danger"><?php  $err; ?></p>
<p class=" text-center text-success"><?php echo $ses; ?></p>

	</body>
  </html>