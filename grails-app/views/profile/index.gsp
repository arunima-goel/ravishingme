<!DOCTYPE html>
<html lang="en">
   <head>
      <meta name="layout" content="main" />
   </head>
   <body>
      <!-- Page Content -->
      <div id="profile-page-wrapper">
         <asset:image src="http://placehold.it/1024x200" alt=""
            class="profile-banner" />
         <div class="container-fluid">
            <span class="anchor" id="about"></span>
            <section class="about">
               <div class="about-section">
                  <div class="section-header text-center">
                     <h2 class="profile-section-header">
                        About <a href="settings.html">Edit</a>
                     </h2>
                  </div>
                  <div class="row">
                     <div class="col-md-4 col-md-offset-4 text-center">
                        <p>
                           ${profile.aboutYou}
                        </p>
                        <div class="row text-center about-list">
                           <div class="col-md-4">
                              ${profile.isWillingToTravel}<span>To Travel</span>
                           </div>
                           <div class="col-md-4">
                              ${profile.yearsOfExperience}<span>Years of Experience</span>
                           </div>
                           <div class="col-md-4">
                              <asset:image src="heart-gray.png" alt="" class="heart-img" />
                              <span>Favorite</span>
                           </div>
                        </div>
                        <!-- /.row -->
                     </div>
                  </div>
                  <!-- /.row -->
               </div>
               <!--  /.about-section -->
            </section>
            <!-- About Section -->
            <span class="anchor" id="portfolio"></span>
            <section class="portfolio">
               <div class="portfolio-content">
                  <div class="section-header text-center">
                     <h2 class="profile-section-header">
                        Portfolio <a href="about.html">Contact us</a>
                     </h2>
                  </div>
                  <div class="row">
                     <div class="col-md-4 col-md-offset-2">
                        <asset:image src="http://placehold.it/455x310" alt="" />
                     </div>
                     <div class="col-md-4">
                        <asset:image src="http://placehold.it/455x310" alt="" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4 col-md-offset-2">
                        <asset:image src="http://placehold.it/455x310" alt="" />
                     </div>
                     <div class="col-md-4">
                        <asset:image src="http://placehold.it/455x310" alt="" />
                     </div>
                  </div>
               </div>
            </section>
            <!-- Portfolio Section -->
            <span class="anchor" id="services"></span>
            <section class="services">
               <div class="services-content">
                  <div class="section-header text-center">
                     <h2 class="profile-section-header">
                        Services With Their Starting Prices <a href="settings.html">Edit</a>
                     </h2>
                     <a href="" class="sub-title disabled">Inquiry</a>
                  </div>
                  <div class="row services-list">
                     <div class="col-md-2 col-md-offset-4">
                        <h6>Trial</h6>
                        <p>Complimentary</p>
                        <p>Paid</p>
                     </div>
                     <div class="col-md-2 services-model">
                        <br />
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
                        <br />
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
                        <br />
                        <p>Rs. 800</p>
                        <p>Rs. 400</p>
                        <p>Rs. 500</p>
                     </div>
                  </div>
               </div>
            </section>
            <!-- Services Section -->
            <span class="anchor" id="contact"></span>
            <section class="contact">
               <!-- Google Map -->
               <div class="row">
                  <div id="map-canvas"></div>
               </div>
               <div class="section-header text-center">
                  <h2 class="profile-section-header">
                     Contact <a href="settings.html">Edit</a>
                  </h2>
               </div>
               <!-- Contact Form -->
               <div class="row">
                  <div class="col-md-5 col-md-offset-2 contact-form">
                     <h3 class="contact-header">Let's have some beauty talk</h3>
                     <form role="form" action="" method="post">
                        <label for="InputName">Name <span class="required">*</span></label>
                        <input type="text" class="form-control" name="InputName"
                           id="InputName" required> <label for="InputEmail">Email
                        <span class="required">*</span>
                        </label> <input type="email" class="form-control" id="InputEmail"
                           name="InputEmail" required> <label for="InputMessage">Message
                        <span class="required">*</span>
                        </label>
                        <textarea name="InputMessage" id="InputMessage"
                           class="form-control" rows="5" required></textarea>
                        <input type="submit" name="submit" id="submit" value="Send"
                           class="btn btn-info contact-btn pull-right">
                     </form>
                     <!-- /Contact Form -->
                  </div>
                  <div class="col-md-4 contact-info">
                     <h6>Whatsapp</h6>
                     <p>+91-123-234-2345</p>
                     <h6>Business Hours</h6>
                     <p>10am - 6pm</p>
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
         </div>
      </div>
      <!-- /Page Content Wrapper -->
      <!-- jQuery -->
      <asset:javascript src="jquery.js"/>
    
      <!-- Bootstrap Core JavaScript -->
      <asset:javascript src="bootstrap.min.js"/>
           
      <!-- Custom JS -->
      <asset:javascript src="custom.js"/>
   </body>
</html>