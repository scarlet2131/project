<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">

<script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
               <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-resource.min.js">
               </script>
               <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.min.js">
              </script>
              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDvQDfUUccUtRojyjq5_uadoM2x3eh_LUU&libraries=places&callback=initMap"
        sync defer></script>
    

    <style>
      #info
      {
        position: absolute;
        top:13%;
        right:1%;
        width:20%;
        height:85%;
        background-color: #00004D;
        border: 5px 5px 5px 2px;
        z-index:10000;
      }
      #b1
      {
        position:absolute;
        top:13%;
        right:15%;
        width:56%;
        height:85%;
        background-color: white;
        border: 5px 5px 5px 2px;
        z-index:10000;

      }
      #b2
      {
        position: absolute;
        top:13%;
        right:22%;
        width:56%;
        height:85%;
        background-color: white;
        border: 5px 5px 5px 2px;
        z-index:10000;

      }
      #b3
      {
        position: absolute;
        top:13%;
        right:22%;
        width:56%;
        height:85%;
        background-color: white;
        border: 5px 5px 5px 2px;
        z-index:10000;
      }
      #b4
      {
        position: absolute;
        top:13%;
        right:22%;
        width:56%;
        height:85%;
        background-color: white;
        border: 5px 5px 5px 2px;
        z-index:10000;
      }
      #tab {
                    position: fixed;

                    border: 1px solid #ccc;
                    
                    background-color:#00004D ;
                    width: 20%;
                    height: 800px;
                }
  </style>
</head>

<body>

  <?php
      session_start();
     
      $name=$_GET['name'];
      $_SESSION['sess_name'] = $name;
      $name = $_SESSION['sess_name'];
      
      $conn=mysqli_connect('localhost','root','scarlet2131','MEDITRACK');
      $sql="select * from login where name='".$name."'";
      
      $res=$conn->query($sql);
      $flag=0;
     
      while($row=$res->fetch_assoc())
      {
        $local=$row['locality'];
        $phn=$row['phone'];
        $e=$row['email'];
        $flag=1;
        break;
      }
     
      //echo $name." ".$local;
      echo '<div id="info">
      <br>
      <center>
      <div id="img"><img src="user.png" width="50%"/></div>
      <br>
      <strong>'.$name.'</strong><br>
      <br>
      <strong>'.$local.'</strong><br><br>
      <strong>'.$phn.'</strong><br><br>
      <strong>'.$e.'</strong><br><br>
      </center>
      </div>';



    ?>


  <div id="b2" class="collapse">
    
      <br>
        <center>
          <h2>Add Shopkeeper</h2>
          <form id="myForm" method="post">
            
              <input type="text" name="cname" id="cname" autocomplete="false" placeholder="CustomerName">
              <br><br>
            
            
              <input type="text" name="local" id="local" autocomplete="false" placeholder="Locality">
              <br><br>
            
            
              <input type="text" name="phn" id="phn" autocomplete="false" placeholder="PhoneNo.">
              <span  data-placeholder="Quantity"></span><br><br>
            
            
              <input  type="text" name="e" id="e" autocomplete="false" placeholder="Email">
              <span  data-placeholder="Date"></span><br><br>
            
              <input  type="password" name="pass" id="pass" autocomplete="false" placeholder="Password"><br><br>

            
              <button class="btn btn-primary">
                <font size="2">Submit</font>
              </button>
              <div id = "data"></div> 
            

            
          </form>
        </center>
        
      
    
  </div>
  <div id = "b1" class="collapse" >
    <?php

      $sql = "select * from user";
      $res = $conn->query($sql);
      $f = 0;

      echo '<table id="list" class="table table-striped"
      style="width:40%">
      <tr>
        <th>SNO</th>
        <th>CUSTOMER NAME</th>
        <th>MEDICINE</th>
        <th>QUANTITY</th>
        <th>DATE</th>
      </tr>';
      $c=0;
      while($row = $res->fetch_assoc())
      {
        $f=1;
        $c=$c+1;
        $cname = $row['uname'];
        $med = $row['medicine'];
        $quant = $row['quant'];
        $date = $row['date'];

        echo '<tr>
        <td>'.$c.'</td>
        <td>'.$cname.'</td>
        <td>'.$med.'</td>
        <td>'.$quant.'</td>
        <td>'.$date.'</td>
        </tr>';



      }
      echo '</table>';
      if($f==0)
      {
        echo "NO Records Found\n";
      }

    ?>
  </div>
  <div id="b4">
      <center><h2>Contact Hospital And Municipality</h2>
          <form id="myForm3" method="post">
            <br>
            <br>
            <br>
            
              <input type="text" name="subject" id="subject" autocomplete="false" placeholder="subject">
              <br><br>
            
            
              <input type="text" name="body" id="body" autocomplete="false" placeholder="body">
              <br><br>
            
            
              
            
              <button class="btn btn-primary">
                <font size="3">Sent</font>
              </button>
              <div id = "sent_data"></div> 
            

            
          </form>
        </center>
  </div>
 

  <div id="b3" >
    <?php
      $sql = "select distinct(sname) as s from user";
      $res = $conn->query($sql);
      $a = array();
      $local = array();
      while($row = $res->fetch_assoc())
      {
          array_push($a,$row['s']);
          
      }

      //print_r($a);
      $n = count($a);
      //echo $n;

      for($i=0;$i<$n;$i++)
      {
        $sql2 = "select locality as l from login where name='".$a[$i]."'";
        $res2 = $conn->query($sql2);
        while($row2 = $res2->fetch_assoc())
        {
            array_push($local,$row2['l']);
            
        }
      }
      //print_r($local);
      $disease = array();
      $weights = array();
      $size = 13;
      for($k=0;$k<$size;$k++)
      {
         $weights[$k] = array();
         for($l=0;$l<$size;$l++)
          {
              array_push($weights[$k],0);
          }
      }
      for($k=0;$k<$size;$k++)
      {
        for($l=0;$l<$size;$l++)
        {
            //$weights[$k][$l] = rand(10,100)/50;
            $kx=1;
            $sql3="select one from weight";
            $res3=$conn->query($sql3);
            while($row3=$res3->fetch_assoc())
            {
              $w1=row['one'];
              weights[$kx++][0];
            }
           
            $sql4="select two from weight";
            $res4=$conn->query($sql4);
            while($row4=$res4->fetch_assoc())
            {
              $w2=row['two'];
              weights[$kx++][1];
            }
            
            $sql5="select three from weight";
            $res5=$conn->query($sql5);
            while($row5=$res5->fetch_assoc())
            {
              $w3=row['three'];
              weights[$kx++][2];
            }
            
            $sql6="select four from weight";
            $res6=$conn->query($sql6);
            while($row6=$res6->fetch_assoc())
            {
              $w4=row['four'];
              weights[$kx++][3];
            }
            $sql7="select five from weight";
            $res7=$conn->query($sql7);
            while($row7=$res7->fetch_assoc())
            {
              $w5=row['five'];
              weights[$kx++][4];
            }
            $sql8="select six from weight";
            $res8=$conn->query($sql8);
            while($row8=$res8->fetch_assoc())
            {
              $w6=row['six'];
              weights[$kx++][5];
            }
            $sql9="select seven from weight";
            $res9=$conn->query($sql9);
            while($row9=$res9->fetch_assoc())
            {
              $w7=row['seven'];
              weights[$kx++][6];
            }
            $sql10="select eight from weight";
            $res10=$conn->query($sql10);
            while($row10=$res10->fetch_assoc())
            {
              $w8=row['eight'];
              weights[$kx++][7];
            }
            $sql11="select nine from weight";
            $res11=$conn->query($sql11);
            while($row11=$res11->fetch_assoc())
            {
              $w9=row['nine'];
              weights[$kx++][8];
            }
            $sql12="select ten from weight";
            $res12=$conn->query($sql12);
            while($row12=$res12->fetch_assoc())
            {
              $w10=row['ten'];
              weights[$kx++][9];
            }
            $sql13="select eleven from weight";
            $res13=$conn->query($sql13);
            while($row13=$res13->fetch_assoc())
            {
              $w11=row['eleven'];
              weights[$kx++][10];
            }
            $sql14="select twelve from weight";
            $res14=$conn->query($sql14);
            while($row14=$res14->fetch_assoc())
            {
              $w12=row['twelve'];
              weights[$kx++][11];
            }
            $sql15="select thirteen from weight";
            $res15=$conn->query($sql15);
            while($row15=$res15->fetch_assoc())
            {
              $w13=row['twelve'];
              weights[$kx++][12];
            }
            
            


          //  echo $weights[$k][$l]."  ";
        }
        echo "\n";
      }
      //for($k=0;$k<$size;$k++)
      //{
        //for($i=0;$i<$size;$i++)
        //{
          //echo weights[$k][$i];
        //}
      //}
      for($i=0;$i<$n;$i++)
      {
          $sql2 = "select medicine,quant from user where sname='".$a[$i]."' order by medicine ASC";
          $res2 = $conn->query($sql2);
          $b = array();
          $c = array();
          
          //echo $a[$i];
          while($row2 = $res2->fetch_assoc())
          {
           
            array_push($b,$row2['medicine']);
            array_push($c,$row2['quant']);


          }
          
          $n1 = count($b);
          $n2 = count($c);
          $j=0;
          $sum = array();
          $size = 13;
          for($k=0;$k<$size;$k++)
          {
            array_push($sum,0);
          }
          $feature = array();
          while($j<$n1)
          {
             if($b[$j] == "Vicodin")
             {
                $sum[0] = $sum[0] + $c[$j];
             }
             elseif($b[$j] == "Synthroid")
             {
                $sum[1] = $sum[1] + $c[$j];
             }
             elseif($b[$j] == "Delasone")
             {
                $sum[2] = $sum[2] + $c[$j];
             }
             elseif($b[$j] == "Amoxil")
             {
                $sum[3] = $sum[3] + $c[$j];
             }
             elseif($b[$j] == "Neurontin")
             {
                $sum[4] = $sum[4] + $c[$j];
             }
             elseif($b[$j] == "Prinivil")
             {
                $sum[5] = $sum[5] + $c[$j];
             }
             elseif($b[$j] == "Lipitor")
             {
                $sum[6] = $sum[6] + $c[$j];
             }
             elseif($b[$j] == "Glucophage")
             {
                $sum[7] = $sum[7] + $c[$j];
             }
             elseif($b[$j] == "Zofran")
             {
                $sum[8] = $sum[8] + $c[$j];
             }
             elseif($b[$j] == "Motrin")
             {
                $sum[9] = $sum[9] + $c[$j];
             }
             elseif($b[$j] == "pcm")
             {
                $sum[10] = $sum[10] + $c[$j];
             }
             elseif($b[$j] == "syrup")
             {
                $sum[11] = $sum[11] + $c[$j];
             }
             elseif($b[$j] == "cough")
             {
                $sum[12] = $sum[12] + $c[$j];
             }
             $j = $j+1;
          }
          
          //$n3 = count($feature);
          //for($k=0;$k<$size;$k++)
          //{
            //echo $sum[$k]."  ";
          //}
          //echo "  ".$i."  ".$a[$i];
          $col = 0;
          $softmax = array();
          //echo "\n";
          for($l=0;$l<$size;$l++)
          {
            $m = 0;
            for($k=0;$k<$size;$k++)
            {
              
              //echo floatval($sum[k]*$weights[$k][$l])."   ";
              $m = $m + floatval($sum[$k]*$weights[$k][$l]);
              
            }
            array_push($softmax,$m);

          }
          $max = 0;
          $ind = 0;
        //  print_r($softmax);
          for($k=0;$k<$size;$k++)
          {
            if($softmax[$k]>$max)
            {
              $ind = $k;
              $max = $softmax[$k];
            }
          }

          //echo " ".$ind." ";
          if($ind == 0)
           {
              array_push($disease,"Vicodin");
           }
           elseif($ind == 1)
           {
              array_push($disease,"Synthroid");
           }
           elseif($ind ==2 )
           {
              array_push($disease,"Delasone");
           }
           elseif($ind ==3 )
           {
              array_push($disease,"Amoxil");
           }
           elseif($ind ==4 )
           {
              array_push($disease,"Neurontin");
           }
           elseif($ind ==5 )
           {
              array_push($disease,"Prinivil");
           }
           elseif($ind ==6 )
           {
              array_push($disease,"Lipitor");
           }
           elseif($ind ==7 )
           {
              array_push($disease,"Glucophage");
           }
           elseif($ind ==8 )
           {
              array_push($disease,"Zofran");
           }
           elseif($ind ==9 )
           {
              array_push($disease,"Motrin");
           }
           elseif($ind ==10 )
           {
              array_push($disease,"pcm");
           }
           elseif($ind ==11 )
           {
              array_push($disease,"syrup");
           }
           elseif($ind ==12)
           {
              array_push($disease,"cough");
           }
         // echo $a[$i]."   ".$b[$ind];
          

      }
      echo '<table id="pred" class="table table-striped">
      <tr>
        <th>SNO</th>
        <th>SHOP NAME</th>
        <th>LOCALITY</th>
        <th>DISEASE</th>
      </tr>';
      for($i=0;$i<$n;$i++)
      {
        echo '<tr>';
        echo '<td>'.($i+1).'</td>';
        echo '<td>'.$a[$i].'</td>';
        echo '<td>'.$local[$i].'</td>';
        echo '<td>'.$disease[$i].'</td>';
        echo '</tr>';
      }
      echo '</table>';
      //print_r($disease);
    ?>
  </div>

   <script>
          
            $("#myForm").submit( function(e){
                var name = $("#cname").val();
                var local = $("#local").val();
                var phone = $("#phn").val();
                var email= $("#e").val();
                var password= $("#pass").val();
                var str = name+","+local+","+phone+","+email+","+password;
                $.ajax({
                  type: "POST",
                  url: "inp2.php",
                  data: "str="+str,
                  success: function(data){
                    $("#data").html(data);
                  }
                });
                e.preventDefault();
                document.getElementById("myForm").reset();
            });
           
           function clear(){
            $("#myForm:input").each( function(){
              $(this).val(' ');
            });
          }

          
          $("#myForm2").submit( function(e){
                var name = $("#name2").val();
              
                var drop = $("#drop2").val();
                var str = name+","+drop;
                $.ajax({
                  type: "POST",
                  url: "up_inp.php",
                  data: "str="+str,
                  success: function(data){
                    $("#up_data").html(data);
                  }
                });
                e.preventDefault();
                document.getElementById("myForm2").reset();
            });
          $("#myForm3").submit( function(e){
                var name = $("#subject").val();
              
                var body = $("#body").val();
                var str = name+","+body;
                $.ajax({
                  type: "POST",
                  url: "sent.php",
                  data: "str="+str,
                  success: function(data){
                    $("#sent_data").html(data);
                  }
                });
                e.preventDefault();
                document.getElementById("myForm3").reset();
            });

          
           
           
         
    </script>
    <script>

       

           $("#update").click(function(e){
            var s = "HI";
            e.preventDefault();
            $.ajax({
              type: "POST",
              url: "list.php",
              data: "str="+s,
              success: function(data){
                $("#list").html(data);
              }
            });
          });

      
       
          
    </script>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
               <img src="logo.jpg" width=5%> <a class="navbar-brand" href="index.html">MEDITRACK</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                        <li class="nav-item">
                            <div id="custom-search" class="top-search-bar">
                              <button class="btn btn-primary">Logout</button>  
                            </div>
                        </li>
                        
                        
                        
                    </ul>
                </div>
            </nav>
        </div>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->

        


        <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                   
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                         <div id="tab">
              
                           
                          
                          <br>
                          
                          <button type="submit" class="btn btn-default" style="width:100%"  onclick="view_r()">View Record</button>
                          <br>
                          <button type="submit" class="btn btn-default" style="width:100%" onclick="add_s()">Add Shopkeeper</button>
                          <br>
                          <button type="submit" class="btn btn-default" style="width:100%" onclick="predict()">Prediction</button>
                          <br>
                          <button type="submit" class="btn btn-default" style="width:100%" onclick="contact()">Contacts</button>
                          <br>

                         </div>
                           <script>
                            function view_r() {
                                var x = document.getElementById("b1");
                                if (x.style.display === "none") {
                                    x.style.display = "block";
                                } else {
                                    x.style.display = "none";
                                }
                            }
                            function add_s() {
                                var x = document.getElementById("b2");
                                if (x.style.display === "none") {
                                    x.style.display = "block";
                                } else {
                                    x.style.display = "none";
                                }
                            }
                            function predict() {
                                var x = document.getElementById("b3");
                                if (x.style.display === "none") {
                                    x.style.display = "block";
                                } else {
                                    x.style.display = "none";
                                }
                            }
                            function contact() {
                                var x = document.getElementById("b4");
                                if (x.style.display === "none") {
                                    x.style.display = "block";
                                } else {
                                    x.style.display = "none";
                                }
                            }
                           
                          </script>
                            <!--

                            <li class="nav-item">
                                <a class="nav-link" href="#view" data-toggle="collapse" ><i class="fas fa-fw fa-table"></i>View Record</a>
                                
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#add_s" data-toggle="collapse" ><i class="fas fa-fw fa-table"></i>Add Shopkeeper</a>
                               
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#predict" data-toggle="collapse" ><i class="fas fa-fw fa-table"></i>Prediction</a>
                               
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#contact" data-toggle="collapse" ><i class="fas fa-fw fa-table"></i>Contact</a>
                               
                            </li>-->
                           
                           
                          </ul>
                      </div>
                  </nav>
              </div>
          </div>
      </div>

     

  </body>
  </html>
