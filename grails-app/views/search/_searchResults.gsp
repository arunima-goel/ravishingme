<div class="search-results" id="search-results">
	<div class="container">
		<div class="row" id="search-results-container">
			<g:each in="${profiles}" var="profile">
				<div class="col-md-4 result">
					<a href="profile.html"> <image
							src="http://placehold.it/350x200" alt="" class="result-img" />
					</a>
					<div class="row result-info">
						<g:link mapping="profileView"
							params="[username: profile.username]">
							<asset:image src="search-circle.png" alt=""
								class="result-circle-img" />
						</g:link>
						<h3>
							<a href="profile.html"> ${profile.name}
							</a>
						</h3>
						<div class="col-md-6 travel">
							Travel<span> ${profile.isWillingToTravel}
							</span>
						</div>
						<div class="col-md-6 inquiry">
							<g:link mapping="profileView"
								params="[username: profile.username]" fragment="contact">Inquiry</g:link>
						</div>
					</div>
				</div>
			</g:each>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
</div>
<!-- /Search Results -->