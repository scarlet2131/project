<?php

	$con=mysqli_connect('localhost','root','scarlet2131','MEDITRACK');
	$str=$_POST['str'];
	$s=explode(",",$str);
	$name=$s[0];
	$med=$s[1];
	$quant=$s[2];
	$date=$s[3];
	$auth = $s[4];
	echo $name." ".$date;


	$sql="insert into user values('$name','$med','$date','$quant')";
	if($con->query($sql))
	{
		echo 'ENTERED SUCCESSFULLY';
	}
	else
	{
		echo 'UNABLE TO ENTER';
	}



?>