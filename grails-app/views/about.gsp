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
      <div class="policies-content">
		<div class="container">
			<div class="row ">
				<div class="col-md-12 col-md-offset-1 policies-content-2">
                  <div class="policies-section-header">About us</div>
                  <h5>Our mission</h5>
                  <p>Our mission is to connect beautiful people with talented professionals to bring out their ravishing selves.</p>
                  </br>
                  <h5>What is ravishing.me?</h5>
                  <div class="colorRed">If you are looking for beauty or styling services</div>
                  <p>The best stylist for your needs may not 
                  be in your neighborhood, but that doesn’t mean you settle for less. At ravishing.me, you can 
                  scan portfolios of exceptionally talented stylists  and find the perfect stylist for you, in 
                  the comfort of your home.</p>
                  </br>
                  <div class="colorRed">If you are a makeup artist or hair stylist</div>
                  <p>Research shows that more people are 
                  looking for beauty and grooming services online. And if you’re reading this, you’ve already made 
                  the right choice to promote yourself online. We can help you grow your online brand by giving you a wider audience and making stronger 
                  connections with customers. Just sign up with your Facebook account and create a portfolio for free!</p>
                  </br>
                  <h5>Privacy & Security</h5>
                  <p>Our members' safety and privacy is our top priority. Your personal information will not be 
                  sold to or shared with third-party marketers. Please see our detailed Privacy Policy <g:link mapping="policies">here</g:link>.</p>
                  </br>
                </div>
			</div>	
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</div>
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