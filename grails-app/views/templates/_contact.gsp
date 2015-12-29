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
                     <p>${it.whatsAppNumber}</p>
                     <h6>Business Hours</h6>
                     <p>${it.businessHours.startTime} ${it.businessHours.startTimePeriod} - 
                     ${it.businessHours.endTime} ${it.businessHours.endTimePeriod}</p>
                     <h6>Meet the artist</h6>
                     <ul class="social-links">
                     	<g:if test="${it.socialNetworks.twitterUrl != null}">
                     		<a href="http://${it.socialNetworks.twitterUrl}" target="_blank"><li class="twitter-icon"></li></a>
                     	</g:if>
                        <g:if test="${it.socialNetworks.facebookUrl != null}">
                     		<a href="http://${it.socialNetworks.facebookUrl}" target="_blank"><li class="facebook-icon"></li></a>
                        </g:if>
                        <g:if test="${it.socialNetworks.instagramUrl != null}">
                     		<a href="http://${it.socialNetworks.instagramUrl}" target="_blank"><li class="instagram-icon"></li></a>
                        </g:if>
                        <g:if test="${it.socialNetworks.youtubeUrl != null}">
                     		<a href="http://${it.socialNetworks.youtubeUrl}" target="_blank"><li class="youtube-icon"></li></a>
                     	</g:if>
                     	<g:if test="${it.socialNetworks.wordpressUrl != null}">
                     		<a href="http://${it.socialNetworks.wordpressUrl}" target="_blank"><li class="wordpress-icon"></li></a>
                     	</g:if>
                     	<g:if test="${it.socialNetworks.personalWebsite != null}">
                     		<a href="http://${it.socialNetworks.personalWebsite}" target="_blank"><h6>${it.socialNetworks.personalWebsite}</h6></li></a>
                     	</g:if>
                     </ul>
                  </div>
               </div>
               <!-- /Row -->
            </section>
            <!-- /Contact Section -->