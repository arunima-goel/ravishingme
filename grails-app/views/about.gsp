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
      <!-- About Page Content --> 
      <div class="about-content">
         <div class="container">
            <div class="row">
               <div class="col-md-12 text-center">
                  <h2 class="profile-section-header">About Us</h2>
                  <p>Ravishing.me is a dedicated free service for locating and contacting professional makeup artists in India. Conversely, it is also for makeup artist interested in reaching out to their potential clientele by listing their business and posting their portfolios on our website. In other words, ravishing.me exists to serve those who are looking for makeup artist and makeup artist who want to get the word out about their makeup brush-wielding skills.</p>
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
               </form>
               <!-- /Contact Form -->
            </div>
            <div class="col-md-4 contact-info">
               <h6>Whatsapp</h6>
               <p>+91-123-234-2345</p>
               <br/><br/>
               <ul class="social-links">
                  <a href="#">
                     <li class="pt-icon"></li>
                  </a>
                  <a href="#">
                     <li class="fb-icon"></li>
                  </a>
                  <a href="#">
                     <li class="ig-icon"></li>
                  </a>
               </ul>
            </div>
         </div>
         <!-- /Row -->
      </section>
      <!-- /Contact Section -->
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