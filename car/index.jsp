<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Car Shop</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="source/bootstrap-3.3.6-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="source/font-awesome-4.5.0/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="style/slider.css">
	<link rel="stylesheet" type="text/css" href="style/mystyle.css">

</head>
<body>
<%
String username = (String)session.getAttribute("username");
if(username==null||username.equals(""))
  response.sendRedirect("../login.html");
%>
<!-- Header -->
<div class="allcontain">
	<!-- Navbar Up -->
	<nav class="topnavbar navbar-default topnav">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed toggle-costume" data-toggle="collapse" data-target="#upmenu" aria-expanded="false">
					<span class="sr-only"> Toggle navigaion</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand logo" href="#"><img src="image/logo2.png" alt="logo"></a>
			</div>	 
		</div>
		<div class="collapse navbar-collapse" id="upmenu">
			<ul class="nav navbar-nav" id="navbarontop">
				<li class="active"><a href="#">HOME</a> </li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"	data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">CATEGORIES <span class="caret"></span></a>
					<ul class="dropdown-menu dropdowncostume">
						<li><a href="#feature">Feature</a></li>
						<li><a href="#oldcars">Vintage</a></li>
						<li><a href="#sportcars">Sports</a></li>
						<li><a href="#suvcars">Suv</a></li>
					</ul>
				</li>
				<button onclick="parent.location='demo.jsp'"><span class="postnewcar">BUY CAR</span></button>
				<button onclick="parent.location='sell_car.jsp'"><span class="postnewcar">SELL CAR</span></button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button onclick="parent.location='../bookings.jsp'"><span class="postnewcar">YOUR BOOKINGS</span></button>
                <button onclick="parent.location='../logout.jsp'"><span class="postnewcar">LOG OUT</span></button>
			</ul>
		</div>
	</nav>
</div>
<!--_______________________________________ Carousel__________________________________ -->
<div class="allcontain">
	<div id="carousel-up" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner " role="listbox">
			<div class="item active">
				<img src="image/culinan.jpg" alt="oldcar">
				<div class="carousel-caption">
					<h2>ROLLS ROYCE CULLINAN</h2>
				</div>
			</div>
			<div class="item">
				<img src="image/bentley.jpg" alt="porche">
				<div class="carousel-caption">
					<h2>BENTLEY BENTAYGA</h2>
				</div>
			</div>
			<div class="item">
				<img src="image/urus.jpg" alt="benz">
				<div class="carousel-caption">
					<h2>LAMBORGHINI URUS</h2>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-default midle-nav">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed textcostume" data-toggle="collapse" data-target="#navbarmidle" aria-expanded="false">
						<h1>SEARCH TEXT</h1>
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
		</nav>
	</div>
</div>
<!-- ____________________Featured Section ______________________________--> 
<div class="allcontain">
	<div id="feature" class="feturedsection">
		<h1 class="text-center"><span class="bdots">&bullet;</span>F E A T U R E S<span class="carstxt">C A R S</span>&bullet;</h1>
	</div>
	<div class="feturedimage">
		<div class="row firstrow">
			<div class="col-lg-6 costumcol colborder1">
				<div class="row costumrow">
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img1colon">
						<img src="image/urus1.jpg" alt="porsche">
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
						<div class="featurecontant">
							<h1>LAMBORGHINI URUS</h1>
							<p>"Lamborghini Urus is the first Super Sport Utility Vehicle in the world to merge the soul of a super sports car with the functionality of an SUV."</p>
			 				<h2>Price &#8360;3.10 Crore</h2>
			 				<button id="btnRM" onclick="rmtxt()">READ MORE</button>
			 				<div id="readmore">
			 						<h1>LAMBORGHINI URUS</h1>
			 						<p>"Lamborghini Urus is the first Super Sport Utility Vehicle in the world to merge the soul of a super sports car with the functionality of an SUV. Powered by a 4.0-liter twin-turbo V8 engine producing 650 CV and 850 Nm of torque, Urus accelerates from 0 to 62 mph in 3.6 seconds and reaches a top speed of 190 mph."<br>
			 						</p>
			 						<button id="btnRL">READ LESS</button>
			 				</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 costumcol colborder2">
				<div class="row costumrow">
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img2colon">
						<img src="image/bentley1.jpg" alt="porsche1">
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
						<div class="featurecontant">
							<h1>BENTLEY BENTAYGA</h1>
							<p>"The Bentley Bentayga is a mid-size, front-engine, all-wheel drive, five-door luxury crossover marketed by Bentley, beginning with model year 2016.
								Engine: 6.0 L twin-turbo W12 petrol; 4.0 L twin-"</p>
			 				<h2>Price &#8360;4.59 Crore</h2>
			 				<button id="btnRM2">READ MORE</button>
			 				<div id="readmore2">
			 						<h1>BENTLEY BENTAYGA</h1>
			 						<p>"The Bentley Bentayga is a mid-size, front-engine, all-wheel drive, five-door luxury crossover marketed by Bentley, beginning with model year 2016.
										Engine: 6.0 L twin-turbo W12 petrol; 4.0 L twin-"</p>
			 						<button id="btnRL2">READ LESS</button>
			 				</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
<!-- ________________________LATEST CARS SECTION _______________________-->
<div id="oldcars" class="latestcars">
	<h1 class="text-center">&bullet; VINTAGE   CARS &bullet;</h1>
</div>
<br>
<br>
<!-- ________________________Latest Cars Image Thumbnail________________-->
	<div class="grid">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="image/car1.jpg" alt="car1">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Rolls Royce</h3>
	 							<h4 class="price"> 56 lakhs;</h4>
	 							<button onclick="parent.location='demo.html'">Book now</button><br>
	 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 ">
				<div class="txthover">
					<img src="image/car2.jpg" alt="car2">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Renault</h3>
	 							<h4 class="price">45 lakhs </h4>
								<button onclick="parent.location='demo.html'">Book now</button><br>	 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="image/car3.jpg" alt="car3">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Ford Mustang</h3>
	 							<h4 class="price">73 lakhs</h4>
								<button onclick="parent.location='demo.html'">Book now</button><br> 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="image/car4.jpg" alt="car4">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Rover</h3>
	 							<h4 class="price">87 lakhs</h4>
							    <button onclick="parent.location='demo.html'">Book now</button><br> 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="image/car5.jpg" alt="car5">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Porche</h3>
	 							<h4 class="price">86 lakhs </h4>
									 <button onclick="parent.location='demo.html'">Book now</button><br> 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="image/car6.jpg" alt="car6">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Porche 911</h3>
	 							<h4 class="price">56 lakhs</h4>
									 <button onclick="parent.location='demo.html'">Book now</button><br> 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="image/car7.jpg" alt="car7">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Chevrolet SS</h3>
	 							<h4 class="price">73 lakhs</h4>
									 <button onclick="parent.location='demo.html'">Book now</button><br> 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="image/car8.jpg" alt="car8">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Meclaren</h3>
	 							<h4 class="price">52 lakhs</h4>
									 <button onclick="parent.location='demo.html'">Book now</button><br> 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>	
		</div>
	</div>
<!-- ________________________SPORTS CARS SECTION _______________________-->
<div id="sportcars" class="latestcars">
	<h1 class="text-center">&bullet; SPORTS  CARS &bullet;</h1>
</div>
<br>
<br>
<!-- ________________________SPORTS Image Thumbnail________________-->
	<div class="grid">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="image/scar1.jpg" alt="car1">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">AUDI R8</h3>
								<p>"The Audi R8 is a mid-engine, 2-seater sports car, which uses Audi's trademark quattro permanent all-wheel drive system. ... The fundamental construction of the R8 is based on the Audi Space Frame, and uses an aluminium monocoque which is built using space frame principles.
									Manufacturer: Audi (Audi Sport GmbH)
									Layout: Longitudinal mid-engine, rear-wheel-d...
									Body style: 2-door coupé; 2-door convertible ." </p>
	 							<h4 class="price"> 
									 <button onclick="parent.location='demo.html'">Book now</button><br> 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 ">
				<div class="txthover">
					<img src="image/scar2.jpg" alt="car2">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">BUGATI VERYON</h3>
								<p>"The Veyron Grand Sport Vitesse was the fastest roadster in the world, reaching an averaged top speed of 408.84 km/h (254.04 mph) in a test on 6 April 2013.
									...
									Bugatti Veyron.
									Bugatti Veyron EB 16.4
									Length	4,462 mm (175.7 in)
									Width	1,998 mm (78.7 in)
									Height	1,204 mm (47.4 in)
									Kerb weight	1,838–1,990 kg (4,052–4,387 lb)" </p>
	 							<h4 class="price">2.5 crores </h4>
									 <button onclick="parent.location='demo.html'">Book now</button><br> 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="image/scar3.jpg" alt="car3">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">JAGUAR F-TYPE</h3>
								<p>"Seating capacity: 2
									Make: Jaguar Cars
									Horsepower: 221 to 423 kW
									Dimensions: 4,470 mm L x 1,923 mm W x 1,307-1,311 mm H
									Engine: 2.0 L 4-cylinder, 5.0 L V8" </p>
	 							<h4 class="price" >1.2 crores</h4>
								 <button onclick="parent.location='demo.html'">Book now</button><br> 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="image/scar4.jpg" alt="car4">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">BMW I8 (ELECTRIC)</h3>
								<p>"The BMW i8 is a plug-in hybrid sports car developed by BMW. The i8 is part of BMW's electrified fleet and is marketed under the BMW i sub-brand.
									Electric range: 37 km (23 mi) (NEDC‎); 24 km (15 ...‎
									Engine: B38A15T0 1.5L turbocharged I3 engine ...
									Electric motor: 98 kW (131 hp)
									Hybrid drivetrain: Plug-in hybrid" </p>
	 							<h4 class="price">3.2 crores </h4>
									 <button onclick="parent.location='demo.html'">Book now</button><br> 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>	
		</div>
	</div>
<!-- ________________________SUV CARS SECTION _______________________-->
<div id="suvcars" class="latestcars">
	<h1 class="text-center">&bullet; SUV &bullet;</h1>
</div>
<br>
<br>
<!-- ________________________SUV Image Thumbnail________________-->
	<div class="grid">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="image/ucar1.jpg" alt="car1">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">MERCEDES G WAGON</h3>
								<p>"Seating capacity: 5
									Fuel economy: 9 km/l combined
									Make: Mercedes-Benz
									Horsepower: 210 to 430 kW
									Engine: 2.9 L 6-cylinder diesel, 4.0 L V8" </p>
	 							<h4 class="price">  1.4 crores</h4>
									 <button onclick="parent.location='demo.html'">Book now</button><br> 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 ">
				<div class="txthover">
					<img src="image/ucar2.jpg" alt="car2">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">AUDI Q8</h3>
								<p> </p>
	 							<h4 class="price">1 crore</h4>
								 <button onclick="parent.location='demo.html'">Book now</button><br> 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="image/ucar3.jpg" alt="car3">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">RANGE ROVER DISCOVERY</h3>
								<p></p>
	 							<h4 class="price">1 crore</h4>
									 <button onclick="parent.location='demo.html'">Book now</button><br> 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="txthover">
					<img src="image/urus1.jpg" alt="car4">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">LAMBORGHINI URUS</h3>
								<p></p>
	 							<h4 class="price">2 crores</h4>
									 <button onclick="parent.location='demo.html'">Book now</button><br> 							
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
				</div>	 
			</div>	
		</div>
	</div>
<!-- _______________________________News Letter ____________________-->
	<div class="newslettercontent">
		<div class="leftside">
			<img src="image/border.png" alt="border">
			<h1>NEWSLETTER</h1>
			<p>Subscribe to the COLLECTIONCARS mailing list to <br>
				receive updates on new arrivals, special offers <br>
				and other discount information.</p>
		</div>
		<div class="rightside">
			<img class="newsimage" src="image/newsletter.jpg" alt="newsletter">
			<input type="text" class="form-control" id="subemail" placeholder="EMAIL">
			<button>SUBSCRIBE</button>
		</div>
	</div>
	<!-- ______________________________________________________Bottom Menu ______________________________-->
	<div class="bottommenu">
		<div class="bottomlogo">
		<span class="dotlogo">&bullet;</span><img src="image/logo2.png" alt="logo1"><span class="dotlogo">&bullet;;</span>
		</div>
		<ul class="nav nav-tabs bottomlinks">
			<li role="presentation" ><a href="#/" role="button">ABOUT US</a></li>
			<li role="presentation"><a href="#/">CATEGORIES</a></li>
			<li role="presentation"><a href="#/">PREORDERS</a></li>
			<li role="presentation"><a href="#/">CONTACT US</a></li>
			<li role="presentation"><a href="#/">RECEIVE OUR NEWSLETTER</a></li>
		</ul>
	</div>
</div>
<script type='text/javascript'>

  (function()
  {
    if( window.localStorage )
    {
    if( !localStorage.getItem('firstLoad') )
    {
      localStorage['firstLoad'] = true;
      window.location.reload();
    }  
    else
      localStorage.removeItem('firstLoad');
    }
  })();
  
  </script>
<script type="text/javascript" src="source/bootstrap-3.3.6-dist/js/jquery.js"></script>
<script type="text/javascript" src="source/js/isotope.js"></script>
<script type="text/javascript" src="source/js/myscript.js"></script> 
<script type="text/javascript" src="source/bootstrap-3.3.6-dist/js/jquery.1.11.js"></script>
<script type="text/javascript" src="source/bootstrap-3.3.6-dist/js/bootstrap.js"></script>
</body>
</html>