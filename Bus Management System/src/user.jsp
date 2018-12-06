<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<title>USER</title>

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
                    background-color: inherit;
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
                #b1,#b2
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
                }
                #dv {
                        vertical-align:middle;
                        table-layout:fixed;
                        position:absolute;
                        width: 560px;
                        padding: 10px;
                        border: 5px solid gray;
                        margin: 0; 
                        left :18%;  
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


</style>
</head>
<body>
    <!--JDBC CONNECTION WITH MYSQL-->    
        <%
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
              stmt3 = connection.createStatement();      

        %>  
<!--CONNECTION DONE-->
<%
      String user1=request.getParameter("user");
      String name1=request.getParameter("name");%>
<div id="tab">
   <a href="index.jsp"><button type="submit" class="btn btn-danger"><center>LOG OUT</center></button></a>
  <br>
  <br>
  <br>
  <button type="submit" class="btn btn-default" onclick="prof()">Profile</button>
  <button type="submit" class="btn btn-default" onclick="book()">Book Ticket</button>
  <button type="submit" class="btn btn-default" onclick="view()">View Ticket</button>
</div>

<div id="tab2">
  <br>
  <br>
  <br><center><img src="user.png"  width="100" height="100"></center>
  <br>
  <br>
  <center><%out.println(session.getAttribute("uname"));%></center>
  <br><center><%
  out.println((String)session.getAttribute("name"));%></center>
</div>




<script>
      function prof() {
          var x = document.getElementById("b1");
          if (x.style.display === "none") {
              x.style.display = "block";
          } else {
              x.style.display = "none";
          }
      }
      function book() {
          var x = document.getElementById("b2");
          if (x.style.display === "none") {
              x.style.display = "block";
          } else {
              x.style.display = "none";
          }
      }
      function view() {
          var x = document.getElementById("b3");
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
        <%
            String uname = (String)session.getAttribute("uname");
            String name = (String)session.getAttribute("name");
            res = stmt.executeQuery("select * from login");
              String s1="";
              String s2="";
              String s3="";
              String s4="";
              String s5="";
             while(res.next())
            {
                s1 = res.getString("username");
                s2 = res.getString("name");
              

              if(s1.equals(uname) && s2.equals(name))
              {
                s3=res.getString("email");
                s4=res.getString("auth");
                s5=res.getString("gender");

              }
              if(s4.equals("u"))
              {
                s4="User";
              }
              if(s4.equals("a"))
              {
                s4="Admin";
              }
            }
              session.setAttribute("uname", uname);
              session.setAttribute("name", name); 
              %><br><br><br><br>
              <br><br>
              <div id="dv" style=""><strong><%
              out.println("Username:"+uname);
              %></strong><br><br><%
              out.println("Name:"+name);
               %><br><br><%
              out.println("Email:"+s3);
               %><br><br><%
              out.println("Authority:"+s4);
               %><br><br><%
              out.println("Gender:"+s5);
               %><br><br></div><%
             
        %>
      
</div>

<div id="b2" style="display: none;">
        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <!--Everythin under BOOK TICKET section-->
        <center>
        <form class="ws-validate" action="b_submit.jsp">
        <div class="form-group">
          <br>
        
          BOOK YOUR TICKET
          <br>
          <br>
           <div class="custom-select" style="width:300px;">
            
              <select  name="source" style="width:50%";>
                <option value="gur">FROM</option>
                <option value="gur">Gurgaon</option>
                <option value="delhi">New Delhi</option>
                <option value="ludhi">Ludhiana</option>
                <option value="hyd">Hyderabad</option>
                <option value="muz">Muzaffarpur</option>
                <option value="pune">Pune</option>
              </select>
             
            </div>
          </div>
            
            
            <div class="form-group">
            <div class="custom-select" style="width:300px;">
             
              <select name="dest" style="width:43%;">
                <option value="dest">TO</option>
                <option value="gaziabad">Ghaziabad</option>
                <option value="amritsar">Amritsar</option>
                <option value="Chandigarh">Chandigarh</option>
                <option value="vizag">Vizag</option>
                <option value="patna">Patna</option>
                <option value="mumbai">Munbai</option>
              </select>
            </div>
          </div>
              
            <div class="form-group">
            <div class="custom-select" style="width:300px;">
             
              <select name="tickets" style="width:34%;">
              <option value="tickets">No. Of Tickets</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
               <option value="8">8</option>
                <option value="9">9</option>
                 <option value="10">10</option>
                  <option value="11">11</option>
                   <option value="12">12</option>
            </select>
          </div>
              
          </div>

            
            <div class="form-row">
              DATE OF JOURNEY:
                <input type="date" style="height:7%" class="datepicker"  name="date"/>
            </div>
            

         
        <br> <br>
        <button type="submit" class="btn btn-primary">Submit</button>
         <br><br> <br><br><br>
    </form>
            

      
</div>

<div id="b3" style="display: none;">
        <!--Everythin under VIEW TIKCET section-->
        
      <% 

       res = stmt.executeQuery("select * from user_info where name='"+name+"'");
       //out.print(name);

       String s6="";
       String s7="";
       String s10="";
       int s8=0;
       int s9=0;
       int count=1;%>
        <div class="container">
    
           <table class="table table-striped" style="width:68%;">
              <tr>
                <th >#</th>
                <th >BUSNAME</th>
                <th>TICKETS</th>
                <th>FARE</th>
                <th>DATE</th>
              </tr><%
              int flag=0;
       while(res.next())
       {
              //s6= res.getString("name");
                
                s7=res.getString("bus_name");
                s8=res.getInt("tickets");
                s9=res.getInt("fare");
                s10=res.getString("date");
                if(name.equals(name))
                {
                  flag=1;
                  %> <tr><th><%
                   out.print(count++);%></th>
                   <th><%out.print(s7);%></th>
                   
                   <th><%out.print(s8);%></th>
                   
                   <th><%out.print(s9);%></th>
                   
                   <th><%out.print(s10);%></th>
                 </tr>
             
                  <%
                  
                }


              // out.print("NAME:"+s6);

        

            
             
       }
          
          if(flag==0)
          {
            
            %><%out.print("NO BOOKING HISTORY");%><%
          }
          

       
       %>
       <br>

     
</div>









<!--ALL THE JAVA SCRIPTS-->
<script >
  webshim.setOptions('forms-ext', {
    replaceUI: 'auto',
    types: 'date',
    date: {
        startView: 2,
        inlinePicker: true,
        classes: 'hide-inputbtns'
    }
});
webshim.setOptions('forms', {
    lazyCustomMessages: true
});
//start polyfilling
webshim.polyfill('forms forms-ext');

//only last example using format display
$(function () {
    $('.format-date').each(function () {
        var $display = $('.date-display', this);
        $(this).on('change', function (e) {
            //webshim.format will automatically format date to according to webshim.activeLang or the browsers locale
            var localizedDate = webshim.format.date($.prop(e.target, 'value'));
            $display.html(localizedDate);
        });
    });
});
</script>



<script>

  var x, i, j, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
for (i = 0; i < x.length; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < selElmnt.length; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        h = this.parentNode.previousSibling;
        for (i = 0; i < s.length; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            for (k = 0; k < y.length; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
  });
}
function closeAllSelect(elmnt) {
  /*a function that will close all select boxes in the document,
  except the current select box:*/
  var x, y, i, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  for (i = 0; i < y.length; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < x.length; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);
</script>




  
</body>
</html>
