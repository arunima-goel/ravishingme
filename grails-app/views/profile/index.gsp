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
    
    <!--- Google Maps -->
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script>
        function init_map() {
		
        var var_location = new google.maps.LatLng(28.535305, 77.241679);
 
        var var_mapoptions = {
          center: var_location,
          zoom: 14,
          mapTypeId: google.maps.MapTypeId.ROADMAP,
          mapTypeControl: false,
          panControl:false,
          rotateControl:false,
          streetViewControl: false,
          scrollwheel: false,    
        };
 
		var var_pin = 'img/map-marker.png';
		var var_marker = new google.maps.Marker({
			position: var_location,
			map: var_map,
			icon: var_pin,
			title:"Greater Kailash 2"});
 
        var var_map = new google.maps.Map(document.getElementById("map-canvas"),
            var_mapoptions);
 
		var_marker.setMap(var_map);	
 
      }
 
      google.maps.event.addDomListener(window, 'load', init_map);
    </script>
</head>

<body>

    <!--Header_section-->
    <header id="header-wrapper">
      <div class="container-fluid">
          <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top profile-nav" role="navigation">
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
	                                        <li class="selected"><a href="#" target="_blank">Profile</a></li>
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
                
                    <div class="secondary-header row">
                    <div class="secondary-inner">
                        <div class="col-md-6 profile-left-header">
                            <asset:image src="profile.jpg" alt="" class="profile-pic" />
                            <h1 class="profile-page-title">${profile.name}<span><a href="settings.html">Edit</a></span></h1>
                        </div>
                        <div class="col-md-6">
                            <ul class="second-nav">
                                <li class="selected"><a href="#about">About</a></li>
                                <li><a href="#portfolio">Portfolio</a></li>
                                <li><a href="#services">Services</a></li>
                                <li><a href="#contact">Contact</a></li>
                            </ul>
                        </div>
                    </div><!-- Secondary Header -->
                    </div><!-- Secondary Inner -->
                </div><!-- Seconardy Header Row -->
                <!-- /.container -->
            </nav>
    </div><!--- Header Container -->
    </header>
    <!--Header_section--> 

    <!-- Page Content -->
    <div id="profile-page-wrapper">
        <asset:image src="http://placehold.it/1024x200" alt="" class="profile-banner" />
        <div class="container-fluid">
            <span class="anchor" id="about"></span>
            <section class="about">
                <div class="about-section">
                    <div class="section-header text-center">
                        <h2 class="profile-section-header">About <a href="settings.html">Edit</a></h2>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-4 text-center">
                            <p>${profile.aboutYou}</p>
                        
                        <div class="row text-center about-list">
                            <div class="col-md-4">${profile.isWillingToTravel}<span>To Travel</span></div>
                            <div class="col-md-4">${profile.yearsOfExperience}<span>Years of Experience</span></div>
                            <div class="col-md-4"><asset:image src="heart-gray.png" alt="" class="heart-img" /><span>Favorite</span></div>
                        </div><!-- /.row -->
                            
                        </div>
                    </div><!-- /.row -->
                    

                    
                </div>
                
            </section><!-- About Section -->
            
            <span class="anchor" id="portfolio"></span>
            <section class="portfolio">
                <div class="portfolio-content">
                    <div class="section-header text-center">
                        <h2 class="profile-section-header">Portfolio <a href="about.html">Contact us</a></h2>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-2"><asset:image src="http://placehold.it/455x310" alt="" /></div>
                        <div class="col-md-4"><asset:image src="http://placehold.it/455x310" alt="" /></div>
                    </div>    
                    
                    <div class="row">
                        <div class="col-md-4 col-md-offset-2"><asset:image src="http://placehold.it/455x310" alt="" /></div>
                        <div class="col-md-4"><asset:image src="http://placehold.it/455x310" alt="" /></div>
                    </div>    
                </div>
            </section><!-- Portfolio Section -->   
            
            <span class="anchor" id="services"></span>
            <section class="services">
                <div class="services-content">
                    <div class="section-header text-center">
                        <h2 class="profile-section-header">Services With Their Starting Prices <a href="settings.html">Edit</a></h2>
                        <a href="" class="sub-title disabled">Inquiry</a>
                    </div>
                    
                    <div class="row services-list">
                        <div class="col-md-2 col-md-offset-4">
                            <h6>Trial</h6>
                            <p>Complimentary</p>
                            <p>Paid</p>
                        </div>
                        
                        <div class="col-md-2 services-model">
                            <br/>
                            <p>Yes</p>
                            <p>Yes</p>
                        </div>
                    </div>
                    
                    <div class="row services-list">
                        <div class="col-md-2 col-md-offset-4">
                            <h6>Makeup</h6>
                            <p>Light makeup</p>
                            <p>Party makeup</p>
                            <p>Base makeup</p>
                            <p>Bridal makeup</p>
                            <p>Enagagement makeup</p>
                            <p>Receptiom makeup</p>
                            <p>Eye makeup</p>
                        </div>
                        
                        <div class="col-md-2 services-model">
                            <br/>
                            <p>Rs. 3000</p>
                            <p>Rs. 4000</p>
                            <p>Rs. 2000</p>
                            <p>Rs. 8000 and up</p>
                            <p>Rs. 8000</p>
                            <p>Rs. 2000</p>
                            <p>Rs. 500</p>
                        </div>
                    </div>
                    
                     <div class="row services-list">
                        <div class="col-md-2 col-md-offset-4">
                            <h6>Hair</h6>
                            <p>Haircut</p>
                            <p>Hair Styling</p>
                            <p>Blow drying</p>
                        </div>
                        
                        <div class="col-md-2 services-model">
                            <br/>
                            <p>Rs. 800</p>
                            <p>Rs. 400</p>
                            <p>Rs. 500</p>
                        </div>
                    </div>
                </div>
            </section><!-- Services Section -->   
            
            <span class="anchor" id="contact"></span>
            <section class="contact">
                <!-- Google Map -->
                <div class="row"> 
                    <div id="map-canvas"></div>
                </div>
                
                <div class="section-header text-center">
                        <h2 class="profile-section-header">Contact <a href="settings.html">Edit</a></h2>
                </div>
                <!-- Contact Form -->
                <div class="row">
                    <div class="col-md-5 col-md-offset-2 contact-form">
                      <h3 class="contact-header">Let's have some beauty talk</h3>
                      <form role="form" action="" method="post" >
                        <label for="InputName">Name <span class="required">*</span></label>
                        <input type="text" class="form-control" name="InputName" id="InputName" required>
            
                        <label for="InputEmail">Email <span class="required">*</span></label>
                        <input type="email" class="form-control" id="InputEmail" name="InputEmail" required  >
                           
                        <label for="InputMessage">Message <span class="required">*</span></label>
                        <textarea name="InputMessage" id="InputMessage" class="form-control" rows="5" required></textarea>
                        <input type="submit" name="submit" id="submit" value="Send" class="btn btn-info contact-btn pull-right">
                      
                    </form><!-- /Contact Form -->
                    </div>
                    
                    <div class="col-md-4 contact-info">
                        <h6>Whatsapp</h6>
                        <p>+91-123-234-2345</p>
                        
                        <h6>Business Hours</h6>
                        <p>10am - 6pm</p>
                        
                        <ul class="social-links">
                            <a href="#"><li class="pt-icon"></li></a>
                            <a href="#"><li class="fb-icon"></li></a>
                            <a href="#"><li class="ig-icon"></li></a>
                        </ul>

                    </div>
                </div><!-- /Row -->
            </section><!-- /Contact Section -->
        </div>
    </div><!-- /Page Content Wrapper -->
    
    <footer class="text-center">
        <div class="copyright-text">2015 Â©Ravishing.me. All Rights Reserved</div>
    </footer>
        
    <!-- jQuery -->
    <asset:javascript src="jquery.js"/>
    
    <!-- Bootstrap Core JavaScript -->
    <asset:javascript src="bootstrap.min.js"/>
           
    <!-- Custom JS -->
    <asset:javascript src="custom.js"/>
</body>

</html>