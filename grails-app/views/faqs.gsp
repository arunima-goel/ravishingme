<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="layout" content="main" />
</head>

<body>

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
    
    <!-- FAQ Page Content --> 
    <div class="faq-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2 class="profile-section-header">Fequently Asked Questions</h2>
                    <ul class="faqs">
                        <li>
                            <div class="question"><span>1.</span> What is ravishing.me</div>
                            <div class="answer"><p>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsu lorem ipsum lorem lorem ipsum lorem ipsum lorem ipsu. lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsu lorem ipsum lorem lorem ipsum lorem ipsum lorem ipsu.</p></div>
                        </li>
                        <li>
                            <div class="question"><span>2.</span> Why Ravishing.me will help your business</div>
                            <div class="answer"><p>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsu lorem ipsum lorem lorem ipsum lorem ipsum lorem ipsu.</p></div>
                        </li>
                        <li>
                            <div class="question"><span>3.</span> Why Ravishing.me will help your business</div>
                            <div class="answer"><p>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsu lorem ipsum lorem lorem ipsum lorem ipsum lorem ipsu.</p></div>
                        </li>
                        <li>
                            <div class="question"><span>4.</span> Why Ravishing.me will help your business</div>
                            <div class="answer"><p>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsu lorem ipsum lorem lorem ipsum lorem ipsum lorem ipsu.</p></div>
                        </li>
                    </ul>
                </div>
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /FAQ Content -->

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