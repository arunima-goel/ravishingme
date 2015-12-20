<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>ravishing.me</title>

    <!-- Bootstrap Core CSS -->
    <asset:stylesheet src="bootstrap.min.css"/>
    
    <!-- Font Awesome CSS -->
    <asset:stylesheet href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"/>
    
    <!-- Custom Checkboxes -->
    <asset:stylesheet src="prettyCheckable.css"/>
    
    <!-- Custom CSS -->
    <asset:stylesheet src="style.css"/>
   
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
</head>

<body>

    <!--Header_section-->
    <header id="header-wrapper">
        
      <div class="container-fluid">
        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container-fluid nav-container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <g:link mapping="/" class="navbar-brand"><asset:image class="logo" src="logo.png" alt="Ravishing.me" /></g:link>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse-container">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <g:link mapping="about">About</g:link>
                            </li>
                            <li>
                                <g:link mapping="faqs">FAQs</g:link>
                            </li>
                            <oauth:disconnected provider="facebook">
	                            <li>
	                               <oauth:connect provider="facebook" id="facebook-connect-link">Sign in</oauth:connect>
                                </li>
	                           	 <li>
	                               <oauth:connect provider="facebook" id="facebook-connect-link" class="signup-highlight" href="#" data-toggle="modal" data-target="#signup">Sign up</oauth:connect>
                                </li>	
                            </oauth:disconnected>
                            <oauth:connected provider="facebook">
	                            <li>
	                                <div class="dropdown">
	                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle"><asset:image src="profile.jpg" class="profile-pic" alt="Profile" /></a>
	                                    <ul class="dropdown-menu arrow_box">
	                                        <li><a href="profile.html" target="_blank">Profile</a></li>	
	                                        <li><a href="settings.html">Settings</a></li>		
	                                        <li><a href="index.html">Logout</a></li>		
	                                    </ul>		
	                                </div>		
	                            </li>
                            </oauth:connected>
                        </ul>
                    </div>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
          </nav>
      </div><!--- Header Container -->
    </header>
    <!--Header_section--> 

    <!-- Page Content -->
    <div id="home-wrapper">
        <asset:image class="home-bg" alt="home" src="home_bg.png" />
        <div class="container home-content">
            <g:form controller="search">
				<div class="row">
	                <div class="col-md-5 col-md-offset-1 col-xs-12 home-search">
	                    <span class="drp-caret"></span>
	                    <div class="button-group">
	                        <button type="button" class="dropdown-search-btn" data-toggle="dropdown"></button>
	                        <ul class="search-header-checkboxes dropdown-menu outer-noscroll">
	                            <div class="inner-noscroll">
	                            	<g:each in="${org.ravishingme.Service.list()}" var="service" >
									  <li><input type="checkbox" name="services" value="${service.id}" data-label="${service.name}"/></li>
	                                </g:each>
	                            </div>
	                            <div class="scroll-opac"></div>
	                        </ul>
	                    </div>
	                </div>
	                <div class="col-md-5 col-xs-12 home-city">
	                    <div class="input-group">
	                        <div class="drp-caret"></div>
	                        <div class="button-group">
	                        <button type="button" class="dropdown-city-btn" data-toggle="dropdown">Delhi</button>
	                            <ul class="dropdown-menu outer-noscroll">
	                                <div class="inner-noscroll">
	                                    <g:each in="${org.ravishingme.City.list()}" var="city" >
										  <li><a>${city.name}</a></li>
										</g:each>
	                                </div>
	                                <div class="scroll-opac"></div>
	                            </ul>
	                        </div>
	                        <span class="input-group-btn">
	                            <g:actionSubmit class="btn btn-default home-btn" action="index" value="Search" />
							</span>
	                    </div><!-- /input-group -->
	                </div><!-- /home-city row -->
	            </div><!-- /Search Bar Row -->
            </g:form>
        </div><!-- Home Content Container -->
    </div><!-- /Home Wrapper -->
    
    <!-- Callout -->
    <div class="home-callout container">
       <div class="row">
          <h3>Be Ravishing,
           <span>Find and contact beauty professionals near you<span></h3>
            <hr/>
        </div><!-- /Row -->
    </div>
           
    <!-- Signup Modal -->
    <div id="signup" class="modal fade" role="dialog">
      <div class="modal-dialog">
      <button class="modal-close" data-dismiss="modal"></button>
        <!-- Modal content-->
        <div class="modal-content text-center">
          <div class="modal-header">
              <h4 class="modal-title">Create your ravishing account.</h4> 
              <h4>It's <span>Free</span></h4>
          </div>
          <div class="modal-body">
            <oauth:connect provider="facebook" id="facebook-connect-link" class="btn btn-block btn-social btn-facebook"><span class="fa fa-5x fa-facebook"></span>Sign up with Facebook</oauth:connect>
            <p>We will not post anything without your permission</p>
          </div>
          <div class="signup-terms">
              <p>By clicking "sign up", you confirm that you accept</p><p> our <a href="#">Terms of service</a> and <a href="#">Privacy Policy</a>.</p>  
          </div>
          <div class="modal-footer">
              <h4>Already a member? <oauth:connect provider="facebook" id="facebook-connect-link">Login</oauth:connect>
          </div>
        </div>

      </div>
    </div>

    <!-- jQuery -->
    <asset:javascript src="jquery.js"/>
    
    <!-- Bootstrap Core JavaScript -->
    <asset:javascript src="bootstrap.min.js"/>
           
    <!-- Custom Checkboxes -->
    <asset:javascript src="prettyCheckable.min.js"/>
    
    <!-- Custom JS -->
    <asset:javascript src="custom.js"/>
    
</body>

</html>