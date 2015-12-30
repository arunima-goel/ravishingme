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
                        Portfolio
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
            <g:render template="/templates/contact" bean="${profile}" />
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