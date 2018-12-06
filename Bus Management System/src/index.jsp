<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<html>
<title>HOME</title>

      <head>
            <!--minfied CSS compiled -->
            
              <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
             <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
            <link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css%22">

               <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-resource.min.js">
                </script>
                <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.min.js">
               </script>
                <script src="https://cdn.firebase.com/js/client/2.0.4/firebase.js"></script>
                <script src="https://cdn.firebase.com/libs/angularfire/0.9.0/angularfire.min.js"></script>

             <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
             <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
             <script src="http://code.angularjs.org/1.2.4/angular-route.js"></script>
             <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
             <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 
              <script src='https://code.responsivevoice.org/responsivevoice.js'></script>
             
              <style>

              #tabs
              {
              	position: absolute;
              	top:13%;
              	width:30%;
              	height:100%;
              	left: 33%;
              	font-family: arial;
              }

              #tab_col
              {
              	color: rgb(255, 108, 39);
              	width:50%;

              }
              #reg-tab
              {
              	position: absolute;
              	top:8%;
              	width:50%;
              	height:100%;
              	left:3%;
              	font-family:arial;


              }
              .nav-tabs{
				  background-color:6874C0;
				  color:white;
				}
				.tab-content{
				    background-color:E6EDF4;
				    color:black;
				    height:77%;
				    padding:5px;
				    border:2px solid black;
				}
				.nav-tabs > li > a{
				  border: medium none;

				}
				.nav-tabs > li > a:hover{
				  background-color: #303136 !important;
				    border: medium none;
				    border-radius: 0;
				    color:#fff;
				}
				#head
				{
					position: absolute;
					border:2px solid black;
					left:38%;
					top:2%;
					padding:5px;
					box-shadow: 5px 5px #888888;
				}
				#back2
				{
					position: absolute;
					top:10%;
					right:1%;
				}


          </style>
       </head>
       <body >

       	<!--JDBC CONNECTION WITH MYSQL-->    
		<%
			/*
		      Class.forName("com.mysql.jdbc.Driver");
              
              Connection connection = null;
              connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FBus","root","scarlet2131");

              Statement stmt=null;
              Statement stmt2 = null;
              Statement stmt3 = null;
              PreparedStatement prep=null;
              ResultSet res=null;
              ResultSet res2=null;
              ResultSet res3 = null;
              stmt = connection.createStatement();
              stmt2 = connection.createStatement();
              stmt3 = connection.createStatement();  */    
 

		%>  
<!--CONNECTION DONE-->
<div id="head">          
<font size="5" face="arial">MATRIX BUS SERVICES</font></div>


<div id="back"  style="opacity:1;">
	<img src="poly.jpg" width="50%"/>

<div id="back2"  style="opacity:1;">
	<img src="poly.jpg" width="100%"/>
</div>
       <div id="tabs">
		       	<ul class="nav nav-tabs" id="myTab" role="tablist">
		       		
				  <li class="nav-item">

				   <a class="nav-link active" id="home-tab" data-toggle="tab" href="#login" role="tab" aria-controls="home" aria-selected="true">LOGIN</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#register" role="tab" aria-controls="profile" aria-selected="false">REGISTER</a>
				  </li>
				</ul>
			
				
		<div class="tab-content" id="myTabContent">

			
			  <div class="tab-pane fade show active" id="login" role="tabpanel" aria-labelledby="home-tab">
			  	
			  	<form action="check.jsp" method = "post">
			  	 	<div class="form-group">
					    <label for="user1">Username:</label>
					    <input class="form-control" name="user1" style="width:85%;" autocomplete="off" required/>
					  </div>
					  <div class="form-group">
					    <label for="pwd1">Password:</label>
					    <input type="password" class="form-control" name="pwd1" style="width:85%;" autocomplete="off" required/>
					  </div>
					  <button type="submit" class="btn btn-danger">Submit</button>
				</form>

			  	 
			  </div>

			  <div class="tab-pane fade" id="register" role="tabpanel" aria-labelledby="profile-tab">
			  	<div id = "reg-tab">
			  	<form action="register.jsp" method="post">
			  	 	<div class="form-group">
					    <label for="user">Username:</label>
					    <input type="text" class="form-control" name="user" style="width:150%;" autocomplete="off" required>
					  </div>
					  <div class="form-group">
					    <label for="name">Name:</label>
					    <input type="text" class="form-control" name="name" style="width:150%;" autocomplete="off" required>
					  </div>
					  <div class="form-group">
					    <label for="email">Email address:</label>
					    <input type="text" class="form-control" name="email" style="width:150%;" autocomplete="off" required>
					  </div>
					  
					  <div class="form-group">
					    <label for="pwd">Password:</label>
					    <input type="password" class="form-control" name="pwd"  style="width:150%;" autocomplete="off" required>
					  </div>
					  
						  <input type="radio" name="gender" value="male" checked> Male
						  <input type="radio" name="gender" value="female"> Female
						  <input type="radio" name="gender" value="other"> Other 

						  <br><br>

						  <input type="radio" name="auth" value="u" checked > User
						  <input type ="radio" name="auth" value="a" checked> Admin
						  <br>
						  <br>					
					  
					  <button type="submit" class="btn btn-danger">Submit</button>
				</form> 
				</div>
			  </div>
			  
		</div>
	</div>
</div>
       </body>
</html>
