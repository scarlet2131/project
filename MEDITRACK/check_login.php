<?php
$name=$_GET['username'];
$pass=$_GET['pass'];
// echo "HI  ".$name." ".$pass;
$conn=mysqli_connect('localhost','root','scarlet2131','MEDITRACK');

$sql="select name,password from login";
$res=$conn->query($sql);
$f = 0;
$admin = 0;
while($row=$res->fetch_assoc())
{
	$n1=$row['name'];
	// $n2=$row['locality'];
	// $n3=$row['phone'];
	// $n4=$row['email'];
	$n5=$row['password'];

	if($n1==$name &&  $n5==$pass)
	{
		if($n1 == "shubham")
		{
			$admin = 1;
		}
		$f = 1;
		break;
	}
}


if($f==1)
{
	if($admin == 1)
	{
		header("Location: http://localhost/MEDI/hackathon_yuvaan/m/admin.php?name=".$name);
	}
	else
	{
		header("Location: http://localhost/MEDI/hackathon_yuvaan/m/main.php?name=".$name);
	}
	
}
else
{
	echo "not found";
	header("Location: http://localhost/MEDI/hackathon_yuvaan/m/index.php");

}

$conn->close();
?>