<!DOCTYPE html>
<html lang="en">
   <head>
      <meta name="layout" content="profile" />
   </head>
   <body>
      <!-- Page Content -->
      <div id="profile-page-wrapper">
         <image src="http://placehold.it/1024x200" alt="" class="profile-banner" />
         <div class="container-fluid">
            <span class="anchor" id="about"></span>
            <section class="about">
               <div class="about-section">
                  <div class="section-header text-center">
                     <h2 class="profile-section-header">
                        About
                     </h2>
                  </div>
                  <div class="row">
                     <div class="col-md-6 col-md-offset-3 text-center">
                        <p>
                           ${profile.aboutYou}
                        </p>
                        <div class="row text-center about-list">
                           <div class="col-md-4">
                              <g:if test="${profile.isWillingToTravel == true}">Yes</g:if>
							  <g:else>No</g:else>
                              <span>To Travel</span>
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
                        <image src="http://placehold.it/455x310" alt="" />
                     </div>
                     <div class="col-md-4">
                        <image src="http://placehold.it/455x310" alt="" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4 col-md-offset-2">
                        <image src="http://placehold.it/455x310" alt="" />
                     </div>
                     <div class="col-md-4">
                        <image src="http://placehold.it/455x310" alt="" />
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
                        Services With Their Starting Prices
                     </h2>
                     <a href="#contact" class="sub-title">Inquiry</a>
                  </div>
                  <div class="services-list">
	                  <table class="col-md-offset-4" width="35%" margin-left="auto" margin-right="auto">
							<tr>
								<td width="50%"><p>Trial</p></td>
								<td width="50%">
									<g:if test="${profile.isComplimentaryTrial == true}">
										Complimentary
									</g:if>
									<g:else>
										Paid
									</g:else>
								</td>
							</tr>
							<g:each in="${profile?.servicesOffered}" var="serviceOffered" status="i">
								<g:if test="${serviceOffered.isOffered == true}">
									<tr>
										<td width="50%"><p>${serviceOffered.service.name}</p></td>
										<td width="50%">Rs. <g:formatNumber number="${serviceOffered.startingPrice}" format="0"/></td>
									</tr>
								</g:if>
							</g:each>
						</table>
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
                     Contact the artist
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
                           class="btn btn-info contact-btn pull-left">
                     </form>
                     <!-- /Contact Form -->
                  </div>
                  <div class="col-md-4 contact-info">
                     <h6>Whatsapp</h6>
                     <p>+91-123-234-2345</p>
                     <h6>Business Hours</h6>
                     <p>${profile.businessHours.startTime} ${profile.businessHours.startTimePeriod} - 
                     ${profile.businessHours.endTime} ${profile.businessHours.endTimePeriod}</p>
                     <h6>Meet the artist</h6>
                     <ul class="social-links">
                     	<g:if test="${profile.socialNetworks.twitterUrl != null}">
                     		<a href="http://${profile.socialNetworks.twitterUrl}" target="_blank"><li class="twitter-icon"></li></a>
                     	</g:if>
                        <g:if test="${profile.socialNetworks.facebookUrl != null}">
                     		<a href="http://${profile.socialNetworks.facebookUrl}" target="_blank"><li class="facebook-icon"></li></a>
                        </g:if>
                        <g:if test="${profile.socialNetworks.instagramUrl != null}">
                     		<a href="http://${profile.socialNetworks.instagramUrl}" target="_blank"><li class="instagram-icon"></li></a>
                        </g:if>
                        <g:if test="${profile.socialNetworks.youtubeUrl != null}">
                     		<a href="http://${profile.socialNetworks.youtubeUrl}" target="_blank"><li class="youtube-icon"></li></a>
                     	</g:if>
                     	<g:if test="${profile.socialNetworks.personalWebsite != null}">
                     		<a href="http://${profile.socialNetworks.personalWebsite}" target="_blank"><h6>${profile.socialNetworks.personalWebsite}</h6></li></a>
                     	</g:if>
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