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
                #box
              

                {
                  position:absolute;
                  text-align: center;
                  top:15%;
                  left:28%;
                  width:40%;
                  border:2px solid black;

                  background-color: white;
                  height:260px;
                  padding:10px;
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
    String  source=request.getParameter("source");
    String dest=request.getParameter("dest");
    String date=request.getParameter("date");
    String name=(String)session.getAttribute("name");
    String tickets=request.getParameter("tickets");
    int l  = tickets.length();
    int sum = 0;
    int b=1;
    for(int i=l-1;i>=0;i--)
    {
      int num = tickets.charAt(i)-'0';
      sum = sum*b+num;
      b = b*10;
    }
    int t2 = sum;

    res = stmt.executeQuery("select * from bus_name");
    int flag=0;
    Random rand = new Random(); 
    int r_num = rand.nextInt(6)+1;
    int c = 0;
    String bus_name="";
    int fare=0;
    while(res.next())
    {
       bus_name=res.getString("bname");
        fare=res.getInt("fare");
        c++;
        if(c==r_num)
        {
          break; 
        }
      
        

    }
    fare=fare*t2;
    /**/



%>
  <br><br>
  <center>
      <div class="panel-group">
        <div class="panel panel-default">
          <div class="panel-body"></div>
        </div>
        <div class="panel panel-default">
          <div class="panel-body">
            <% 
            res = stmt.executeQuery("select remaining_seats from bus_name where bname = '"+bus_name+"'");
            res.next();
            int rem = res.getInt(1);
            if(rem-t2<0)
            {
              %><h2><center>ERROR! <br>No Seats Available Please book again</center></h2><br>
              <a href="user.jsp"><button type="submit" class="btn btn-danger">Book</button></a><%
            }
            else
            {
              %><div id="head">          
              <font size="5" face="arial">SUCCESSFULLY BOOKED</font></div><br><br>
              
             <div id="box"> 
              <% out.print("NAME:"+ name);%>
              <br><br><%
              out.print("BUS SERVICE:" + bus_name);
              %><br><br><%
              out.print("FROM:" + source);
              %><br><br><%
              out.print("to:" + dest);
              %><br><br><%

              out.print("TICKETS:" + tickets);
              %><br><br><%
              out.print("FARE:"+ fare);
              %><br><br><%
              out.print("DATE OF JOURNEY:"+ date);%><%
              prep=connection.prepareStatement("insert into user_info values(?,?,?,?,?,?,?)");
              prep.setString(1,name);
              prep.setString(2,bus_name);
              prep.setInt(3,t2);
              prep.setInt(4,fare);
              prep.setString(5,date);
              prep.setString(6,source);
              prep.setString(7,dest);
              prep.executeUpdate();
               prep=connection.prepareStatement("update bus_name set remaining_seats = ? where bname=?");
               prep.setInt(1,rem-t2);
               prep.setString(2,bus_name);
               prep.executeUpdate();%>
               <br><br><br><br><br><br>
               <center><a href="user.jsp"><button type="submit" class="btn btn-danger">Book</button></a></center>
              <%
            }
          
            %>
          </div>
          </div>
        </div>
      </div>
    </center>
</body>
</html>

