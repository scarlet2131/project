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
    	#tab {
                    position: fixed;

                    border: 1px solid #ccc;
                    
                    background-color:#00004D ;
                    width: 20%;
                    height: 800px;
                }
    	#b1
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
    	
	</style>
</head>

<body>

	<?php
			session_start();
			// echo "hi";
			$name=$_GET['name'];
			// $_SESSION['sess_name'] = $name;
			// $name = $_SESSION['sess_name'];
			// echo $name;
			$conn=mysqli_connect('localhost','root','scarlet2131','MEDITRACK');
			$sql="select * from login where name='".$name."'";
			// echo "hi";
			$res=$conn->query($sql);
			$flag=0;
			// echo "hi";
			while($row=$res->fetch_assoc())
			{
				$local=$row['locality'];
				$phn=$row['phone'];
				$e=$row['email'];
				$flag=1;
				break;
			}
			// echo "hi";
			echo $name." ".$local;
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


	<div id="b2" >
		
			<br><br><br>
				<center>
					<form id="myForm" method="post">
						
							<input type="text" name="cname" id="cname" autocomplete="false" placeholder="CustomerName">
							<br><br>
						
						
							<input type="text" name="med" id="med" autocomplete="false" placeholder="MedicineName">
							<br><br>
						
						
							<input type="text" name="quant" id="quant" autocomplete="false" placeholder="Quantity">
							<span  data-placeholder="Quantity"></span><br><br>
						
						
							<input  type="text" name="date" id="date" autocomplete="false" placeholder="Date">
							<span  data-placeholder="Date"></span><br><br>
						
						

						
							<button class="btn btn-danger">
								<font size="4">Submit</font>
							</button>
							<div id = "data"></div>
						

						
					</form>
				</center>
				
			
		
	</div>
	<div id = "b1" >
		<?php

			$sql = "select * from user where sname='".$name."'";
			$res = $conn->query($sql);
			$f = 0;
			echo '<table id="list" class="table table-striped">
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
			else
			{
				
			}

		?>
	</div>
	 <div id="b5">
    <script>
            
    			
              function initMap() {
              var map = new google.maps.Map(document.getElementById('map'), {
                center: new google.maps.LatLng(-33.863276, 151.207977),
                zoom: 12
              });
              var infoWindow = new google.maps.InfoWindow;

                // Change this depending on the name of your PHP or XML file
                downloadUrl('https://storage.googleapis.com/mapsdevsite/json/mapmarkers2.xml', function(data) {
                  var xml = data.responseXML;
                  var markers = xml.documentElement.getElementsByTagName('marker');
                  Array.prototype.forEach.call(markers, function(markerElem) {
                    var id = markerElem.getAttribute('id');
                    var name = markerElem.getAttribute('name');
                    var address = markerElem.getAttribute('address');
                    var type = markerElem.getAttribute('type');
                    var point = new google.maps.LatLng(
                        parseFloat(markerElem.getAttribute('lat')),
                        parseFloat(markerElem.getAttribute('lng')));

                    var infowincontent = document.createElement('div');
                    var strong = document.createElement('strong');
                    strong.textContent = name
                    infowincontent.appendChild(strong);
                    infowincontent.appendChild(document.createElement('br'));

                    var text = document.createElement('text');
                    text.textContent = address
                    infowincontent.appendChild(text);
                    var icon = customLabel[type] || {};
                    var marker = new google.maps.Marker({
                      map: map,
                      position: point,
                      label: icon.label
                    });
                    marker.addListener('click', function() {
                      infoWindow.setContent(infowincontent);
                      infoWindow.open(map, marker);
                    });
                  });
                });
              }



            function downloadUrl(url, callback) {
              var request = window.ActiveXObject ?
                  new ActiveXObject('Microsoft.XMLHTTP') :
                  new XMLHttpRequest;

              request.onreadystatechange = function() {
                if (request.readyState == 4) {
                  request.onreadystatechange = doNothing;
                  callback(request, request.status);
                }
              };

              request.open('GET', url, true);
              request.send(null);
            }

            function doNothing() {}
          </script>
          
  </div>

	 <script>
          
            $("#myForm").submit( function(e){
                var name = $("#cname").val();
                var med = $("#med").val();
                var quant = $("#quant").val();
                var date = $("#date").val();
                var str = name+","+med+","+quant+","+date+",u";
                $.ajax({
                  type: "POST",
                  url: "inp.php",
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
                                <input class="form-control" type="text" placeholder="Search..">
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
                          
                          <button type="submit" class="btn btn-default" style="width:100%" onclick="view_r()">View Record</button>
                          <br>
                          <br>
                          <button type="submit" class="btn btn-default" style="width:100%" onclick="add_s()">Add Record</button>
                          <br>
                          <br>
                          <button type="submit" class="btn btn-default" style="width:100%" onclick="map()">Maps</button>
                          <br>
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
                            
                            function map() {
                                var x = document.getElementById("b5");
                                if (x.style.display === "none") {
                                    x.style.display = "block";
                                } else {
                                    x.style.display = "none";
                                }
                            }
                          </script>
                           
                           
                          </ul>
                      </div>
                  </nav>
              </div>
          </div>
      </div>

     

  </body>
  </html>
