<!DOCTYPE html>
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
                        <li>
                            <a href="contact.html">CONTACT</a>
         
                        </li>
                        <button onclick="parent.location='index.jsp'"><span class="postnewcar">Back to home page</span></button>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <button onclick="parent.location='../logout.jsp'"><span class="postnewcar">LOG OUT</span></button>
       
                    </ul>
                </div>
            </nav>
        </div>
        <div class="wrapper fadeInDown">
            <div id="formContent">
              <!-- Tabs Titles -->
          
              <!-- Icon -->
              <div class="fadeIn first">
                <img src="../logo.jpg" id="icon" alt="User Icon" />
              </div>
          
              <!-- Register Form -->
              <form action="sell.jsp" onSubmit="return formValidation();" method="POST">
                <input type="text" id="nameid" class="fadeIn second" name="rname" placeholder="Enter Your Full Name">
                <input type="text" id="emailid" class="fadeIn second" name="remail" placeholder="Enter your emailid">
                <input type="number" id="" class="fadeIn second" name="ryear" placeholder="Enter your car registration year">
                <input type="text" id="mobileid" class="fadeIn second" name="company" placeholder="Enter your car manufactureer">
                <input type="text" id="passid1" class="fadeIn third" name="add" placeholder="  Enter Your Address For Communication">
                <center><input type="file" id="passid2" class="fadeIn third" name="file" placeholder="Filename"></center>
                <br>
                <input  type="radio" id="date" class="fadeIn third" placeholder="Agree to our terms and conditions" >Agree to our terms and conditions<br>
                <a href="https://www.kluniversity.in/">Click here</a>
                <br>
                <input type="submit" class="fadeIn fourth" value="BOOK">
                <br>
              </form>
          
            </div>
          </div>
          <style>
            body {
      font-family: "Poppins", sans-serif;
      height: 100vh;
      background-image: url(../back100.jpg);
      background-size: cover;
      background-attachment: fixed;
    }
    
    a {
      color: #92badd;
      display:inline-block;
      text-decoration: none;
      font-weight: 400;
    }
    
    h2 {
      text-align: center;
      font-size: 16px;
      font-weight: 600;
      text-transform: uppercase;
      display:inline-block;
      margin: 40px 8px 10px 8px; 
      color: #cccccc;
    }
    
    
    
    /* STRUCTURE */
    
    .wrapper {
      display: flex;
      align-items: center;
      flex-direction: column; 
      justify-content: center;
      width: 100%;
      min-height: 100%;
      padding: 20px;
    }
    
    #formContent {
      -webkit-border-radius: 10px 10px 10px 10px;
      border-radius: 10px 10px 10px 10px;
      background: #fff;
      padding: 30px;
      width: 90%;
      max-width: 450px;
      position: relative;
      padding: 0px;
      -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
      box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
      text-align: center;
    }
    
    #formFooter {
      background-color: #f6f6f6;
      border-top: 1px solid #dce8f1;
      padding: 25px;
      text-align: center;
      -webkit-border-radius: 0 0 10px 10px;
      border-radius: 0 0 10px 10px;
    }
    
    
    
    /* TABS */
    
    h2.inactive {
      color: #cccccc;
    }
    
    h2.active {
      color: #0d0d0d;
      border-bottom: 2px solid #5fbae9;
    }
    
    
    
    /* FORM TYPOGRAPHY*/
    
    input[type=button], input[type=submit], input[type=reset]  {
      background-color: #56baed;
      border: none;
      color: white;
      padding: 15px 80px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      text-transform: uppercase;
      font-size: 13px;
      -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
      box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
      -webkit-border-radius: 5px 5px 5px 5px;
      border-radius: 5px 5px 5px 5px;
      margin: 5px 20px 40px 20px;
      -webkit-transition: all 0.3s ease-in-out;
      -moz-transition: all 0.3s ease-in-out;
      -ms-transition: all 0.3s ease-in-out;
      -o-transition: all 0.3s ease-in-out;
      transition: all 0.3s ease-in-out;
    }
    
    input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
      background-color: #39ace7;
    }
    
    input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
      -moz-transform: scale(0.95);
      -webkit-transform: scale(0.95);
      -o-transform: scale(0.95);
      -ms-transform: scale(0.95);
      transform: scale(0.95);
    }
    
    input[type=text] {
      background-color: #f6f6f6;
      border: none;
      color: #0d0d0d;
      padding: 15px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 5px;
      width: 85%;
      border: 2px solid #f6f6f6;
      -webkit-transition: all 0.5s ease-in-out;
      -moz-transition: all 0.5s ease-in-out;
      -ms-transition: all 0.5s ease-in-out;
      -o-transition: all 0.5s ease-in-out;
      transition: all 0.5s ease-in-out;
      -webkit-border-radius: 5px 5px 5px 5px;
      border-radius: 5px 5px 5px 5px;
    }
    
    input[type=text]:focus {
      background-color: #fff;
      border-bottom: 2px solid #5fbae9;
    }
    
    input[type=text]:placeholder {
      color: #cccccc;
    }
    input[type=password] {
      background-color: #f6f6f6;
      border: none;
      color: #0d0d0d;
      padding: 15px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 5px;
      width: 85%;
      border: 2px solid #f6f6f6;
      -webkit-transition: all 0.5s ease-in-out;
      -moz-transition: all 0.5s ease-in-out;
      -ms-transition: all 0.5s ease-in-out;
      -o-transition: all 0.5s ease-in-out;
      transition: all 0.5s ease-in-out;
      -webkit-border-radius: 5px 5px 5px 5px;
      border-radius: 5px 5px 5px 5px;
    }
    
    input[type=password]:focus {
      background-color: #fff;
      border-bottom: 2px solid #5fbae9;
    }
    
    input[type=password]:placeholder {
      color: #cccccc;
    }
    
    
    
    /* ANIMATIONS */
    
    /* Simple CSS3 Fade-in-down Animation */
    .fadeInDown {
      -webkit-animation-name: fadeInDown;
      animation-name: fadeInDown;
      -webkit-animation-duration: 1s;
      animation-duration: 1s;
      -webkit-animation-fill-mode: both;
      animation-fill-mode: both;
    }
    
    @-webkit-keyframes fadeInDown {
      0% {
        opacity: 0;
        -webkit-transform: translate3d(0, -100%, 0);
        transform: translate3d(0, -100%, 0);
      }
      100% {
        opacity: 1;
        -webkit-transform: none;
        transform: none;
      }
    }
    
    @keyframes fadeInDown {
      0% {
        opacity: 0;
        -webkit-transform: translate3d(0, -100%, 0);
        transform: translate3d(0, -100%, 0);
      }
      100% {
        opacity: 1;
        -webkit-transform: none;
        transform: none;
      }
    }
    
    /* Simple CSS3 Fade-in Animation */
    @-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
    @-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
    @keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
    
    .fadeIn {
      opacity:0;
      -webkit-animation:fadeIn ease-in 1;
      -moz-animation:fadeIn ease-in 1;
      animation:fadeIn ease-in 1;
    
      -webkit-animation-fill-mode:forwards;
      -moz-animation-fill-mode:forwards;
      animation-fill-mode:forwards;
    
      -webkit-animation-duration:1s;
      -moz-animation-duration:1s;
      animation-duration:1s;
    }
    
    .fadeIn.first {
      -webkit-animation-delay: 0.4s;
      -moz-animation-delay: 0.4s;
      animation-delay: 0.4s;
    }
    
    .fadeIn.second {
      -webkit-animation-delay: 0.6s;
      -moz-animation-delay: 0.6s;
      animation-delay: 0.6s;
    }
    
    .fadeIn.third {
      -webkit-animation-delay: 0.8s;
      -moz-animation-delay: 0.8s;
      animation-delay: 0.8s;
    }
    
    .fadeIn.fourth {
      -webkit-animation-delay: 1s;
      -moz-animation-delay: 1s;
      animation-delay: 1s;
    }
    
    /* Simple CSS3 Fade-in Animation */
    .underlineHover:after {
      display: block;
      left: 0;
      bottom: -10px;
      width: 0;
      height: 2px;
      background-color: #56baed;
      content: "";
      transition: width 0.2s;
    }
    
    .underlineHover:hover {
      color: #0d0d0d;
    }
    
    .underlineHover:hover:after{
      width: 100%;
    }
    
    
    
    /* OTHERS */
    
    *:focus {
        outline: none;
    } 
    
    #icon {
      width:60%;
    }
        </style>
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
</html>