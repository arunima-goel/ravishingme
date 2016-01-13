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
								<li><oauth:connect provider="facebook" class="facebookLogin"
										id="facebook-connect-link">Sign in</oauth:connect></li>
								<li><oauth:connect provider="facebook"
										id="facebook-connect-link" class="signup-highlight facebookLogin" href="#"
										data-toggle="modal" data-target="#signup">Sign up</oauth:connect>
								</li>
							</oauth:disconnected>
							<oauth:connected provider="facebook">
								<li>
									<div class="dropdown">
										<a href="#" data-toggle="dropdown" class="dropdown-toggle">
											<asset:image src="profile.jpg" class="profile-pic"
												alt="Profile" />
										</a>
										<ul class="dropdown-menu arrow_box">
											<li><g:link mapping="profileView"
													params="[username: loggedInUser.profile.username]">Profile</g:link>
											</li>
											<li><g:link mapping="settings">Settings</g:link></li>
											<li><g:link controller="user" action="logout"
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
							<asset:image src="profile.jpg" alt="" class="profile-pic" />
							<h1 class="profile-page-title">
								${profile.name}<span> <oauth:connected provider="facebook">
										<g:if
											test="${loggedInUser.profile.username == profile.username}">
											<g:link mapping="settings">Edit</g:link>
										</g:if>
									</oauth:connected>
							</h1>
						</div>
						<div class="col-md-6">
							<ul class="second-nav">
								<li class="selected"><a href="#about">About</a></li>
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