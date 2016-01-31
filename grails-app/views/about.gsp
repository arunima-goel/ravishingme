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
            <g:render template="/search/searchForm"/>
         </div>
         <!-- /container -->
      </div>
      <!-- Search Header -->
      <!-- About Page Content --> 
      <div class="about-content">
         <div class="container">
            <div class="row">
               <div class="col-md-12 text-center">
                  <h2 class="profile-section-header">About Us</h2>
                  <p>ravishing.me is a dedicated free service for locating and contacting professional makeup artists in India. Conversely, it is also for makeup artist interested in reaching out to their potential clientele by listing their business and posting their portfolios on our website. In other words, ravishing.me exists to serve those who are looking for makeup artist and makeup artist who want to get the word out about their makeup brush-wielding skills.</p>
                  <p>And now for the icing on the cake: it's an absolutely free service! Simply create an account by logging in with your gmail, facebook or pinterest username and password. Our members' safety and privacy is our top priority. Your personal information will never be sold to or shared with third-party marketers. </p>
                  <p><a href="#">Please visit our Privacy & Security page for details.</a></p>
               </div>
            </div>
            <!-- /.row -->
         </div>
         <!-- /.container -->
      </div>
      <!-- /About Page Content -->
      <!-- Contact Section -->
      <g:render template="/templates/contactRavme" bean="${profile}" />
      
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