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
    
    <!-- Custom Checkboxes CSS -->
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
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container-fluid nav-container">
                
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <a href="index.html" class="navbar-brand"><asset:image class="logo" src="logo.png" alt="Ravishing.me" /></a>
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
                                <a href="about.html">About</a>
                            </li>
                            <li>
                                <a href="FAQs.html">FAQs</a>
                            </li>
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
                        </ul>
                    </div>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
          </nav>
          
      </div><!--- Header Container -->
    </header><!--Header_section--> 
    
    <!-- Search Header -->
    <div class="search-header">
      <asset:image src="search_bg.png" alt="search" />
      <div class="container">
        <div class="row sh-inner">
        <div class="col-md-5 col-md-offset-1 sh-search">

          <div class="button-group">
            <div class="drp-caret"></div>
            <button type="button" class="dropdown-search-btn" data-toggle="dropdown">Bridal Makeup</button>
            <ul class="search-header-checkboxes dropdown-menu outer-noscroll">
                <div class="inner-noscroll about">
                    <li><input type="checkbox" name="cosmetics" value="Bridal Makeup" data-label="Bridal Makeup" checked/></li>
                    <li><input type="checkbox" name="cosmetics" value="Engagement" data-label="Engagement"/></li>
                    <li><input type="checkbox" name="cosmetics" value="Eye Makeup" data-label="Eye Makeup"/></li>
                    <li><input type="checkbox" name="cosmetics" value="Fashion Shows" data-label="Fashion Shows"/></li>
                    <li><input type="checkbox" name="cosmetics" value="Hairstyle" data-label="Hairstyle"/></li>
                    <li><input type="checkbox" name="cosmetics" value="Light Makeup" data-label="Light Makeup"/></li>
                    <li><input type="checkbox" name="cosmetics" value="Engagement" data-label="Engagement"/></li>
                    <li><input type="checkbox" name="cosmetics" value="Eye Makeup" data-label="Eye Makeup"/></li>
                </div>
                <div class="scroll-opac"></div>
            </ul>
          </div>
        </div>

        <div class="col-md-5 sh-city">
          <div class="input-group">
            <div class="button-group">
            <div class="drp-caret"></div>
            <button type="button" class="dropdown-city-btn" data-toggle="dropdown">Delhi</button>
               <ul class="dropdown-menu outer-noscroll">
                    <div class="inner-noscroll">
                        <li><a>Ahemdabad</a></li>
                        <li><a>Chennai</a></li>
                        <li class="selected"><a>Delhi</a></li>
                        <li><a>Goa</a></li>
                        <li><a>Hyderabad</a></li>
                        <li><a>Chennai</a></li>
                        <li><a>Ahemdabad</a></li>
                        <li><a>Chennai</a></li>
                    </div>
                    <div class="scroll-opac"></div>
                </ul>
            </div>
            <span class="input-group-btn">
                <button class="btn btn-default home-btn" type="button">Search</button>
            </span>
          </div><!-- /input-group -->
        </div><!-- /sh city row -->

      </div><!-- /Search Bar Row -->
    </div><!-- /container -->
    </div><!-- Search Header -->
    
    <!-- About Page Content --> 
    <div class="about-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2 class="profile-section-header">About Us</h2>
                    <p>Ravishing.me is a dedicated free service for locating and contacting professional makeup artists in India. Conversely, it is also for makeup artist interested in reaching out to their potential clientele by listing their business and posting their portfolios on our website. In other words, ravishing.me exists to serve those who are looking for makeup artist and makeup artist who want to get the word out about their makeup brush-wielding skills.</p>
                    <p>And now for the icing on the cake: it's an absolutely free service! Simply create an account by logging in with your gmail, facebook or pinterest username and password. Our members' safety and privacy is our top priority. Your personal information will never be sold to or shared with third-party marketers. 
</p>
                    <p><a href="#">Please visit our Privacy & Security page for details.</a></p>
                </div>
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /About Page Content -->

    <!-- Contact Section -->
    <section class="contact">
            <!-- Google Map -->
            <div class="row"> 
                <div id="map-canvas"></div>
            </div>

            <div class="section-header text-center">
                    <h2 class="profile-section-header">Contact</h2>
            </div>
            <!-- Contact Form -->
            <div class="row">
                <div class="col-md-5 col-md-offset-2 contact-form">
                  <h3 class="contact-header">Let's have some beauty talk</h3>
                <form action="" method="post" >
                    <label for="InputName">Name <span class="required">*</span></label>
                    <input type="text" class="form-control" name="InputName" id="InputName" required>

                    <label for="InputEmail">Email <span class="required">*</span></label>
                    <input type="email" class="form-control" id="InputEmail" name="InputEmail" required>

                    <label for="InputMessage">Message <span class="required">*</span></label>
                    <textarea name="InputMessage" id="InputMessage" class="form-control" rows="5" required></textarea>
                    <input type="submit" name="submit" id="submit" value="Send" class="btn btn-info contact-btn pull-right">

                </form><!-- /Contact Form -->
                </div>

                <div class="col-md-4 contact-info">
                    <h6>Whatsapp</h6>
                    <p>+91-123-234-2345</p>
                    <br/><br/>
                    <ul class="social-links">
                        <a href="#"><li class="pt-icon"></li></a>
                        <a href="#"><li class="fb-icon"></li></a>
                        <a href="#"><li class="ig-icon"></li></a>
                    </ul>

                </div>
            </div><!-- /Row -->
      </section><!-- /Contact Section -->
    
    <footer class="text-center">
        <div class="copyright-text">2015 Â©Ravishing.me. All Rights Reserved</div>
    </footer>

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