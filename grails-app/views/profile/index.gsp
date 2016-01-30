<!DOCTYPE html>
<html lang="en">
<head>
<meta name="layout" content="profile" />
</head>
<body>
	<!-- Page Content -->
	<div id="profile-page-wrapper">
		<img class="profile-banner" alt=""
			onError="this.onerror=null;this.src='http://placehold.it/1024x200';"
			src="https://s3.amazonaws.com/ravishingme/profile/${profile.username}/coverPicture/cover.jpeg" />
	
		<div class="container-fluid">
			<span class="anchor" id="about"></span>
			<section class="about">
				<div class="about-section">
					<div class="section-header text-center">
						<h2 class="profile-section-header">Artist profile</h2>
					</div>
					<div class="row">
						<div class="col-md-6 col-md-offset-3 text-center">
							<p>
								${profile.aboutYou}
							</p>
							<div class="row text-center about-list">
								<div class="col-md-4">
									<g:if test="${profile.isWillingToTravel == true}">Yes</g:if>
									<g:else>Not</g:else>
									<span>Willing to travel</span>
								</div>
								<div class="col-md-4">
									${profile.yearsOfExperience}<span>Years of Experience</span>
								</div>
								<div class="col-md-4" id="favorite-icon">
									<g:render template="/profile/favoriteIcon"
										model="[profile:profile, loggedInUser:loggedInUser]" />
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
						<h2 class="profile-section-header">Portfolio</h2>
					</div>
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<g:each in="${profile.portfolioImages}" var="portfolioImage">
								<img alt="" src="${portfolioImage}" class="portfolioImage col-md-6"
									onError="this.onerror=null;this.src='http://placehold.it/455x310';" />
							</g:each>
						</div>

					</div>
				</div>
			</section>
			<!-- Portfolio Section -->
			<span class="anchor" id="services"></span>
			<section class="services">
				<div class="services-content">
					<div class="section-header text-center">
						<h2 class="profile-section-header">Services</h2>
						<a href="#contact" class="sub-title">Inquiry</a>
					</div>
					<div class="services-list">
						<table class="col-md-offset-4" width="35%" margin-left="auto"
							margin-right="auto">
							<tr>
								<td width="50%"><p>Trial</p></td>
								<td width="50%"><g:if
										test="${profile.isComplimentaryTrial == true}">
										Complimentary
									</g:if> <g:else>
										Paid
									</g:else></td>
							</tr>
							<g:each in="${profile?.servicesOffered}" var="serviceOffered"
								status="i">
								<g:if test="${serviceOffered.isOffered == true}">
									<tr>
										<td width="50%"><p>
												${serviceOffered.service.name}
											</p></td>
										<td width="50%">Rs. <g:formatNumber
												number="${serviceOffered.startingPrice}" format="0" /></td>
									</tr>
								</g:if>
							</g:each>
						</table>
					</div>
					<div class="section-header text-center">
						<a class="sub-title"><i>All rates are starting prices and subject to change. Please confirm with artist before appointment.</i></a>
					</div>
				</div>
			</section>
			<!-- Services Section -->
			<g:render template="/templates/contact" bean="${profile}" />
		</div>
	</div>
	<!-- /Page Content Wrapper -->
	
	<!-- Favorite Modal -->
      <div id="favorite-modal" class="modal fade" role="dialog">
         <div class="modal-dialog">
            <button class="modal-close" data-dismiss="modal"></button>
            <!-- Modal content-->
            <div class="modal-content text-center">
               <div class="modal-header">
                  <h4 class="modal-title">Do you want to save favorites? Please sign in.</h4>
               </div>
               <div class="modal-body">
               </div>
            </div>
         </div>
      </div>
      
     
	<!-- jQuery -->
	<asset:javascript src="jquery.js" />

	<!-- Bootstrap Core JavaScript -->
	<asset:javascript src="bootstrap.min.js" />

	<!-- Custom JS -->
	<asset:javascript src="custom.js" />
</body>
</html>