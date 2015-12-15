
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
                                <a href="about.html">FAQS</a>
                            </li>
                            <li>
                                <a href="#">Sign in</a>
                            </li>
                            <li>
                                <a class="signup-highlight" href="#" data-toggle="modal" data-target="#signup">Sign up</a>
                            </li>
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
            <div class="row">
                <div class="col-md-5 col-md-offset-1 col-xs-12 home-search">
                    <span class="drp-caret"></span>
                    <div class="button-group">
                        <button type="button" class="dropdown-search-btn" data-toggle="dropdown">Bridal Makeup</button>
                        <ul class="search-header-checkboxes dropdown-menu outer-noscroll">
                            <div class="inner-noscroll">
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
                <div class="col-md-5 col-xs-12 home-city">
                    <div class="input-group">
                        <div class="drp-caret"></div>
                        <div class="button-group">
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
                </div><!-- /home-city row -->
            </div><!-- /Search Bar Row -->
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
            <a href="#" class="btn btn-block btn-social btn-facebook"><span class="fa fa-5x fa-facebook"></span>Sign up with Facebook</a>
            <p>We will not post anything without your permission</p>
          </div>
          <div class="signup-terms">
              <p>By clicking "sign up", you confirm that you accept</p><p> our <a href="#">Terms of service</a> and <a href="#">Privacy Policy</a>.</p>  
          </div>
          <div class="modal-footer">
              <h4>Already a member? <a href="#">Login</a></h4>
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