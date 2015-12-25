<!DOCTYPE html>
<html lang="en">
   <head>
      <meta name="layout" content="main"/>
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
                  </div>
                  <!-- /input-group -->
               </div>
               <!-- /sh city row -->
            </div>
            <!-- /Search Bar Row -->
         </div>
         <!-- /container -->
      </div>
      <!-- Search Header -->
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
                  </div>
                  <!-- /.button group -->
               </div>
               <!-- /.col -->
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
                  </div>
                  <!-- /.button group -->
               </div>
               <!-- /.col -->
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
                  </div>
                  <!-- /.button group -->
               </div>
               <!-- /.col -->
            </div>
            <!-- /.wrapper -->
         </div>
         <!-- /.row -->
      </div>
      <!-- /.container -->
      <!-- Search Results --> 
      <div class="search-results">
         <div class="container">
            <div class="row" id="search-results-container">
               <g:each in="${profiles}" var="profile">
                  <div class="col-md-4 result">
                     <a href="profile.html">
                        <image src="http://placehold.it/350x200" alt="" class="result-img"/>
                     </a>
                     <div class="row result-info">
                        <g:link mapping="profileView" params="[username: profile.username]">
                           <asset:image src="search-circle.png" alt="" class="result-circle-img"/>
                        </g:link>
                        <h3><a href="profile.html">${profile.name}</a></h3>
                        <div class="col-md-6 travel">Travel<span>${profile.isWillingToTravel}</span></div>
                        <div class="col-md-6 inquiry">
                           <g:link mapping="profileView" params="[username: profile.username]" fragment="contact">Inquiry</g:link>
                        </div>
                     </div>
                  </div>
               </g:each>
            </div>
            <!-- /.row -->
         </div>
         <!-- /.container -->
      </div>
      <!-- /Search Results -->
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