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
		<nav class="navbar navbar-inverse navbar-fixed-top profile-navbar"
			role="navigation">
			<div class="container-fluid nav-container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<g:render template="/layouts/flashMessages" />

					<g:link mapping="landingPage" class="navbar-brand">
						<asset:image class="logo" src="logo.png" alt="ravishing.me" />
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
							<li><g:link mapping="about">About Us</g:link></li>
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
											src="https://s3.amazonaws.com/ravishingme/profile/${loggedInUser?.username}/profilePicture/profile-large.jpeg"/>
										</a>
										<ul class="dropdown-menu arrow_box">
											<li id="profileLink" class="${loggedInUser?.profile?.isArtist ? '' : 'disabled'}"><g:link mapping="profileView" 
													params="[username: loggedInUser?.profile?.username]">Profile</g:link>
											</li>
											<li><g:link mapping="settings">Settings</g:link></li>
											<li><g:link controller="user" action="logout"  class="facebookLogin" params="[redirectUri: '']"
													id="facebook">Logout</g:link></li>
										</ul>
									</div>
								</li>
							</oauth:connected>
						</ul>
					</div>
				</div>
				<!-- /.navbar-collapse -->
				<div class="secondary-header row">
					<div class="secondary-inner">
						<div class="col-md-6 profile-left-header">
							<img class="profile-pic" alt="Profile"
								onError="this.onerror=null;this.src='/assets/profile.jpg';"
								src="https://s3.amazonaws.com/ravishingme/profile/${profile.username}/profilePicture/profile-large.jpeg" />
							<h1 class="profile-page-title">
								${profile.name}<span> <oauth:connected provider="facebook">
										<g:if
											test="${loggedInUser?.profile?.username == profile.username}">
											<g:link mapping="settings">Edit</g:link>
										</g:if>
									</oauth:connected>
							</h1>
						</div>
						<div class="col-md-6">
							<ul class="second-nav">
								<li class="selected"><a href="#about">Artist Profile</a></li>
								<li><a href="#portfolio">Portfolio</a></li>
								<li><a href="#services">Services</a></li>
								<li><a href="#contact">Contact</a></li>
							</ul>
						</div>
					</div>
					<!-- Secondary Header -->
				</div>
				<!-- Secondary Inner -->
			</div>
			<!-- Seconardy Header Row -->
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
				<h4 class="modal-title">Login / Create your <span>free</span> account.</h4>
			</div>
			<div class="modal-body">
				<oauth:connect provider="facebook" id="facebook-connect-link"
					class="btn btn-block btn-social btn-facebook facebookLogin">
					<span class="fa fa-5x fa-facebook"></span>Continue with Facebook</oauth:connect>
				<p>Well begun is half done!</br>
				You made the right choice by signing up for ravishing.me. </br></br>
				If you’re an artist, you get your own page and amazing visibility among awesome customers.</br> 
				If you’re looking for an artist, here you’ll find the best in class.</p>
				<p>We will not post anything without your permission. By clicking "continue", you confirm that you accept our <g:link mapping="policies">Terms and Privacy Policy</g:link>.</p>
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>
</div>