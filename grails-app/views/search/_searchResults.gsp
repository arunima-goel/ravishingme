<div class="search-results" id="search-results">
	<div class="container">
		<div class="row" id="search-results-container">
			<g:if test="${profiles == null || profiles.isEmpty()}">
				<div class="emptySearchResults col-md-6 col-md-offset-1">
					<div class="emptySearchResultsLine1">Oops! That’s an empty closet.</br></div>
					Looks like we don’t have this service yet. Tell us what you were looking for <g:link mapping="about" fragment="contact">here</g:link>.
				</div>
			</g:if>
			<g:else>
				<g:each in="${profiles}" var="profile">
					<div class="col-md-4 result">
						<g:link mapping="profileView" target="_blank"
								params="[username: profile.username]">
							<img class="result-img" alt=""
								onError="this.onerror=null;this.src='http://placehold.it/360x200';"
								src="https://s3.amazonaws.com/ravishingme/profile/${profile.username}/coverPicture/cover.jpeg" />
						</g:link>
						<div class="row result-info">
							<g:link mapping="profileView" params="[username: profile.username]" target="_blank">
								<img class="result-circle-img" alt=""
								onError="this.onerror=null;this.src='/assets/search-circle.png';"
								src="https://s3.amazonaws.com/ravishingme/profile/${profile.username}/profilePicture/profile-large.jpeg" />
							</g:link>
							<h3>
								<g:link mapping="profileView" params="[username: profile.username]" target="_blank">
									${profile.name}
								</g:link>
							</h3>
							<div class="col-md-6 travel">
								Travel<span> ${profile.isWillingToTravel}
								</span>
							</div>
							<div class="col-md-6 inquiry">
								<g:link mapping="profileView" params="[username: profile.username]" fragment="contact" target="_blank">Inquiry</g:link>
							</div>
						</div>
					</div>
				</g:each>
			</g:else>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
</div>
<!-- /Search Results -->