<?php

	$con=mysqli_connect('localhost','root','scarlet2131','MEDITRACK');
	$str=$_POST['str'];
	//echo $str;
	$s=explode(",",$str);
	$name=$s[0];
	$loc=$s[1];
	$phone=$s[2];
	$email=$s[3];
	$pass = $s[4];
	//echo $name." ".$pass;


	$sql="insert into login values('$name','$loc','$phone','$email','$pass')";
	if($con->query($sql))
	{
		echo 'REGISTERED SUCCESSFULLY';
	}
	else
	{
		echo 'UNABLE TO REGISTER';
	}



?>