<!--Header_section-->
<script type="text/javascript">
 	window.onload = function() {
 		var x = location.pathname;
 	    var facebookLinks = document.getElementsByClassName("facebookLogin")
 	    Array.prototype.forEach.call(facebookLinks, function(facebookLink) {
 		    var hrefAttr = facebookLink.getAttribute("href");
 	        facebookLink.setAttribute("href", hrefAttr + x)
 	    });   	    
 }
 </script>
 
<header id="header-wrapper">
	<div class="container-fluid">
		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container-fluid nav-container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<g:render template="/layouts/flashMessages" />

					<g:link mapping="landingPage" class="navbar-brand">
						<asset:image class="logo" src="logo.png" alt="Ravishing.me" />
					</g:link>
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse-container">
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><g:link mapping="about">About</g:link></li>
							<li><g:link mapping="faqs">FAQs</g:link></li>
							<oauth:disconnected provider="facebook">
								<li><oauth:connect provider="facebook"
										id="facebook-connect-link" class="signup-highlight" href="#"
										data-toggle="modal" data-target="#signup">Login</oauth:connect>
								</li>
							</oauth:disconnected>
							<oauth:connected provider="facebook">
								<li>
									<div class="dropdown">
										<a href="#" data-toggle="dropdown" class="dropdown-toggle">
											<img class="profile-pic" alt="Profile" onError="this.onerror=null;this.src='/assets/profile.jpg';" 
											src="https://s3.amazonaws.com/ravishingme/profile/${loggedInUser.username}/profilePicture/profile-large.jpeg"/>
											
										</a>
										<ul class="dropdown-menu arrow_box">
											<li id="profileLink" class="${loggedInUser?.profile?.isArtist ? '' : 'disabled'}">
												<g:link mapping="profileView" id="profileLink"
													params="[username: loggedInUser.profile.username]">Profile</g:link>
											</li>
											<li><g:link mapping="settings">Settings</g:link></li>
											<li><g:link controller="user" action="logout" class="facebookLogin" params="[redirectUri: '']"
													id="facebook">Logout</g:link></li>
										</ul>
									</div>
								</li>
							</oauth:connected>
						</ul>
					</div>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->
		</nav>
	</div>
	<!--- Header Container -->
</header>
<!--Header_section-->
<!-- Signup Modal -->
<div id="signup" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<button class="modal-close" data-dismiss="modal"></button>
		<!-- Modal content-->
		<div class="modal-content text-center">
			<div class="modal-header">
				<h4 class="modal-title">Create your ravishing account.</h4>
				<h4>
					It's <span>Free</span>
				</h4>
			</div>
			<div class="modal-body">
				<oauth:connect provider="facebook" id="facebook-connect-link"
					class="btn btn-block btn-social btn-facebook facebookLogin">
					<span class="fa fa-5x fa-facebook"></span>Continue with Facebook</oauth:connect>
				<p>We will not post anything without your permission</p>
			</div>
			<div class="signup-terms">
				<p>By clicking "continue", you confirm that you accept</p>
				<p>
					our <a href="#">Terms of service</a> and <a href="#">Privacy
						Policy</a>.
				</p>
			</div>
			<div class="modal-footer">
				<h4>Already a member?</h4>
			</div>
		</div>
	</div>
</div>