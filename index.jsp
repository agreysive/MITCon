<%-- 
    Document   : indexhtml
    Created on : 2 Oct, 2018, 1:43:51 PM
    Author     : user
--%>
        
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>college community</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
	<link href="style.css" rel="stylesheet">
</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><img src="img/log.png" height="50"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" 
		data-target="#navbarResponsive">
 			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active">
					<a class="nav-link" href="#">HOME</a>	
				</li>
				<li class="nav-item">
					<a class="nav-link" href="about.jsp">ABOUT</a>	
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#cnt">CONTACT</a>	
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#lap">TEAM</a>	
				</li>
			</ul>
		</div>
		
	</div>

</nav>

<!--- Image Slider -->
<div id="slides" class="carousel slide" data-ride="carousel">
	<ul class="carousel-indicators">
		<li data-target="#slides" data-slide-to="0" class="active"></li>
		<li data-target="#slides" data-slide-to="1"></li>
	    <li data-target="#slides" data-slide-to="2"></li>
	</ul>
	<div class="carousel-inner">
		<div class="carousel-item active">
			<img class="img-responsive" src="img/1.jpg" height="auto" width="600">
			<div class="carousel-caption">
				<h1 class="display-2">GET IN </h1>
				<H3>The Society</H3><br>
				<a class="btn btn-outline-light btn-lg" href="indexhtml.jsp">LOG IN</a>
                                <a class="btn btn-primary btn-lg" href="home.jsp">GET STARTED 
				</a>
				
			</div>
		</div>
		<div class="carousel-item">
			<img class="img-responsive" width="100%" height="100%" src="img/9.jpg">
		</div>
		<div class="carousel-item">
			<img class="img-responsive" width="100%" height="100%" src="img/10.jpg">
		</div>
	</div>
</div>


<!--- Jumbotron -->
<div class="container-fluid">
  <div class="row jumbotron">
    <h1>MITIAN'S COMMUNITY</h1><br> 
    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 col-xl-10">     
    <p class="lead">Have your own discussion forum and get to know about the new tech at the best pace. 	Get to know us more by joing us,the better world is waiting for you</p>
    </div>
		<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 col-xl-2">
			<a href="#"><button type="button" class="btn btn-outline-secondary btn-lg">Join Us</button></a>
			
		</div>
		
	</div>
	
</div>

<!--- Welcome Section -->
<div class="container-fluid padding">
<div class="row Welcome text-center">
	<div class="col-12">
		<h1 class="display-4">WHAT ARE WE ?</h1>
		
	</div>
	<Hr>
	<div class="col-12">
		<p class="lead"> We are running a forum and a techinical website of college,here you get to know about the news of our college and our achievments.We are also here to help you people out . To know more stuff dive in with us.</p>
	
</div>	
	
</div>


<!--- Three Column Section -->
 <div class="container-fluid padding">
 	<div class="row text-center padding">
 		<div class="col-xs-12 col-sm-6 col-md-4">
 			<i class="fab fa-leanpub"></i>
 			<h3>Learn</h3>
 			<p>Learn in e- way</p>
 		</div>
 		<div class="col-xs-12 col-sm-6 col-md-4">
 			<i class="fas fa-plug"></i>
 			<h3>Connect</h3>
 			<p>Connect with like minded people</p>
 		</div>
 		<div class="col-sm-12 col-md-4">
 			<i class="fab fa-wpexplorer"></i>
 			<h3>Explore</h3>
 			<p>explore like never before</p>
 		</div>
 		
 	</div>
 	<HR class="my-4">
 </div>



<!--- Two Column Section -->
<div class="container-fluid padding">
	<div class="row padding">
		<div class="col-lg-6">
			<h2>What we offer you matters</h2>
			<P> search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</P>
			<p>t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
			<br>
			<a href="#" class="btn btn-primary">Learn More</a>
		</div>
		<div class="col-lg-6">
		<img src="img/11.jpg" class="img-fluid">
	</div>
		</div>
	
	</div>
	
<hr class="my-5">
<!--- Fixed background -->
<figure>
<div class="fixed-bg"></div>

</figure>

<!--- Emoji Section -->
<button class="fun" data-toggle="collapse" data-target="#emoji">click here for fun
	
</button>
  <div id="emoji" class="collapse">
  	<div class="container-fluid padding">
  		<div class="row text-center">
  			<div class="col-sm-6 col-md-3">
  				<img class="gif" src="img/gif/panda.gif">
  			</div>
  			<div class="col-sm-6 col-md-3">
  				<img class="gif" src="img/gif/poo.gif">
  			</div>
  			<div class="col-sm-6 col-md-3">
  				<img class="gif" src="img/gif/unicorn.gif">
  			</div>
  			<div class="col-sm-6 col-md-3">
  				<img class="gif" src="img/gif/chicken.gif">
  			</div>
  		</div>
  		
  	</div>
  	
  </div>
<!--- Meet the team -->
<div class="container-fluid padding">
	<div class="row Welcome text-center">
		<div class="col-12">
			<h1 id="lap" class="display-4">MEET THE TEAM</h1>
		</div>
		<HR>

	</div>
	
</div>

<!--- Cards -->
<div class="container-fluid padding">
	<div class="row padding">
		<div class="col-md-4">
			<div class="card">
				<img class="card-img-top" src="img/team1.png">
				<div class="card-body">
					<h4 class="card-title">Dr. Strange</h4>
					<p class="card-text">Dr. Strange is the internet enterpreneure for last 3 years of experience.</p>
					<a href="#" class="btn btn-outline-secondary">See Profile</a>
					
				</div>
			</div>
			
		</div>

			<div class="col-md-4">
			<div class="card">
				<img class="card-img-top" src="img/team2.png">
				<div class="card-body">
					<h4 class="card-title">Captain Marvel</h4>
					<p class="card-text">Captain Marvel is the designer for last 10 years of experience.</p>
					<a href="#" class="btn btn-outline-secondary">See Profile</a>
					
				</div>
			</div>
			
		</div>

			<div class="col-md-4">
			<div class="card">
				<img class="card-img-top" src="img/team3.png">
				<div class="card-body">
					<h4 class="card-title">Tony Stark</h4>
					<p class="card-text">Tony is the web developer for last 20 years of experience.</p>
					<a href="#" class="btn btn-outline-secondary">See Profile</a>
					
				</div>
			</div>
			
		</div>
	</div>
	
</div>

<!--- Two Column Section -->

<div class="container-fluid padding">
	<div class="row padding">
		<div class="col-lg-6">
			<h2>OUR MOTIVE</h2>
			<P> <b>As this website is run by students and in profit of same.Our motive is to provide our students the practical knowledge for there betterment.We also provide with the latest knowledge regarding different sreas of technology.</P>
			<p>We also offer here technical support to all your queries.</p>
		     <p>We here also support the new upcoming ideas and enterpreneural activities on our platform </p></b></p>
			<br>
		</div>
		<div class="col-lg-6">
		<img src="img/12.jpg" class="img-fluid">
	</div>
		</div>
	 <hr class="my-4">
	</div>
<!--- Connect -->
<div class="container-fluid padding">
	<div class="row text-center padding">
		<div class="col-12">
			<h2 id="cnt">CONNECT</h2>
		</div>
			<div class="col-12 social padding">
              <a href="#"><i class="fab fa-facebook"></i></a>
               <a href="#"><i class="fab fa-twitter"></i></a>		
               <a href="#"><i class="fab fa-google-plus-g"></i></a>		
               	<a href="#"><i class="fab fa-instagram"></i></a>
               	<a href="#"><i class="fab fa-youtube "></i></a>			
			</div>
	</div>
	
</div>

<!--- Footer -->
<footer>
	<div class="container-fluid padding">
		<div class="row text-center">
			<div class="col-md-4">
				<img src="img/log2.png" height="50">
				<hr class="light">
				<p>1800-209-2211</p>
				<p>email@email.com</p>
				<p>100, street name</p>
				<p>city state INDIA</p>
			</div>
				<div class="col-md-4">
                  <hr class="light">
                  <h5>OUR HOURS</h5>
                  <hr class="light">
				  <p>Monday: 9:30am-10pm</p>
				  <p>Satruaday: 10am-8pm</p>
				  <p>Sunday: closed</p>
				</div>
				<div class="col-md-4">
                  <hr class="light">
                  <h5>OUR OFFICES</h5>
                  <hr class="light">
				  <p>Pune</p>
				  <p>Bombay</p>
				  <p>Delhi</p>
				</div>
			    <div class="col-12">
			    	<hr class="light-100">
			    	<h5>&copy; Future Corporation</h5>
			    	
			    </div>
		</div>
		
	</div>

</footer>


</body>
</html>













