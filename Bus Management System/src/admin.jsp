<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<html>
<title>Admin</title>

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
              * {box-sizing: border-box}

/* Style the tab */
                #tab {
                    position: fixed;

                    border: 1px solid #ccc;
                    
                    background-color: #f1f1f1;
                    width: 15%;
                    height: 800px;
                }
                #tab2
                {
                 
                    position: fixed;
                    top:2%;
                    right:2%;
                  
                    border: 1px solid #ccc;
                   
                    background-color: #f1f1f1;
                    width: 20%;
                    height: 800px;
                }
                
                #tab3
                {
                  position: fixed;
                  top:0%%;
                  padding-right: 1500px;
                  background-color: grey;
                 
                  
                }

                /* Style the buttons that are used to open the tab content */
                #tab button {
                    display: block;
                    
                    color: black;
                    padding: 22px 16px;
                    width: 100%;
                    border: none;
                    outline: none;
                    text-align: left;
                    cursor: pointer;
                    transition: 0.3s;
                }

                /* Change background color of buttons on hover */
                #tab button:hover {
                    background-color: #ddd;
                }

                /* Create an active/current "tab button" class */
                #tab button.active {
                    background-color: #ccc;
                }

                /* Style the tab content */
                #tabcontent {
                    float: left;
                    padding: 0px 12px;
                    border: 1px solid #ccc;
                    width: 70%;
                    border-left: none;
                    height: 300px;
                }
                  #b1,#b2,#b4,#b5
                {
                  position:absolute;
                  text-align: center;
                  top:2%;
                  left:16%;
                  width:60%;
                  border:2px solid black;

                  background-color: white;
                  height:500px;
                }
                #button2
                {
                  background-color: #008CBA;
                }
                #b3
                {
                  position:absolute;
                  text-align: center;
                  top:2%;
                  left:16%;
                  width:60%;
                  border:2px solid black;

                  background-color: white;
                  height:500px; 
                  overflow: scroll; 
                }
          .hide-replaced.ws-inputreplace {
                    display: none !important;
                }
                .input-picker .picker-list td > button.othermonth {
                    color: #888888;
                    background: #fff;
                }
                .ws-inline-picker.ws-size-2, .ws-inline-picker.ws-size-4 {
                    width: 49.6154em;
                }
                .ws-size-4 .ws-index-0, .ws-size-4 .ws-index-1 {
                    border-bottom: 0.07692em solid #eee;
                    padding-bottom: 1em;
                    margin-bottom: 0.5em;
                }
                .picker-list.ws-index-2, .picker-list.ws-index-3 {
                    margin-top: 3.5em;
                }
                div.ws-invalid input {
                    border-color: #c88;
                }
                .ws-invalid label {
                    color: #933;
                }
                div.ws-success input {
                    border-color: #8c8;
                }
                form {
                    margin: 10px auto;
                    width: 700px;
                    min-width: 49.6154em;
                    border: 1px solid #000;
                    padding: 10px;
                }
                .form-row {
                    padding: 5px 10px;
                    margin: 5px 0;
                }
                label {
                    display: block;
                    margin: 3px 0;
                }
                .form-row input {
                    width: 220px;
                    padding: 3px 1px;
                    border: 1px solid #ccc;
                    box-shadow: none;
                }
                .form-row input[type="checkbox"] {
                    width: 60%;
                }
                .date-display {
                    display: inline-block;
                    min-width: 200px;
                    padding: 5px;
                    border: 1px solid #ccc;
                    min-height: 1em;
                }
                .show-inputbtns .input-buttons {
                    display: inline-block;
                }
                .custom-select {
                  position: relative;
                  font-family: Arial;
                }
                .custom-select select {
                  display: none; /*hide original SELECT element:*/
                }
                .select-selected {
                  background-color: DodgerBlue;
                }
                /*style the arrow inside the select element:*/
                .select-selected:after {
                  position: absolute;
                  content: "";
                  top: 14px;
                  right: 10px;
                  width: 0;
                  height: 0;
                  border: 6px solid transparent;
                  border-color: #fff transparent transparent transparent;
                }
                /*point the arrow upwards when the select box is open (active):*/
                .select-selected.select-arrow-active:after {
                  border-color: transparent transparent #fff transparent;
                  top: 7px;
                }
                /*style the items (options), including the selected item:*/
                .select-items div,.select-selected {
                  color: #ffffff;
                  padding: 8px 16px;
                  border: 1px solid transparent;
                  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
                  cursor: pointer;
                }
                /*style items (options):*/
                .select-items {
                  position: absolute;
                  background-color: DodgerBlue;
                  top: 100%;
                  left: 0;
                  right: 0;
                  z-index: 99;
                }
                /*hide the items when the select box is closed:*/
                .select-hide {
                  display: none;
                }
                .select-items div:hover, .same-as-selected {
                  background-color: rgba(0, 0, 0, 0.1);
                }

                #head
                {
                  position: absolute;
                  border:2px solid black;
                  left:40%;
                  top:2%;
                  padding:5px;
                  box-shadow: 3px 3px #888888;
                }
                #logt
                {
                  position: absolute;
                  left:20%;
                  
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
<div id="tab">
  
   <a href="index.jsp"><button type="submit" class="btn btn-danger" ><center>LOG OUT</center></button></a>
  <br>
  <br>
  <br>
  <button type="submit" class="btn btn-default" onclick="user()">User Details</button>
  <button type="submit" class="btn btn-default" onclick="bus()">Bus Details</button>
  <button type="submit" class="btn btn-default" onclick="Add()">Add Bus</button>
  <button type="submit" class="btn btn-default" onclick="Rem()">Remove Bus</button>
  <button type="submit" class="btn btn-default" onclick="log()">Log Record</button>

</div>

<div id="tab2">
  <br>
  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  ADMINISTRATOR
  <br>
  <br><center><img src="user.png"  width="100" height="100"></center>
  <br>
  <br>
  <center><%out.println(session.getAttribute("uname"));%></center>
  <br><center><%
  out.println((String)session.getAttribute("name"));%></center>
</div>




<script>
      function user() {
          var x = document.getElementById("b1");
          if (x.style.display === "none") {
              x.style.display = "block";
          } else {
              x.style.display = "none";
          }
      }
      function bus() {
          var x = document.getElementById("b2");
          if (x.style.display === "none") {
              x.style.display = "block";
          } else {
              x.style.display = "none";
          }
      }
      function log() {
          var x = document.getElementById("b3");
          if (x.style.display === "none") {
              x.style.display = "block";
          } else {
              x.style.display = "none";
          }
      }
      function Add() {
          var x = document.getElementById("b4");
          if (x.style.display === "none") {
              x.style.display = "block";
          } else {
              x.style.display = "none";
          }
      }
      function Rem() {
          var x = document.getElementById("b5");
          if (x.style.display === "none") {
              x.style.display = "block";
          } else {
              x.style.display = "none";
          }
      }
</script>

<div id="b1" style="display: none;">
        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <!--Everythin under PROFILE section-->
       
            <div class="container">
          <br>
          <br>
           <table class="table table-striped" style="width:68%;">
              <tr>
               
                
                <th >NAME</th>
                 <th>TO</th>
                  <th>FROM</th>
                <th>TICKETS</th>
                <th>BNAME</th>
                 <th>DATE</th>

              </tr>

              
                <%
                //String uname = (String)session.getAttribute("uname");
                //String name = (String)session.getAttribute("name");
                
                //res = stmt.executeQuery("select distinct(name) as d from user_info");
                
                 //String str[]=new String[100];
                 //int c1=0;
                 //String na="";
               /* while(res.next())
                {
                  //String s1=res.getString("username");
                  String s1=res.getString(1);
                  //out.print(s1+" ");
                  str[c1++]=s1;
                  

                }
                
                int flag[] = new int[c1];
                //Arrays.sort(str);
                
                

                //out.print("hii");
                
                String str2[]=new String[100];
                int c2=0;
                //str2[0]=str[0];
                int count[]=new int[100];
                int c=0;
                String s4="";
                
                
                // res= stmt.executeQuery("select count(name) from user_info group by name;");

                 while(res.next())
                 {
                  count[c2++] = res.getInt(1);
                 }
                  for(int i=0;i<c1;i++)
                  {
                      res=stmt.executeQuery("select username from login where name='"+str[i]+"'");
                      while(res.next())
                      {
                        s4=res.getString("username");
                        break;
                        
                      }
                    %>
                    
                    <tr>
                      

                    <th ><%out.print(i+1);%></th>
                    <th><%out.print(str[i]);%></th>
                    <th><%out.print(s4);%></th>
                    <th><%out.print(count[i]);%></th>

                    </tr>
                    <%

                  }*/
                  res = stmt.executeQuery("select * from user_info");
                  while(res.next())
                  {
                    String s9=res.getString("name");
                    String s8=res.getString("source");
                    String s3=res.getString("dest");
                     int s4=res.getInt("tickets");
                     String s10=res.getString("bus_name");
                      String s5=res.getString("date");





                     

                   %><tr>
                    <th><%out.print(s9);%></th>
                    <th><%out.print(s8);%></th>
                    <th><%out.print(s3);%></th>
                    <th><%out.print(s4);%></th>
                    <th><%out.print(s10);%></th>
                    <th><%out.print(s5);%></th>


                    </tr><%
                  }%>
              
              
           
            <tbody>
                             
                
                
              
            </table>
          </div>
</div>


<div id="b2" style="display: none;">
        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <!--Everythin under PROFILE section-->
         <div class="container">
          <br>
          <br>
            <table class="table table-striped" style="width:68%;">
            <thead class="thead-dark" >
              <tr>
                <th scope="col">#</th>
                <th scope="col">BUS</th>
                <th scope="col">TOTAL SEATS</th>
                <th scope="col">REMAINING SEATS</th>
              </tr>
        <%
            String b_name="";
            int b_seats=0;
            int remaining_seats=0;
            int i=0;
            res=stmt.executeQuery("select * from bus_name");
            while(res.next())
              {
                  b_name=res.getString("bname");
                  b_seats=res.getInt("total_seats");
                  remaining_seats=res.getInt("remaining_seats");
                  i++;%>
                  <tr>
                    <th scope="row"><%out.print(i);%></th>
                    <th scope="row"><%out.print(b_name);%></th>
                    <th scope="row"><%out.print(b_seats);%></th>
                    <th scope="row"><%out.print(remaining_seats);%></th>
                    </tr><%
              }%>
              </thead>
            </table>
          </div>
          
             
</div>
<div id="b3" style="display: none;">
        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <!--Everythin under PROFILE section-->
        <div id="logt">
        <%
            res = stmt.executeQuery("select * from log");
            %>
             <table class="table table-striped" style="width:120%;">
              <tr>
                <th >#</th>
                <th >ACTION</th>
                <th>TIME</th>
              </tr><%
              int co = 1;
              while(res.next())
              {
                String s1 = res.getString("action");
                String s2 = res.getString("time");
                  %><tr><th><%out.print(co++);%></th>
                    <th><%out.print(s1);%></th>
                    <th><%out.print(s2);%></th></tr><%
              }
             
        %>
      </table></div>
    
</div>

<div id="b4" style="display: none">

  <br><br>
  <div id="head"> 
    <font size="5" face="arial">ADD BUS</font></div><br>
  <form action="add_submit.jsp" method="post">
    <br>
        <div class="form-group">
        <input type="text" name="bname" autocomplete="off" placeholder="BUS_NAME" required/>
        </div>
      
        <div class="form-group">
        <input type="text" name="fare" autocomplete="off" placeholder="FARE" required/>
        </div>
      
        <div class="form-group">
        <input type="text" name="total_seats" autocomplete="off" placeholder="TOTAL SEATS" required/>
        </div>

      
      
      <button type="submit" class="btn btn-danger">Submit</button>
      <br><br>
    </form>
    
  </div>


  <div id="b5" style="display:none">
    <br><br><br>
  <div id="head"> 
    <font size="5" face="arial">REMOVE_BUS</font></div><br>
     <form action="remove_submit.jsp" method="post">
      <br><br>
        <div class="form-group">
        <input type="text" name="Bname" autocomplete="off" placeholder="BUS_NAME" required/>
        </div>
      
       
      <button type="submit" class="btn btn-danger">Submit</button><br><br>
    </form>
    <%


%>
  </div>



</body>
</html>
