<!DOCTYPE html>
<html lang="en" style="overflow-y: scroll">

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

<body class="settings-body">

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
                                        <li class="selected"><a href="settings.html">Settings</a></li>
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
    

    <!-- Settings -->
    <div id="settings">
        <div class="container">
            <div class="row">
                <div class="col-md-4 menu-container">
                    <ul class="settings-menu">
                        <li class="active"><a data-toggle="pill" href="#account-basics">Account Basics</a></li>
                        <!-- Artist Menu -->
                        <li class="artist-menu-item"><a data-toggle="pill" href="#profile-settings">Profile</a></li>
                        <li class="artist-menu-item"><a data-toggle="pill" href="#display-pic">Display Pic</a></li>
                        <li class="artist-menu-item"><a data-toggle="pill" href="#social-networks-settings">Social Networks</a></li>
                        <li class="artist-menu-item"><a data-toggle="pill" href="#awards-settings">Awards & Affiliations</a></li>
                        <li class="artist-menu-item"><a data-toggle="pill" href="#favorites-settings">Favorites</a></li>
                        
                        <!-- User Menu -->
                        <li class="user-menu-item"><a data-toggle="pill" href="#user-preferences">Preferences</a></li>
                        <li class="user-menu-item"><a data-toggle="pill" href="#user-favorites">Favorites</a></li>
                        <li class="user-menu-item"><a data-toggle="pill" href="#user-display-pic">Display Pic</a></li>
                    </ul>
                </div><!-- /.col -->
                
                <div class="col-md-8 settings-content tab-content">

                    <!-- Artist Tabs -->
                    <div id="account-basics" class="tab-pane fade in active">
                        
                        <h2 class="settings-header">Let's start creating your ravishing profile.</h2>
                        <form class="settings-form" action="" method="post" data-toggle="validator">

                            <div class="row">
                                <div class="col-md-4 settings-label">
                                    <label for="artist">Are you an artist?*</label>
                                </div><!-- /.col -->
                                
                                <div class="col-md-8 settings-input has-radio form-group artist-container">
                                    <input type="radio" name="artist" id="artist-yes" value="Yes" required><label for="artist-yes" class="artist-label">Yes</label>
                                    <input type="radio" name="artist" id="artist-no" vale="No"><label for="artist-no">No</label>
                                    <div class="help-block with-errors"></div>
                                </div><!-- /.col -->
                            </div><!-- /.row -->

                            <div class="row">
                                <div class="col-md-4 settings-label">
                                    <label for="name">Full Name*</label>
                                </div><!-- /.col -->
                                <div class="col-md-8 settings-input form-group">
                                    <input type="text" name="name" id="name" data-error="Please enter your full name." pattern="^[a-zA-Z ]*$" required>
                                    <div class="help-block with-errors"></div>
                                </div><!-- /.col -->
                            </div><!-- /.row -->

                            <div class="row">
                                <div class="col-md-4 settings-label">
                                    <label for="email">E-mail*</label>
                                </div><!-- /.col -->
                                <div class="col-md-8 settings-input form-group">
                                    <input type="email" name="email" id="email" data-error="Please enter a valid email address." required>
                                    <div class="help-block with-errors"></div>
                                </div><!-- /.col -->
                            </div><!-- /.row -->

                            <div class="row">
                                <div class="col-md-4 settings-label">
                                    <label for="username">Username</label>
                                </div><!-- /.col -->
                                <div class="col-md-8 settings-input read-only">
                                    <input type="text" name="username" id="username" value="www.ravishing.me/anudubey" readonly>
                                </div><!-- /.col -->
                            </div><!-- /.row -->

                            <div class="row">
                                <div class="col-md-4 settings-label">
                                    <label for="location">Location*</label>
                                </div><!-- /.col -->
                                <div class="col-md-8 settings-input">
                                    <div class="form-group">
                                    <input type="text" name="location" id="location" data-error="Please enter a valid address." placeholder="Street address" required>
                                    <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="row settings-inner">
                                        <div class="col-md-6">
                                            <div class="button-group city-dropdown">
                                            <button type="button" class="settings-dropdown-btn city" data-toggle="dropdown">City</button>
                                                <ul class="dropdown-menu outer-noscroll settings-dropdown-city">
                                                    <div class="inner-noscroll">
                                                        <li><a>Ahemdabad</a></li>
                                                        <li><a>Chennai</a></li>
                                                        <li><a>Delhi</a></li>
                                                        <li><a>Goa</a></li>
                                                        <li><a>Hyderabad</a></li>
                                                        <li><a>Chennai</a></li>
                                                        <li><a>Ahemdabad</a></li>
                                                        <li><a>Chennai</a></li>
                                                        <li><a>Chennai</a></li>
                                                        <li><a>Chennai</a></li>
                                                        <li><a>Chennai</a></li>
                                                    </div>
                                                    <div class="scroll-opac"></div>
                                                </ul>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div><!-- /.col -->
                                        <div class="col-md-6">
                                            
                                            <div class="button-group state-dropdown">
                                                <button type="button" class="settings-dropdown-btn state" data-toggle="dropdown">State</button>
                                                <ul class="dropdown-menu outer-noscroll settings-dropdown-state">
                                                    <div class="inner-noscroll">
                                                        <li><a>Ahemdabad</a></li>
                                                        <li><a>Chennai</a></li>
                                                        <li><a>Delhi</a></li>
                                                        <li><a>Goa</a></li>
                                                        <li><a>Hyderabad</a></li>
                                                        <li><a>Chennai</a></li>
                                                        <li><a>Ahemdabad</a></li>
                                                        <li><a>Chennai</a></li>
                                                        <li><a>Chennai</a></li>
                                                        <li><a>Chennai</a></li>
                                                        <li><a>Chennai</a></li>
                                                        <li><a>Chennai</a></li>
                                                    </div>
                                                    <div class="scroll-opac"></div>
                                                </ul>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div><!-- /.col -->
                                    </div><!-- /.row -->
                                </div><!-- /.col -->
                                
                                <div class="text-center settings-hint basics">
                                    <p>If you don't find your city, please <a href="about.html#contact">contact us</a></p>    
                                </div>
                            </div><!-- /.row -->

                            <div class="row">
                                <div class="col-md-4 settings-label">
                                    <label for="phone">Phone</label>
                                </div><!-- /.col -->
                                <div class="col-md-8 settings-input form-group">
                                    <input type="text" name="phone" id="phone" data-error="Please enter a valid phone number." placeholder="1234567890" pattern="[0-9]{0,13}">
                                    <div class="help-block with-errors"></div>
                                </div><!-- /.col -->
                            </div><!-- /.row -->

                             <div class="row">
                                <div class="col-md-4 settings-label">
                                    <label for="whatsapp">Whatsapp Number*</label>
                                </div><!-- /.col -->
                                <div class="col-md-8 settings-input form-group">
                                    <input type="text" name="whatsapp" id="whatsapp" placeholder="1234567890" data-error="Please enter a valid Whatsapp number." pattern="[0-9]{1,13}" required>
                                    <div class="help-block with-errors"></div>
                                    <div class="whatsapp-msg">Your whatsapp number will be visible on your profile page.</div>
                                </div><!-- /.col -->
                            </div><!-- /.row --> 
                            <!-- Settings Footer -->
                            <div class="settings-footer">
                                <div class="form-btns pull-right">
                                    <a href="#" data-target="#warning-modal" data-toggle="modal" class="cancel-btn">Cancel</a>
                                    <button class="save-btn">Save</button>
                                </div>
                            </div><!-- /.settings footer -->
                        </form><!-- /.form -->
                        
                    </div><!-- /.account basics tab content -->
                    
                    <div id="profile-settings" class="tab-pane fade">
                    <h2 class="settings-header">Add some basic information to setup your profile</h2>
                    <form class="settings-form" action="" method="post" data-toggle="validator">
                    <div class="row">
                        <div class="col-md-4 settings-label">
                            <label for="bio">Bio</label>
                        </div><!-- /.col -->
                        <div class="col-md-8 settings-input form-group">
                            <textarea rows="10" cols="66" maxlength="1000"></textarea>
                            <div class="bio-msg">Maximum 1,000 characters</div>
                        </div><!-- /.col -->
                    </div><!-- /.row -->     
                        
                    <div class="row">
                        <div class="col-md-4 settings-label">
                            <label for="artist">Willing to travel*</label>
                        </div><!-- /.col -->
                        <div class="col-md-8 settings-input has-radio travel-container">
                            <input type="radio" name="travel" id="travel-yes" value="Yes"><label for="travel-yes" class="has-radio">Yes</label>
                            <input type="radio" name="travel" id="travel-no" value="No"><label for="travel-no">No</label>
                            <div class="help-block with-errors"></div>
                        </div><!-- /.col -->                 
                    </div><!-- /.row -->
                        
                   <div class="row">
                        <div class="col-md-4 settings-label">
                            <label for="cosmetics">Cosmetics*</label>
                        </div><!-- /.col -->
                        <div class="col-md-8 settings-input form-group cosmetics-group">
                            <ul class="settings-checkboxes cosmetics">
                                <li><input type="checkbox" name="cosmetics" data-label="Avon" data-customClass="cosmetics-check" class="cos-checkbox"/></li>
                                <li><input type="checkbox" name="cosmetics" data-label="Blue Heaven" data-customClass="cosmetics-check" class="cos-checkbox"/></li>
                                <li><input type="checkbox" name="cosmetics" data-label="Bobbi Brown" data-customClass="cosmetics-check" class="cos-checkbox"/></li>
                                <li><input type="checkbox" name="cosmetics" data-label="Chamber" data-customClass="cosmetics-check" class="cos-checkbox"/></li>
                                <li><input type="checkbox" name="cosmetics" data-label="Christian Dior" data-customClass="cosmetics-check" class="cos-checkbox"/></li>
                                <li><input type="checkbox" name="cosmetics" data-label="Color Bar" data-customClass="cosmetics-check" class="cos-checkbox"/></li>
                                <li><input type="checkbox" name="cosmetics" data-label="Elle 18" data-customClass="cosmetics-check" class="cos-checkbox"/></li>
                                <li><input type="checkbox" name="cosmetics" data-label="Lakme" data-customClass="cosmetics-check" class="cos-checkbox"/></li>
                                <li><input type="checkbox" name="cosmetics" data-label="Lancome" data-customClass="cosmetics-check" class="cos-checkbox"/></li>
                                <li><input type="checkbox" name="cosmetics" data-label="L'Oreal Paris" data-customClass="cosmetics-check" class="cos-checkbox"/></li>
                                <li><input type="checkbox" name="cosmetics" data-label="M.A.C." data-customClass="cosmetics-check" class="cos-checkbox"/></li>
                                <li><input type="checkbox" name="cosmetics" data-label="Maybelline" data-customClass="cosmetics-check" class="cos-checkbox"/></li>
                                <li><input type="checkbox" name="cosmetics" data-label="Miss Claire" data-customClass="cosmetics-check" class="cos-checkbox"/></li>
                                <li><input type="checkbox" name="cosmetics" data-label="Nars" data-customClass="cosmetics-check" class="cos-checkbox"/></li>                             
                            </ul>
                            <div class="help-block with-errors cosmetics"></div>
                        <div class="text-center settings-hint">
                            <p>If you don't find a cosmetic of your choice, please <a href="about.html#contact">contact us</a></p>    
                        </div>
                        </div><!-- /.col -->
                    </div><!-- /.row --> 
                        
                    <div class="row">
                        <div class="col-md-4 settings-label">
                            <label for="cosmetics">Services*</label>
                        </div><!-- /.col -->
                        <div class="col-md-8 settings-input">
                            
                            <div class="row">
                                <div class="col-md-6">
                                    <ul class="services-checkboxes">
                                        <li class="services-header">Add Services</li>
                                        <li><input type="checkbox" name="services" data-label="Avon" data-customClass="services-check" class="service-checkbox"/></li>
                                        <li><input type="checkbox" name="services" data-label="Blue Heaven" data-customClass="services-check" class="service-checkbox"/></li>
                                        <li><input type="checkbox" name="services" data-label="Bobbi Brown" data-customClass="services-check" class="service-checkbox"/></li>
                                        <li><input type="checkbox" name="services" data-label="Chamber" data-customClass="services-check" class="service-checkbox"/></li>
                                        <li><input type="checkbox" name="services" data-label="Christian Dior" data-customClass="services-check" class="service-checkbox"/></li>
                                        <li><input type="checkbox" name="services" data-label="Color Bar" data-customClass="services-check" class="service-checkbox"/></li>
                                        <li><input type="checkbox" name="services" data-label="Elle 18" data-customClass="services-check" class="service-checkbox"/></li>
                                        <li><input type="checkbox" name="services" data-label="Lakme" data-customClass="services-check" class="service-checkbox"/></li>
                                        <li><input type="checkbox" name="services" data-label="Lancome" data-customClass="services-check" class="service-checkbox"/></li>                  
                                    </ul>
                                    <div class="help-block with-errors services"></div>
                                </div><!-- /.col -->  
                                <div class="col-md-6">
                                    <ul class="service-prices-list">
                                        <li class="services-header price">Starting Price</li>
                                        <li>Rs. <input type="text" name="price" placeholder="1234"/></li>
                                        <li>Rs. <input type="text" name="price" placeholder="1234"/></li>
                                        <li>Rs. <input type="text" name="price" placeholder="1234"/></li>
                                        <li>Rs. <input type="text" name="price" placeholder="1234"/></li>
                                        <li>Rs. <input type="text" name="price" placeholder="1234"/></li>
                                        <li>Rs. <input type="text" name="price" placeholder="1234"/></li>
                                        <li>Rs. <input type="text" name="price" placeholder="1234"/></li>
                                        <li>Rs. <input type="text" name="price" placeholder="1234"/></li>
                                        <li>Rs. <input type="text" name="price" placeholder="1234"/></li>
                                    </ul>
                                </div><!-- //.col -->
                            </div><!-- /.row -->
                
                        </div><!-- /.col -->
                    </div><!-- /.row -->   
                        
                    <div class="row">
                        <div class="col-md-4 settings-label">
                            <label for="trial">Trial</label>
                        </div><!-- /.col -->
                        <div class="col-md-8 settings-input has-radio">
                            <div class="row">
                                <div class="col-md-6">
                                    <input type="radio" name="travel" id="trial-comp" data-label="Complimentary">
                                </div>
                                <div class="col-md-6 pm-col">
                                      <input type="radio" name="travel" id="trial-paid" data-label="Paid">    
                                </div>
                            </div>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                        
                    <div class="row">
                        <div class="col-md-4 settings-label">
                            <label for="experience">Years Experience*</label>
                        </div><!-- /.col -->
                        <div class="col-md-8 settings-input form-group">
                            <input type="text" name="experience" id="experience" data-error="Please enter your years of experience. Numbers only." pattern="[0-9]{1,2}" required>
                            <div class="help-block with-errors"></div>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                        
                    <div class="row hours-row">
                        <div class="col-md-4 settings-label">
                            <label for="exp">Business Hours</label>
                        </div><!-- /.col -->
                        <div class="col-md-8 settings-input">
                            <div class="row">
                            
                            <div class="button-group">
                                <button type="button" class="settings-dropdown-btn am" data-toggle="dropdown">10:00</button>
                                    <ul class="dropdown-menu outer-noscroll settings-dropdown-hours-am">
                                        <div class="inner-noscroll">
                                           <li class="selected"><a>10:00</a></li>
                                           <li><a>10:30</a></li>
                                           <li><a>11:00</a></li>
                                           <li><a>11:30</a></li>
                                           <li><a>12:00</a></li>
                                           <li><a>12:30</a></li>
                                           <li><a>1:00</a></li>
                                        </div>
                                        <div class="scroll-opac"></div>
                                    </ul>
                            </div>
                                
                            <div class="button-group">
                                <button type="button" class="settings-dropdown-btn hours-am" data-toggle="dropdown">AM</button>
                                    <ul class="dropdown-menu outer-noscroll settings-dropdown-menu hours-am1">
                                        <div class="inner-noscroll">
                                           <li class="selected"><a>AM</a></li>
                                           <li><a>PM</a></li>
                                        </div>
                                    </ul>
                            </div>    

                            <div class="button-group">
                                <button type="button" class="settings-dropdown-btn pm" data-toggle="dropdown">10:00</button>
                                    <ul class="dropdown-menu outer-noscroll settings-dropdown-hours-pm">
                                        <div class="inner-noscroll">
                                           <li class="selected"><a>10:00</a></li>
                                           <li><a>10:30</a></li>
                                           <li><a>11:00</a></li>
                                           <li><a>11:30</a></li>
                                           <li><a>12:00</a></li>
                                           <li><a>12:30</a></li>
                                           <li><a>1:00</a></li>
                                        </div>
                                        <div class="scroll-opac"></div>
                                    </ul>
                            </div>
                                
                            <div class="button-group">
                                <button type="button" class="settings-dropdown-btn hours-pm" data-toggle="dropdown">AM</button>
                                    <ul class="dropdown-menu outer-noscroll settings-dropdown-menu hours-am">
                                        <div class="inner-noscroll">
                                           <li class="selected"><a>AM</a></li>
                                           <li><a>PM</a></li>
                                        </div>
                                    </ul>
                            </div> 
                                
                            </div><!-- /.row -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                        
                    <!-- Settings Footer -->
                    <div class="settings-footer">
                        <div class="form-btns pull-right">
                            <a href="" class="cancel-btn">Cancel</a>
                            <button class="save-btn">Save</button>
                        </div>
                    </div><!-- /.settings footer -->
                    </form><!-- /.form -->
                    </div><!-- /.profile settings tab -->
                    <div id="display-pic" class="tab-pane fade">
                    
                    <h2 class="settings-header">Upload your ravishing profile picture and a cover photo</h2>
                        
                        <div class="row">
                            <div class="col-md-12 profile-pic-content">
                                <asset:image src="http://placehold.it/200x200" alt="Profile Picture" class="profile-photo" />
                                <a href="#">Upload a profile picture/change picture</a>

                                <asset:image src="http://placehold.it/350x200" alt="Cover Photo" class="cover-photo" />
                                <a href="#">Upload a cover photo/change picture</a>
                            </div><!-- /.col -->
                        </div><!-- /.row --> 
                        
                        <!-- Settings Footer -->
                        <div class="settings-footer">
                            <div class="form-btns pull-right">
                                <a href="" class="cancel-btn">Cancel</a>
                                <button class="save-btn">Save</button>
                            </div>
                        </div><!-- /.settings footer -->
                        
                    </div><!-- /.display-pic tab -->
                    <div id="social-networks-settings" class="tab-pane fade">
                        <h2 class="settings-header">Add your social networks</h2>
                        <form class="settings-form" action="" method="post" data-toggle="validator">
                        <div class="row">
                            <div class="col-md-4 settings-label">
                                <label for="facebook">Facebook</label>
                            </div><!-- /.col -->
                            <div class="col-md-8 settings-input form-group">
                                <input type="text" name="location" id="facebook-input"><br>
                                <div class="help-block with-errors"></div>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                        
                         <div class="row">
                            <div class="col-md-4 settings-label">
                                <label for="twitter">Twitter</label>
                            </div><!-- /.col -->
                            <div class="col-md-8 settings-input form-group">
                                <input type="text" name="twitter" id="twitter-input"><br>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                        
                        <div class="row">
                            <div class="col-md-4 settings-label">
                                <label for="instagram">Instagram</label>
                            </div><!-- /.col -->
                            <div class="col-md-8 settings-input form-group">
                                <input type="text" name="instagram" id="instagram-input"><br>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                        
                        <div class="row">
                            <div class="col-md-4 settings-label">
                                <label for="youtube">Youtube</label>
                            </div><!-- /.col -->
                            <div class="col-md-8 settings-input form-group">
                                <input type="text" name="youtube" id="youtube-input"><br>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                        
                        <div class="row">
                            <div class="col-md-4 settings-label">
                                <label for="presonal-website">Personal Website</label>
                            </div><!-- /.col -->
                            <div class="col-md-8 settings-input form-group">
                                <input type="text" name="personal-website" id="personal-website-input"><br>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                        
                        <!-- Settings Footer -->
                        <div class="settings-footer">
                            <div class="form-btns pull-right">
                                <a href="" class="cancel-btn">Cancel</a>
                                <button class="save-btn">Save</button>
                            </div>
                        </div><!-- /.settings footer -->
                        </form><!-- /.form -->
                    </div><!-- /.social netowrks -->
                    <div id="awards-settings" class="tab-pane fade">
                        <h2 class="settings-header">Add your social networks</h2>
                        
                        <div class="row">
                            <div class="col-md-4 settings-label">
                            <label>Awards</label>
                        </div><!-- /.col -->
                        <div class="col-md-8 settings-input">
                            <textarea rows="10" cols="66"></textarea>
                        </div><!-- /.col -->
                        </div><!-- /.row -->
                        
                        <div class="row">
                        <div class="col-md-4 settings-label">
                            <label>Afilliations</label>
                        </div><!-- /.col -->
                        <div class="col-md-8 settings-input">
                            <textarea rows="10" cols="66"></textarea>
                        </div><!-- /.col -->
                        </div><!-- /.row -->
                        
                        <!-- Settings Footer -->
                        <div class="settings-footer">
                            <div class="form-btns pull-right">
                                <a href="" class="cancel-btn">Cancel</a>
                                <button class="save-btn">Save</button>
                            </div>
                        </div><!-- /.settings footer -->
                        
                    </div><!-- Awards Settings -->
                    <div id="favorites-settings" class="tab-pane fade">
                    <h2 class="settings-header">List your favorite artists</h2>
                        
                    <p class="fav-empty">Oops...your artist list is empty.</p>
                        
                        <!-- Settings Footer -->
                        <div class="settings-footer">
                            <div class="form-btns pull-right">
                                <a href="#" class="cancel-btn">Cancel</a>
                                <button class="save-btn">Save</button>
                            </div>
                        </div><!-- /.settings footer -->
                    
                    </div><!-- Favorites Settings -->
                    <!-- /Artist Tabs -->
                    
                    <!-- User Tabs -->
                    
                    <!--- User Preferences Tab -->
                    <div id="user-preferences" class="tab-pane fade">
                    <h2 class="settings-header">Select your preferences to get better results.</h2>
                    <div class="row">
                        <div class="col-md-4 settings-label">
                            <label for="cosmetics">Cosmetics*</label>
                        </div><!-- /.col -->
                        <div class="col-md-8 settings-input">
                          <ul class="user-cosmetics">
                            <li><input type="checkbox" name="cosmetics" data-label="Avon"/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="Blue Heaven"/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="Bobbi Brown"/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="Chamber"/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="Christian Dior"/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="Color Bar"/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="Elle 18"/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="Lakme"/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="Lancome"/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="L'Oreal Paris"/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="M.A.C."/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="Maybelline"/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="Miss Claire"/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="Nars"/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="O.P.I."/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="Oriflame"/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="Revlon"/></li>
                            <li><input type="checkbox" name="cosmetics" data-label="Vivianna"/></li>  
                          </ul>
                        </div><!-- /.col -->
                    </div><!-- /.row -->     
                        
                    <div class="row">
                        <div class="col-md-4 settings-label">
                            <label for="user-services">Services</label>
                        </div><!-- /.col -->
                        <div class="col-md-8 settings-input">
                            
                          <ul class="user-services">
                            <li><input type="checkbox" name="services" data-label="Avon"/></li>
                            <li><input type="checkbox" name="services" data-label="Blue Heaven"/></li>
                            <li><input type="checkbox" name="services" data-label="Bobbi Brown"/></li>
                            <li><input type="checkbox" name="services" data-label="Chamber"/></li>
                            <li><input type="checkbox" name="services" data-label="Christian Dior"/></li>
                            <li><input type="checkbox" name="services" data-label="Color Bar"/></li>
                            <li><input type="checkbox" name="services" data-label="Elle 18"/></li>
                            <li><input type="checkbox" name="services" data-label="Lakme"/></li>
                            <li><input type="checkbox" name="services" data-label="Lancome"/></li>
                            <li><input type="checkbox" name="services" data-label="L'Oreal Paris"/></li>
                            <li><input type="checkbox" name="services" data-label="M.A.C."/></li>
                            <li><input type="checkbox" name="services" data-label="Maybelline"/></li>
                            <li><input type="checkbox" name="services" data-label="Miss Claire"/></li>
                            <li><input type="checkbox" name="services" data-label="Nars"/></li>
                            <li><input type="checkbox" name="services" data-label="O.P.I."/></li>
                            <li><input type="checkbox" name="services" data-label="Oriflame"/></li>
                            <li><input type="checkbox" name="services" data-label="Revlon"/></li>
                            <li><input type="checkbox" name="services" data-label="Vivianna"/></li>  
                          </ul>
                            
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                        
                    <!-- Settings Footer -->
                    <div class="settings-footer">
                        <div class="form-btns pull-right">
                            <a href="" class="cancel-btn">Cancel</a>
                            <button class="save-btn">Save</button>
                        </div>
                    </div><!-- /.settings footer -->
                    
                    </div><!-- /.User Preferences tab -->
                    
                    <!-- User Favorites Tab -->
                    <div id="user-favorites" class="tab-pane fade">
                    <h2 class="settings-header">List of your favorite artists</h2>
                    <div class="row favorites-content">
                        <div class="col-md-6 fav-col">
                            <a href="profile.html"><asset:image src="user-fav.png" class="img-circle" alt=""/></a> <a href="profile.html#contact">Shweta Shidhore</a>
                        </div><!-- /.col -->
                        
                        <div class="col-md-6 fav-col right">
                          <div class="fav-phone">123-345-7890</div>
                          <div class="fav-inquiry"><a href="profile.html#contact">Inquiry</a></div>
                            <asset:image src="heart-orange.png" alt="" class="fav-heart" />
                        </div><!-- /.col -->
                        
                         <div class="col-md-6 fav-col">
                         <a href="profile.html"><asset:image src="user-fav.png" class="img-circle" alt=""/></a> <a href="profile.html#contact">Shweta Shidhore</a>
                        </div><!-- /.col -->
                        
                        <div class="col-md-6 fav-col right">
                          <div class="fav-phone">123-345-7890</div>
                          <div class="fav-inquiry"><a href="profile.html#contact">Inquiry</a></div>
                          <asset:image src="heart-orange.png" alt="" class="fav-heart" />
                        </div><!-- /.col -->
                    </div><!-- /.row -->     
 
                    <!-- Settings Footer -->
                    <div class="settings-footer">
                        <div class="form-btns pull-right">
                            <a href="" class="cancel-btn">Cancel</a>
                            <button class="save-btn">Save</button>
                        </div>
                    </div><!-- /.settings footer -->
                    
                    </div><!-- /.User Favorites tab -->
                    
                    <!-- User Display Pic Tab -->
                    <div id="user-display-pic" class="tab-pane fade">
                    <h2 class="settings-header">Upload your ravishing profile picture</h2>
                    <div class="row">
                       <div class="col-md-12 user-profile-pic-content">
                            <asset:image src="http://placehold.it/200x200" alt="Profile Picture" class="profile-photo" />
                            <a href="#">Upload a profile picture / change picture</a>
                        </div><!-- /.col -->
                    </div><!-- /.row -->     
                        
                    <div class="row">
                        <div class="col-md-4 settings-label">
                            
                        </div><!-- /.col -->
                        <div class="col-md-8 settings-input">
                            
                            
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                        
                    <!-- Settings Footer -->
                    <div class="settings-footer">
                        <div class="form-btns pull-right">
                            <a href="" class="cancel-btn">Cancel</a>
                            <button class="save-btn">Save</button>
                        </div>
                    </div><!-- /.settings footer -->
                    
                    </div><!-- /.User Display Pic tab -->
                    
                    
                    <!-- /User Tabs -->
                    
                </div><!-- /.tab content -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.settings -->
    
    
     <!-- Warning Modal -->
    <div id="warning-modal" class="modal fade" role="dialog">
      <div class="modal-dialog">
      <button class="modal-close" data-dismiss="modal"></button>
        <!-- Modal content-->
        <div class="modal-content text-center">
          <div class="modal-header">
              <h4 class="modal-title">Are you sure you want to leave the page?</h4> 
          </div>
          <div class="modal-body">
            <p>Hey there! It looks like you're in the middle of completing your profile and you haven't saved all your content.</p>
            <p class="save-before">Save before you go!</p>
          </div>
          <div class="modal-footer">
              <a href="#" class="leave-btn">Leave</a>
              <a href="#" class="stay-btn">Stay</a>
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

    <!-- Form Validation -->
    <asset:javascript src="validator.js"/>
    
    <!-- Custom JS -->
    <asset:javascript src="custom.js"/>
    
</body>

</html>