<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqa3VMcmI3YkM2Skh0dE5JeFFKcTJWdExFQVpwd3xBQ3Jtc0tsZGYxQnFENU5PQnNmRzF0NG5uU1JkcXRuMzF0QzBrUzJtV3NlSHJaWGlCbHBSZG1fLVVDRzYtdjV0UHo5amE5UnNTU0NLWFpjbVdiVm92WDhnVEVMVmxLeVYyRm1ROThFTm5CR2JNbFI0VVV6WU1vbw&q=https%3A%2F%2Fstackpath.bootstrapcdn.com%2Ffont-awesome%2F4.7.0%2Fcss%2Ffont-awesome.min.css">
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
<!-- Header --    <span class="text-uppercase">BOOK</span>>
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
				<button onclick="parent.location='index.jsp'"><span class="postnewcar">BACK TO HOME PAGE</span></button>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <button onclick="parent.location='../logout.jsp'"><span class="postnewcar">LOG OUT</span></button>

			</ul>
		</div>
	</nav>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div id="feature" class="feturedsection">
    <h1 class="text-center"><span class="bdots">&bullet;</span>FEATURE<span class="carstxt">C A R S</span>&bullet;</h1>
</div>

        <div class="container mb-5 mt-5">
            <div class="row">
                <div class="col-md-4">
                    <div class="card mt-3">
                        <div class="product-1 align-items-center p-2 text-center">
                            <img src="image/urus1.jpg" alt="" class="rounded" width="200">
                            <div class="mt-3 info">
                                <h2>LAMBORGHINI URUS</h2>
							<p>"Lamborghini Urus is the first Super Sport Utility Vehicle in the world to merge the soul of a super sports car with the functionality of an SUV."</p>
                            </div>
                            <div class="cost mt-3 text-dark">
                                <span>Price &#8360;3.10 Crore</span>
                                <div class="star mt-3 align-items-center">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="p-3 shoe text-center text-white mt-3 cursor">
                            </div>
                            <div class="txthover">
                                    <div class="txtcontent">
                                        <div class="stars">
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                        </div>
                                        <div class="simpletxt">
                                            <h3 class="name">LAMBORGHINI URUS</h3>
                                             <h4 class="price">87 lakhs</h4>
                                            <button onclick="parent.location='cart.html'">Book now</button><br> 							
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



                <div class="col-md-4">
                    <div class="card mt-3">
                        <div class="product-1 align-items-center p-2 text-center">
                            <img src="image/bentley1.jpg" alt="" class="rounded" width="200">
                            <div class="mt-3 info">
                                <h2>BENTLEY BENTAYGA</h2>
							<p>"The Bentley Bentayga is a mid-size, front-engine, all-wheel drive, five-door luxury crossover marketed by Bentley, beginning with model year 2016.
								Engine: 6.0 L twin-turbo W12 petrol; 4.0 L twin-"</p>
                            </div>
                            <div class="watchcost mt-3 text-dark">
                                <span>Price &#8360;4.10 Crore</span>
                                <div class="star mt-3 align-items-center">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="p-3 watch text-center text-white mt-3 cursor">
                            </div>
                            <div class="txthover">
                                    <div class="txtcontent">
                                        <div class="stars">
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                        </div>
                                        <div class="simpletxt">
                                            <h3 class="name">BENTLEY BENTAYGA</h3>
                                             <h4 class="price">4.10 crores</h4>
                                            <button onclick="parent.location='cart.html'">Book now</button><br> 							
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
                <div class="col-md-4">
                    <div class="card mt-3">
                        <div class="product-1 align-items-center p-2 text-center">
                            <img src="image/scar2.jpg" alt="" class="rounded" width="200">
                            <div class="mt-3 info">
                                <h2 class="name">BUGATI VERYON</h2>
								<p>"The Veyron Grand Sport Vitesse was the fastest roadster in the world, reaching an averaged top speed of 408.84 km/h (254.04 mph) in a test on 6 April 2013. </p>
                            </div>
                            <div class="cost mt-3 text-dark">
                                <span>11.39 crores </span>
                                <div class="star mt-3 align-items-center">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="p-3 shoe text-center text-white mt-3 cursor">
                            </div>
                            <div class="txthover">
                                    <div class="txtcontent">
                                        <div class="stars">
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                        </div>
                                        <div class="simpletxt">
                                            <h3 class="name">BUGATI VERYON</h3>
                                             <h4 class="price">11.39 crores</h4>
                                            <button onclick="parent.location='cart.html'">Book now</button><br> 							
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
                <div id="feature" class="feturedsection">
                    <h1 class="text-center"><span class="bdots">&bullet;</span>SPORTS<span class="carstxt">C A R S</span>&bullet;</h1>
                </div>


                <div class="col-md-4">
                    <div class="card mt-3">
                        <div class="product-1 align-items-center p-2 text-center">
                            <img src="image/scar1.jpg" alt="" class="rounded" width="200">
                            <div class="mt-3 info">
                                <h2 class="name">AUDI R8</h2>
								<p>"The Audi R8 is a mid-engine, 2-seater sports car, which uses Audi's trademark quattro permanent all-wheel drive system. ... The fundamental construction of the R8 is based on the Audi Space Frame, 
									Manufacturer: Audi (Audi Sport GmbH)" </p>
								<h2>Price &#8360;1.33 Crore</h2>
                            </div>
                            <div class="watchcost mt-3 text-dark">
                                <div class="star mt-3 align-items-center">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="p-3 watch text-center text-white mt-3 cursor">
                            </div>
                            <div class="txthover">
                                    <div class="txtcontent">
                                        <div class="stars">
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                        </div>
                                        <div class="simpletxt">
                                            <h3 class="name">AUDI R8</h3>
                                             <h4 class="price">1.33 crores</h4>
                                            <button onclick="parent.location='cart.html'">Book now</button><br> 							
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

                <div class="col-md-4">
                    <div class="card mt-3">
                        <div class="product-1 align-items-center p-2 text-center">
                            <img src="image/scar3.jpg" alt="" class="rounded" width="200">
                            <div class="mt-3 info">
                                <h2 class="name">JAGUAR F-TYPE</h2>
								<p>"Seating capacity: 2
									Make: Jaguar Cars
									Horsepower: 221 to 423 kW
									Dimensions: 4,470 mm L x 1,923 mm W x 1,307-1,311 mm H
									Engine: 2.0 L 4-cylinder, 5.0 L V8" </p>
								<h2>Price &#8360;95.12 lakhs</h2>
                            </div>
                            <div class="cost mt-3 text-dark">
                                <div class="star mt-3 align-items-center">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="p-3 shoe text-center text-white mt-3 cursor">
                            </div>
                            <div class="txthover">
                                    <div class="txtcontent">
                                        <div class="stars">
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                        </div>
                                        <div class="simpletxt">
                                            <h3 class="name">JAGUAR F-TYPE</h3>
                                             <h4 class="price">95.12 lakhs</h4>
                                            <button onclick="parent.location='cart.html'">Book now</button><br> 							
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



                <div class="col-md-4">
                    <div class="card mt-3">
                        <div class="product-1 align-items-center p-2 text-center">
                            <img src="image/scar4.jpg" alt="" class="rounded" width="200">
                            <div class="mt-3 info">
                                <h3 class="name">BMW I8 (ELECTRIC)</h3>
								<p>"The BMW i8 is a plug-in hybrid sports car developed by BMW. The i8 is part of BMW's electrified fleet and is marketed under the BMW i sub-brand.
									Electric range: 37 km (23 mi) (NEDC‎); 24 km (15 ...‎
									Engine: B38A15T0 1.5L turbocharged I3 engine ...</p>
								<h2>Price &#8360;2.62 Crore</h2>
                            </div>
                            <div class="watchcost mt-3 text-dark">
                                <div class="star mt-3 align-items-center">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="p-3 watch text-center text-white mt-3 cursor">
                            </div>
                            <div class="txthover">
                                    <div class="txtcontent">
                                        <div class="stars">
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                        </div>
                                        <div class="simpletxt">
                                            <h3 class="name">BMW I8 (ELECTRIC)</h3>
                                             <h4 class="price">2.62 crores</h4>
                                            <button onclick="parent.location='cart.html'">Book now</button><br> 							
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
                <div id="feature" class="feturedsection">
                    <h1 class="text-center"><span class="bdots">&bullet;</span>SUV<span class="carstxt">C A R S</span>&bullet;</h1>
                </div>
                <div class="col-md-4">
                    <div class="card mt-3">
                        <div class="product-1 align-items-center p-2 text-center">
                            <img src="image/ucar1.jpg" alt="" class="rounded" width="200">
                            <div class="mt-3 info">
                                <h2 class="name">MERCEDES G WAGON</h2>
								<p>"Seating capacity: 5
									Fuel economy: 9 km/l combined
									Make: Mercedes-Benz
									Horsepower: 210 to 430 kW
									Engine: 2.9 L 6-cylinder diesel, 4.0 L V8" <br><br><br></p>
                            </div>
                            <div class="cost mt-3 text-dark">
                                <span>1.4 crores</span>
                                <div class="star mt-3 align-items-center">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="p-3 shoe text-center text-white mt-3 cursor">
                            </div>
                            <div class="txthover">
                                    <div class="txtcontent">
                                        <div class="stars">
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                        </div>
                                        <div class="simpletxt">
                                            <h3 class="name">MERCEDES G WAGON</h3>
                                             <h4 class="price">1.4 crores</h4>
                                            <button onclick="parent.location='cart.html'">Book now</button><br> 							
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



                <div class="col-md-4">
                    <div class="card mt-3">
                        <div class="product-1 align-items-center p-2 text-center">
                            <img src="image/ucar5.jpg" alt="" class="rounded" width="200">
                            <h5>SHOE</h5>
                            <div class="mt-3 info">
                                <h2 class="name">PORSCHE CAYENNE</h2>
								<p>"Porsche Cayenne entered into its third generation last year at the 2017 Frankfurt Motor Show. Developed ground-up, the new Cayenne received a new platform, evolutionary design, updated interior, revised powertrain and a whole new equipment list. " </p>
								<h2>Price &#8360;1.9 Crore</h2>
                            </div>
                            <div class="watchcost mt-3 text-dark">
                                <div class="star mt-3 align-items-center">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="p-3 watch text-center text-white mt-3 cursor">
                            </div>
                            <div class="txthover">
                                    <div class="txtcontent">
                                        <div class="stars">
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                        </div>
                                        <div class="simpletxt">
                                            <h3 class="name">PORSCHE CAYENNE</h3>
                                             <h4 class="price">1.9 crores</h4>
                                            <button onclick="parent.location='cart.html'">Book now</button><br> 							
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
                <div class="col-md-4">
                    <div class="card mt-3">
                        <div class="product-1 align-items-center p-2 text-center">
                            <img src="image/ucar3.jpg" alt="" class="rounded" width="200">
                            <div class="mt-3 info">
                                <h2 class="name">LAND ROVER DISCOVERY</h2>
								<p>"The second-generation Land Rover Discovery Sport is available in ‘S’ and ‘R-Dynamic SE’ variants." </p>
								<h2>Price &#8360;75 LAKHS</h2>
                            </div>
                            <div class="cost mt-3 text-dark">
                                <div class="star mt-3 align-items-center">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="p-3 shoe text-center text-white mt-3 cursor">
                            </div>
                            <div class="txthover">
                                    <div class="txtcontent">
                                        <div class="stars">
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                        </div>
                                        <div class="simpletxt">
                                            <h3 class="name">LAND ROVER DISCOVERY</h3>
                                             <h4 class="price">75 lakhs</h4>
                                            <button onclick="parent.location='cart.html'">Book now</button><br> 							
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



                <div class="col-md-4">
                    <div class="card mt-3">
                        <div class="product-1 align-items-center p-2 text-center">
                            <img src="image/ucar4.jpg" alt="" class="rounded" width="200">
                            <h5>SHOE</h5>
                            <div class="mt-3 info">
                                <h2 class="name">AUDI Q8</h2>
								<p>"The Audi Q8 combines the elegance of a four-door luxury coupé with the practical versatility of a large SUV. Richly equipped, comprehensively connected ." </p>
								<h2>Price &#8360;1.33 Crore</h2>
                            </div>
                            <div class="watchcost mt-3 text-dark">
                                <div class="star mt-3 align-items-center">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="p-3 watch text-center text-white mt-3 cursor">
                            </div>
                            <div class="txthover">
                                    <div class="txtcontent">
                                        <div class="stars">
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                        </div>
                                        <div class="simpletxt">
                                            <h3 class="name">AUDI Q8</h3>
                                             <h4 class="price">1.33 crores</h4>
                                            <button onclick="parent.location='cart.html'">Book now</button><br> 							
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
                <div class="col-md-4">
                    <div class="card mt-3">
                        <div class="product-1 align-items-center p-2 text-center">
                            <img src="image/urus1.jpg" alt="" class="rounded" width="200">
                            <div class="mt-3 info">
                                <h2>LAMBORGHINI URUS</h2>
                                    <p>"Lamborghini Urus is the first Super Sport Utility Vehicle in the world to merge the soul of a super sports car with the functionality of an SUV."</p>
                                     <h4>Price &#8360;1.29 Crore</h2>
                            </div>
                            <div class="cost mt-3 text-dark">
                                <div class="star mt-3 align-items-center">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="p-3 shoe text-center text-white mt-3 cursor">
                            </div>
                            <div class="txthover">
                                    <div class="txtcontent">
                                        <div class="stars">
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                        </div>
                                        <div class="simpletxt">
                                            <h3 class="name" name="car1">LAMBORGHINI URUS</h3>
                                             <h4 class="price">87 lakhs</h4>
                                            <button onclick="parent.location='cart.html'" >Book now</button><br> 							
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



                <div class="col-md-4">
                    <div class="card mt-3">
                        <div class="product-1 align-items-center p-2 text-center">
                            <img src="image/scar1.jpg" alt="" class="rounded" width="200">
                            <h5>SHOE</h5>
                            <div class="mt-3 info">
                                <h2>AUDI R8</h2>
                                    <p>"The Audi R8 is a mid-engine, 2-seater sports car, which uses Audi's trademark quattro permanent all-wheel drive system. ... The fundamental construction of the R8 is based on the Audi Space Frame, 
									Manufacturer: Audi (Audi Sport GmbH)"</p>
                                     <h4>Price &#8360;1.29 Crore</h2>
                            </div>
                            <div class="watchcost mt-3 text-dark">
                                <div class="star mt-3 align-items-center">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="p-3 watch text-center text-white mt-3 cursor">
                            </div>
                            <div class="txthover">
                                    <div class="txtcontent">
                                        <div class="stars">
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                            <div class="glyphicon glyphicon-star"></div>
                                        </div>
                                        <div class="simpletxt">
                                            <h3>AUDI R8</h1>
							<p>"The Audi R8 is a mid-engine, 2-seater sports car, which uses Audi's trademark quattro permanent all-wheel drive system. ... The fundamental construction of the R8 is based on the Audi Space Frame, 
									Manufacturer: Audi (Audi Sport GmbH)"</p>
			 				<h4>Price &#8360;2.72 Crore</h2>
                                            <button onclick="parent.location='book_car.html'">Book now</button><br> 							
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
            </div>
            
        </div>



        
    </body>
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
</html>