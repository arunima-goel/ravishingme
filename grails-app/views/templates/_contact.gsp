<span class="anchor" id="contact"></span>
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
			<g:if test="${it.email == null}">
				<h3 class="contact-header">Use the links on the right to see more information about the artist</h3>
			</g:if>
			<g:else>
				<h3 class="contact-header">Let's talk beauty!</h3>
				<g:form method="post" controller="user">
					<g:hiddenField name="username" value="${it.username}" />
					<g:hiddenField name="toEmailAddress" value="${it.email}" />
					<label for="fromEmailName">Name <span class="required">*</span></label>
					<input type="text" class="form-control" name="fromEmailName"
						id="fromEmailName" required value="${loggedInUser?.profile?.name}">
					<label for="fromEmailAddress">Email <span class="required">*</span>
					</label>
					<input type="email" class="form-control" id="fromEmailAddress"
						name="fromEmailAddress" required value="${loggedInUser?.profile?.email}">
					<label for="emailMessage">Message <span class="required">*</span>
					</label>
					<textarea name="emailMessage" id="emailMessage"
						class="form-control" rows="5" required>Hey! I liked your work and would like to know more about you.</textarea>
					<g:submitToRemote url="[controller: 'user', action: 'sendEmail']"
						value="Submit" name="submit" id="submit"
						class="btn btn-info contact-btn pull-left"
						onSuccess="displayEmailSuccessMessage()"
						before="if(!validateContactForm()) return false;"
						onFailure="displayEmailFailureMessage()"  />
				</g:form>
				<!-- /Contact Form -->
			</g:else>
			<!-- /Contact Form -->
		</div>
		<div class="col-md-4 contact-info">
			<h6>WhatsApp</h6>
			<p>
				${it.whatsAppNumber}
			</p>
			<h6>Business Hours</h6>
			<p>
				${it.businessHours.startTime}
				${it.businessHours.startTimePeriod}
				-
				${it.businessHours.endTime}
				${it.businessHours.endTimePeriod}
			</p>
			<ul class="social-links">
				<g:if test="${it.socialNetworks.twitterUrl != null}">
					<a href="${it.socialNetworks.twitterUrl}" target="_blank"><li
						class="twitter-icon"></li></a>
				</g:if>
				<g:if test="${it.socialNetworks.facebookUrl != null}">
					<a href="${it.socialNetworks.facebookUrl}" target="_blank"><li
						class="facebook-icon"></li></a>
				</g:if>
				<g:if test="${it.socialNetworks.instagramUrl != null}">
					<a href="${it.socialNetworks.instagramUrl}" target="_blank"><li
						class="instagram-icon"></li></a>
				</g:if>
				<g:if test="${it.socialNetworks.youtubeUrl != null}">
					<a href="${it.socialNetworks.youtubeUrl}" target="_blank"><li
						class="youtube-icon"></li></a>
				</g:if>
				<g:if test="${it.socialNetworks.wordpressUrl != null}">
					<a href="${it.socialNetworks.wordpressUrl}" target="_blank"><li
						class="wordpress-icon"></li></a>
				</g:if>
				<g:if test="${it.socialNetworks.personalWebsite != null}">
					<a href="${it.socialNetworks.personalWebsite}"
						target="_blank"><h6>
							${it.socialNetworks.personalWebsite}
						</h6>
						</li></a>
				</g:if>
			</ul>
		</div>
	</div>
	<!-- /Row -->
	<!-- Email confirmation Modal -->
      <div id="email-confirmation-modal" class="modal fade" role="dialog">
         <div class="modal-dialog">
            <button class="modal-close" data-dismiss="modal"></button>
            <!-- Modal content-->
            <div class="modal-content text-center">
               <div class="modal-header">
                  <h4 class="modal-title">Please wait for 24 hours to hear back!</h4>
               </div>
               <div class="modal-body">
               </div>
            </div>
         </div>
      </div>
      <!-- Email Failure Modal -->
	<div id="email-failure-modal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<button class="modal-close" data-dismiss="modal"></button>
			<!-- Modal content-->
			<div class="modal-content text-center">
				<div class="modal-header">
					<h4 class="modal-title">An error occurred, please try sending again.</h4>
				</div>
				<div class="modal-body"></div>
			</div>
		</div>
	</div>
</section>
<!-- /Contact Section -->