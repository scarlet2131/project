<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<html>
<title>CHECK</title>

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
    String uname = request.getParameter("user1");
    String pass = request.getParameter("pwd1");
    //out.print(uname+" "+pass);
    res = stmt.executeQuery("select * from login");
    int flag=0;
    String name="";
    String s3="";
    while(res.next())
    {
      String s1 = res.getString("username");
      String s2 = res.getString("pwd");
      s3 = res.getString("auth");
      //out.print(s1+" "+s2);
      
      if(s1.equals(uname) && s2.equals(pass))
      {
        name = res.getString("name"); 
        flag=1;
        break;
      }
    }
    
    if(flag==0)
    {
      %><h1>User Not Verified.... Going Back..</h1>
      
     
        
      <a href="index.jsp"><button type="submit" class="btn btn-default">login</button></a> <%
    
      prep=connection.prepareStatement("insert into log values(?,?)");
      prep.setString(1,"WRONG LOGIN-> "+uname+"  "+name);
      res = stmt.executeQuery("select CURDATE()");
      res.next();
      
     String cur=res.getString(1);
     prep.setString(2,cur);
      prep.executeUpdate();
    

    }
    else if(flag==1)
    {

      %><h1>User Verified As <%out.print(name);%></h1><%
      session.setAttribute("uname", uname);
      session.setAttribute("name", name);
      String autho="a";

      prep=connection.prepareStatement("insert into log values(?,?)");
      String ac = "SUCCESSFUL LOGIN-> "+uname+"  "+name;
      prep.setString(1,ac);
      res = stmt.executeQuery("select CURDATE()");
      res.next();
      
     String cur=res.getString(1);
      prep.setString(2,cur);
      prep.executeUpdate();

      if(s3.equals(autho))
      {
        response.sendRedirect("admin.jsp");
      }
      else
      {
        response.sendRedirect("user.jsp");
      }
      /*
      prep=connection.prepareStatement("insert into log (?,?)");
      if(s3.equals("a"))
      {
        s3="admin";
      }
      else
      {
        s3="user";
      }
      String ls = "SUCCESSFUL LOGIN: "+uname+"  "+name+" "+s3;
      prep.setString(1,ls);
      res = stmt.executeQuery("select CURTIME()");
      res.next();
      
      prep.setTime(2,res.getTime(1));
      prep.executeUpdate();*/
      
    }

    

%>
  </body>
</html>