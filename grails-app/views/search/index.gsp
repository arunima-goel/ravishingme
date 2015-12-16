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
    <asset:javascript src="jquery.js"/>
    
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
            <ul class="search-header-checkboxes dropdown-menu">
                <li><input type="checkbox" name="cosmetics" value="Bridal Makeup" data-label="Bridal Makeup" checked/></li>
                <li><input type="checkbox" name="cosmetics" value="Engagement" data-label="Engagement"/></li>
                <li><input type="checkbox" name="cosmetics" value="Eye Makeup" data-label="Eye Makeup"/></li>
                <li><input type="checkbox" name="cosmetics" value="Fashion Shows" data-label="Fashion Shows"/></li>
                <li><input type="checkbox" name="cosmetics" value="Hairstyle" data-label="Hairstyle"/></li>                                
            </ul>
          </div>
        </div>

        <div class="col-md-5 sh-city">
          <div class="input-group">
            <div class="button-group">
            <div class="drp-caret"></div>
            <button type="button" class="dropdown-city-btn" data-toggle="dropdown">Delhi</button>
                <ul class="dropdown-menu">
                    <li><a>Ahemdabad</a></li>
                    <li><a>Chennai</a></li>
                    <li><a class="selected">Delhi</a></li>
                    <li><a>Goa</a></li>
                    <li><a>Hyderabad</a></li>
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
    
    <!-- Search Filters -->
    <div id="search-filters" class="container">
        <div class="row filters">
            <div class="filter-wrapper">
            <div class="col-md-4 travel-filter">
                <div class="button-group">
                    <button type="button" class="dropdown-filter-btn" data-toggle="dropdown">Travel<span class="drp-caret"></span></button>
                     <ul class="dropdown-menu">
                        <li><a href="#">Yes</a></li>
                        <li class="second"><a href="#">No</a></li>
                        <a href="#" class="filter-search-btn">Search</a>
                    </ul>
                </div><!-- /.button group -->
            </div><!-- /.col -->

            <div class="col-md-4 makeup-filter">
                <div class="button-group dropdown-scroll">
                <button type="button" class="dropdown-filter-btn" data-toggle="dropdown">Bridal Makeup Range<span class="drp-caret"></span></button>
                        
                    <ul class="filter-header-checkboxes dropdown-menu scrollable-menu">
                        <li><input type="checkbox" name="makeup" value="Upto RS. 5,000" data-label="Upto RS. 5,000"/></li>
                        <li><input type="checkbox" name="makeup" data-label="Upto RS. 10,000"/></li>
                        <li><input type="checkbox" name="makeup" data-label="Upto RS. 15,000"/></li>
                        <li><input type="checkbox" name="makeup" data-label="Upto RS. 20,000"/></li>
                        <li><input type="checkbox" name="makeup" data-label="Upto RS. 25,000"/></li>
                        <li><input type="checkbox" name="makeup" data-label="Upto RS. 30,000"/></li>
                        <li><input type="checkbox" name="makeup" data-label="Upto RS. 35,000"/></li>
                        <li><input type="checkbox" name="makeup" data-label="Upto RS. 40,000"/></li>
                    </ul>
                    
                    <a href="#" class="filter-search-btn fixed-btn">Search</a>
                </div><!-- /.button group -->
            </div><!-- /.col -->
            <div class="col-md-4 cosmetics-filter">
            <div class="button-group dropdown-scroll">
                <button type="button" class="dropdown-filter-btn" data-toggle="dropdown">Cosmetics<span class="drp-caret"></span></button>
                    <ul class="filter-header-checkboxes dropdown-menu scrollable-menu" id="dropdown">
                      <li><input type="checkbox" name="makeup" value="Upto RS. 5,000" data-label="Upto RS. 5,000"/></li>
                            <li><input type="checkbox" name="makeup" data-label="Upto RS. 10,000"/></li>
                            <li><input type="checkbox" name="makeup" data-label="Upto RS. 15,000"/></li>
                            <li><input type="checkbox" name="makeup" data-label="Upto RS. 20,000"/></li>
                            <li><input type="checkbox" name="makeup" data-label="Upto RS. 25,000"/></li>
                            <li><input type="checkbox" name="makeup" data-label="Upto RS. 30,000"/></li>
                            <li><input type="checkbox" name="makeup" data-label="Upto RS. 35,000"/></li>
                            <li><input type="checkbox" name="makeup" data-label="Upto RS. 40,000"/></li>
                    </ul>
                    <a href="#" class="filter-search-btn fixed-btn">Search</a>
                </div><!-- /.button group -->
            </div><!-- /.col -->
            </div><!-- /.wrapper -->
        </div><!-- /.row -->
    </div><!-- /.container -->
    
    <!-- Search Results --> 
    <div class="search-results">
        <div class="container">
            <div class="row" id="search-results-container">
                <div class="col-md-4 result">
                    <a href="profile.html"><asset:image src="http://placehold.it/350x200" alt="" class="result-img"/></a>
                    <div class="row result-info">
                        <a href="profile.html"><asset:image src="search-circle.png" alt="" class="result-circle-img"/></a>
                        <h3><a href="profile.html">Shweta Shidhore</a></h3>
                        <div class="col-md-6 travel">Travel<span>Yes</span></div>
                        <div class="col-md-6 inquiry"><a href="#">Inquiry</a></div>
                    </div>
                </div>
                
                <div class="col-md-4 result">
                    <a href="profile.html"><asset:image src="http://placehold.it/350x200" alt="" class="result-img"/></a>
                    <div class="row result-info">
                         <a href="profile.html"><asset:image src="search-circle.png" alt="" class="result-circle-img"/></a>
                         <h3><a href="profile.html">Shweta Shidhore</a></h3>
                        <div class="col-md-6 travel">Travel<span>Yes</span></div>
                        <div class="col-md-6 inquiry"><a href="#">Inquiry</a></div>
                    </div>
                </div>
                
                <div class="col-md-4 result">
                   <a href="profile.html"><asset:image src="http://placehold.it/350x200" alt="" class="result-img"/></a>
                    <div class="row result-info">
                         <a href="profile.html"><asset:image src="search-circle.png" alt="" class="result-circle-img"/></a>
                         <h3><a href="profile.html">Shweta Shidhore</a></h3>
                        <div class="col-md-6 travel">Travel<span>Yes</span></div>
                        <div class="col-md-6 inquiry"><a href="#">Inquiry</a></div>
                    </div>
                </div>
                
                <div class="col-md-4 result">
                    <a href="profile.html"><asset:image src="http://placehold.it/350x200" alt="" class="result-img"/></a>
                    <div class="row result-info">
                         <a href="profile.html"><asset:image src="search-circle.png" alt="" class="result-circle-img"/></a>
                         <h3><a href="profile.html">Shweta Shidhore</a></h3>
                        <div class="col-md-6 travel">Travel<span>Yes</span></div>
                        <div class="col-md-6 inquiry"><a href="#">Inquiry</a></div>
                    </div>
                </div>
                
                <div class="col-md-4 result">
                    <a href="profile.html"><asset:image src="http://placehold.it/350x200" alt="" class="result-img"/></a>
                    <div class="row result-info">
                        <a href="profile.html"><asset:image src="search-circle.png" alt="" class="result-circle-img"/></a>
                        <h3><a href="profile.html">Shweta Shidhore</a></h3>
                        <div class="col-md-6 travel">Travel<span>Yes</span></div>
                        <div class="col-md-6 inquiry"><a href="#">Inquiry</a></div>
                    </div>
                </div>
                
                <div class="col-md-4 result">
                    <a href="profile.html"><asset:image src="http://placehold.it/350x200" alt="" class="result-img"/></a>
                    <div class="row result-info">
                        <a href="profile.html"><asset:image src="search-circle.png" alt="" class="result-circle-img"/></a>
                        <h3><a href="profile.html">Shweta Shidhore</a></h3>
                        <div class="col-md-6 travel">Travel<span>Yes</span></div>
                        <div class="col-md-6 inquiry"><a href="#">Inquiry</a></div>
                    </div>
                </div>
            </div><!-- /.row -->
            
            
        </div><!-- /.container -->
    </div><!-- /Search Results -->

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