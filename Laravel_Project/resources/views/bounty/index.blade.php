<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="codepixer">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title> {{ session("username")}}'s Blog</title>

	<link href="https://fonts.googleapis.com/css?family=Roboto:400,500|Rubik:500" rel="stylesheet">
	<!--
			CSS
			============================================= -->
	
	<link rel="stylesheet" href="{{ 'css/linearicons.css' }}">
	<link rel="stylesheet" href="{{ 'css/font-awesome.min.css' }}">
	<link rel="stylesheet" href="{{ 'css/bootstrap.css' }}">
	<link rel="stylesheet" href="{{ 'css/magnific-popup.css' }}">
	<link rel="stylesheet" href="{{ 'css/nice-select.css' }}">
	<link rel="stylesheet" href="{{ 'css/animate.min.css' }}">
	<link rel="stylesheet" href="{{ 'css/owl.carousel.css' }}">
	<link rel="stylesheet" href="{{ 'css/main.css' }}">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

	<style>
		.w3-modal-backdrop {
		  z-index: -1;
		}
		
	</style>
	
</head>

<body>
	
	<!-- Start header Area -->
	<header id="header" >
		<div class="container box_1170 main-menu">
			<div class="row align-items-center justify-content-center d-flex">
				<button  type="button" style='position:absolute;top:20%;right:3%; background-color: firebrick;border: 1px solid black;border-radius: 5px;width:10%;padding:10px;'>
			      <span class="glyphicon glyphicon-log-out"></span> <a href='/logout'><font color='white'>Log out</font></a>
			    </button>
				<nav id="nav-menu-container">
					<ul class="nav-menu">
						<li class="menu-active"><a href="/index" style="background-color: black;padding:10%;"><font color="white">
						@if(session()->has('username'))
						{{ session("username")}}
						@endif
					's Blog</font></a></li>

						<li><a href="/profile" style="padding:10%;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspProfile</a></li>
						
						
					</ul>
				</nav>
			</div>

		</div>
		
		<div class="search_input" id="search_input_box">
			<div class="container box_1170">
				<form class="d-flex justify-content-between">
					<input type="text" class="form-control" id="search_input" placeholder="Search Here">
					<button type="submit" class="btn"></button>
					<span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
				</form>
			</div>
		</div>
	</header>
	<!-- End header Area -->

	<!-- Top Stories Area -->
	
	<!-- End Stories Area -->

	<!-- Start Post Silder Area -->
	
	<!-- Start Post Silder Area -->

	<!-- Start main body Area -->
	<div class="main-body section-gap">
		<div class="container box_1170">
			<br><br><br><br>
			
				<div class="panel-group">
				  <div class="panel panel-default" style='border:2px solid black;border-radius: 20px; padding:10px;'>
				    <div class="panel-heading">
				      <h4 class="panel-title">
				        <a data-toggle="collapse" href="#collapse1">&nbsp&nbsp&nbsp&nbspAdd New Blog</a>
				      </h4>
				    </div>
				    <div id="collapse1" class="panel-collapse collapse">
				      <div class="panel-body">
				      	<br><br>


				      	
				      		<div class="form-group">
	                            <div class="col-sm-10">
	                                <span class="glyphicon glyphicon-user">
	                                    <input id="id_head" maxlength="40" name="head" type="text" placeholder="Your Heading..."  style="font-family: Courier New;font-size: 15px;border: none; border-bottom: 2px solid black;width:37%;">
	                                    </span>
	                            </div>
	                        </div>
	                        <div class="form-group">
	                            <div class="col-sm-10">
	                                <span class="glyphicon glyphicon-user">
	                                    <textarea rows="2" cols="35" id="id_blog" name="blog"  placeholder="Your Text..."  style="font-family: Courier New;font-size: 15px;border: none; border-bottom: 2px solid black;height:200px;"></textarea>
	                                    </span>
	                            </div>
	                        </div>
	                        <div class="form-group">
	                            &nbsp&nbsp&nbsp<button  class="btn btn-success" id='blg_sub'>Save</button>
	                        </div>
	                        <div id="blog_data"></div>
					 


				      </div>

				    </div>
				  </div>
				</div><br><br>
				 	
			<div class="row">
				 
				<div class="col-lg-8 post-list">
					<!-- Start Post Area -->
					<section class="post-area">
						<div class="row">

							<?php $c=0; ?>
							@if (session()->has('blogs'))
							@foreach(json_decode(session('blogs')) as $item)
							<div class="col-lg-4 col-md-4" >
								<div class="single-post-item" >
									<div class="post-thumb">
										<img class="img-fluid" src="img/archive/c1.jpg"  alt="">
									</div>
									<div class="post-details" >
										
										<h4><a href="#">{{ $item->head }}</a></h4>
										
										{{ ($item->blog) }}
										
										
										<div class="blog-meta">
											<a href="#" class="m-gap"><span class="lnr lnr-calendar-full"></span>{{ $item->time }}</a>
											
										</div>
										<!-- to delete the blog -->
										<button value='delete,{{ $item->head }}' class='btn btn-sm btn-danger' style='width:30%;'><font size='1'>Delete</font></button>
									


										<!-- to update the blog -->
										<div class="w3-container" >
										  <br>
										  <button value='{{ $item->id }}' onclick="document.getElementById('{{ $item->id }}').style.display='block'" class="w3-button w3-teal" style='width:40%;border-radius: 5px;'><font size='1'>Edit</font></button>

											  <div id="{{ $item->id }}" class="w3-modal" style='z-index: 99 !important;'>
											    <div class="w3-modal-content" >
											      <header class="w3-container w3-teal"> 
											        <span onclick="document.getElementById('{{ $item->id }}').style.display='none'" 
											        class="w3-button w3-display-topright">&times;</span>
											        <h2>Update Your Blog.</h2>
											      </header>
											      <div class="w3-container">
											        
											        	<div class="form-group">
									                            <div class="col-sm-10">
									                                <span class="glyphicon glyphicon-user">
									                                    <input id="id_head_update{{$item->id}}" maxlength="40" type="text" placeholder="Your Heading..."  style="font-family: Courier New;font-size: 15px;border: none; border-bottom: 2px solid black;width:37%;">
									                                    </span>
									                            </div>
									                        </div>
									                        <div class="form-group">
									                            <div class="col-sm-10">
									                                <span class="glyphicon glyphicon-user">
									                                    <textarea rows="2" cols="35" id="id_blog_update{{$item->id}}"  placeholder="Your Text..."  style="font-family: Courier New;font-size: 15px;border: none; border-bottom: 2px solid black;height:200px;"></textarea>
									                                    </span>
									                            </div>
									                        </div>
									                        <div class="form-group">
									                            &nbsp&nbsp&nbsp<button value='update,{{$item->id}}' class="btn btn-success" id='blg_sub_update{{$item->id}}'>Save</button>
									                        </div>
									                        <div id="blog_data_update"></div>
											      </div>
											      
											    </div>
											  </div>
										</div>
									</div>
								</div>
							</div>
							@endforeach
							@endif

							

							
						</div>
					</section>
					<!-- Start Post Area -->
				</div>


				<div class="col-lg-4 sidebar">
					<div class="single-widget protfolio-widget">
						<img class="img-fluid" src="img/dark_user.png" alt="">
						<a href="#">
							@if(session()->has('username'))
							<h4>{{ session("username") }}</h4>
							@endif
						</a>
						<p class="p-text">
							Boot camps have its supporters andit sdetractors. Some people do not understand why you should have to spend
							money on boot camp whenyou can get. Boot camps have itssuppor ters andits detractors.
						</p>
						<ul class="social-links">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-behance"></i></a></li>
						</ul>
						<img src="img/sign.png" alt="">
					</div>

					
					

				</div>
			</div>
		</div>
	</div>

	
	<!-- Start main body Area -->

	<!-- start footer Area -->
	
	<!-- End footer Area -->



	<!-- All the scripts -->
	<script src="{{ asset('js/vendor/jquery-2.2.4.min.js') }}"></script>
	
	<script src="{{ asset('js/vendor/bootstrap.min.js') }}"></script>
	
	<script src="{{ asset('js/easing.min.js') }}"></script>
	<script src="{{ asset('js/hoverIntent.js') }}"></script>
	<script src="{{ asset('js/superfish.min.js') }}"></script>
	<script src="{{ asset('js/jquery.ajaxchimp.min.js') }}"></script>
	<script src="{{ asset('js/jquery.magnific-popup.min.js') }}"></script>
	<script src="{{ asset('js/owl.carousel.min.js') }}"></script>
	<script src="{{ asset('js/jquery.tabs.min.js') }}"></script>
	<script src="{{ asset('js/jquery.nice-select.min.js') }}"></script>
	<script src="{{ asset('js/waypoints.min.js') }}"></script>
	<script src="{{ asset('js/mail-script.js') }}"></script>
	<script src="{{ asset('js/main.js') }}"></script>

	<script>
		$.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
        });

		$('#blg_sub').on('click',function(e){
    		
    		var username = '{{ session("username") }}' ;
    		var time = Date(Date.now()).toString(); 
    		var head = $('#id_head').val();
    		var text = $('textarea#id_blog').val();
    		// alert(username+" "+head+" "+text+" "+time);

    		$.ajax({
                type:'POST',
                url: '/insert_blog',
                data:{
                    'user':username,
                    'time':time,
                    'head':head,
                    'text':text
                },
                success: function (data) {
                    
            		$('#blog_data').html(data);
            		location.reload();
                   
                    
                }

              });

    	});

    	

    		$('.btn').on('click',function(){

    			
    			var temp = $(this).val();
    			// alert(temp);
    			temp = temp.split(',');
    			// alert(temp[0]+" "+temp[1]);
    			var user = '{{ session("username") }}';

    			if(temp[0] == 'delete')
    			{

    				
    				// alert(user+' '+temp[1]);

    				$.ajax({
		                type:'POST',
		                url: '/delete_blog',
		                data:{
		                    'user':user,
		                    'head':temp[1]
		                    
		                },
		                success: function (data) {
		                    
		            		
		            		location.reload();
		                   
		                    
		                }

		              });

    			}
    			else if(temp[0]=='update')
    			{
    				var head = $('#id_head_update'+temp[1]).val();
    				var blog = $('#id_blog_update'+temp[1]).val();
    				// alert(head +" "+blog);
    				$.ajax({
		                type:'POST',
		                url: '/final_update_blog',
		                data:{
		                	'user': user,
		                    'id':temp[1],
		                    'head':head,
		                    'blog':blog
		                    
		                },
		                success: function (data) {
		                    
		            		
		            		location.reload();
		                   
		                    
		                }

		              });
    			}
    			

    		});

    		$('.w3-button').on('click',function(){

    			
    			var id = $(this).val();
    			// alert(head);
    			if(id.length>=1)
    			{
    				
    				// alert(id);

    				$.ajax({
		                type:'POST',
		                url: '/add_update_data_blog',
		                data:{
		                    'id':id,
		                    
		                    
		                },
		                success: function (data) {
		                    
		            		var data = JSON.parse(data);
		            		console.log(data[0].head);
		            		$('#id_head_update'+id).val(data[0].head);
		            		$('#id_blog_update'+id).val(data[0].blog);
		                   
		                    
		                }

		              });

    			}
    			

    		});


    	
        
	</script>

</body>

</html>