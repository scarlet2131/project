<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<html>
<title>REGISTER</title>

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
              #head
              {
                position: absolute;
                border:2px solid #00994C;
                left:38%;
                top:2%;
                padding:5px;
                box-shadow: 5px 5px #888888;
                color:#003300;
              }

</style>
</head>
<body>
    <!--JDBC CONNECTION WITH MYSQL-->    
        <%
              Class.forName("com.mysql.jdbc.Driver");
              String connectionURL= "jdbc:mysql://localhost:3306/Diablo";
  
              
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
              stmt3 = connection.createStatement();      

        %>  
<!--CONNECTION DONE-->
<% 
  String user1=request.getParameter("user");
  String name1=request.getParameter("name");
  String email=request.getParameter("email");
  String pass=request.getParameter("pwd");
   String auth=request.getParameter("auth");
  String gender=request.getParameter("gender");
 


    
   

    res = stmt.executeQuery("select * from login");
    int flag=0;
    String name="";
    while(res.next())
    {
      String s1 = res.getString("username");
      String s2 = res.getString("email");
      if(user1.equals(s1) && email.equals(s2))
      {
        flag=1;
        break;
      }
    }
    if(flag==1)
    {
      %><h1><center><font size="6" color="red">USER EXISTS</font></h1>
       <center><a href="index.jsp"><button type="submit" class="btn btn-danger">LOGIN</button></a></center>
       <%
    }
    else
    {
      prep=connection.prepareStatement("insert into login values(?,?,?,?,?,?)");
      prep.setString(1,user1);
      prep.setString(2,name1);
      prep.setString(3,email);
      prep.setString(4,pass);
      prep.setString(5,auth);
      prep.setString(6,gender);
      prep.executeUpdate();
      %>
       <div id="head">          
      <font size="5" face="arial">SUCCESSFULLY REGISTERD</font></div><br><br>
      <center><br><br>
      <a href="index.jsp"><button type="submit" class="btn btn-danger">LOGIN</button></a></center>
      <%
    }
    

   


   
  %>

 




  </body>
  </html>
