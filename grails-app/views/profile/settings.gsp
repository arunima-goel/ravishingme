<!DOCTYPE html>
<html lang="en" style="overflow-y: scroll">
<head>
<meta name="layout" content="main" />
</head>
<body class="settings-body">
	<!-- Warning Modal -->
	<div id="warning-modal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<button class="modal-close" data-dismiss="modal"></button>
			<!-- Modal content-->
			<div class="modal-content text-center">
				<div class="modal-header">
					<h4 class="modal-title">Are you sure you want to leave the
						page?</h4>
				</div>
				<div class="modal-body">
					<p>It looks like you're in the middle of completing
						your profile and you haven't saved all your content.</p>
					<p class="save-before">Save before you go!</p>
				</div>
				<div class="modal-footer">
					<g:link mapping="redirectFromSettings" class="leave-btn"
						params="[username: loggedInUser.profile.username]">
						Leave
					</g:link>
					<a href="#" class="stay-btn">Stay</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Success Modal -->
	<div id="success-modal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<button class="modal-close" data-dismiss="modal"></button>
			<!-- Modal content-->
			<div class="modal-content text-center">
				<div class="modal-header">
					<h4 class="modal-title">Thanks! Your profile is saved.</h4>
				</div>
				<div class="modal-body"></div>
			</div>
		</div>
	</div>
	<!-- Failure Modal -->
	<div id="failure-modal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<button class="modal-close" data-dismiss="modal"></button>
			<!-- Modal content-->
			<div class="modal-content text-center">
				<div class="modal-header">
					<h4 class="modal-title">Something went wrong! Please try again.</h4>
				</div>
				<div class="modal-body"></div>
			</div>
		</div>
	</div>


	<!-- Settings -->
	<div id="settings">
		<div class="container">
			<div class="row">
				<div class="col-md-4 menu-container">
					<ul class="settings-menu">
						<li class="active"><a data-toggle="pill"
							href="#account-basics">Account Basics</a></li>
						<!-- Artist Menu -->
						<g:set var="displayTypeArtist"
							value="${loggedInUser?.profile?.isArtist.equals(true) ? 'list-item' : 'none'}" />
						<li class="artist-menu-item" style="display:${displayTypeArtist}"><a
							data-toggle="pill" href="#profile-settings">Profile</a></li>
						<li class="artist-menu-item" style="display:${displayTypeArtist}"><a
							data-toggle="pill" href="#display-pic">Profile Picture</a></li>
						<li class="artist-menu-item" style="display:${displayTypeArtist}"><a
							data-toggle="pill" href="#cover-pic">Cover Photo</a></li>
						<li class="artist-menu-item" style="display:${displayTypeArtist}"><a
							data-toggle="pill" href="#social-networks-settings">Social
								Networks</a></li>
						<li class="artist-menu-item" style="display:${displayTypeArtist}"><a
							data-toggle="pill" href="#awards-settings">Awards &
								Affiliations</a></li>
						<li class="artist-menu-item" style="display:${displayTypeArtist}"><a
							data-toggle="pill" href="#favorites-settings">Favorites</a></li>
						<!-- User Menu -->
						<g:set var="displayTypeUser"
							value="${loggedInUser?.profile?.isArtist.equals(false) ? 'list-item' : 'none'}" />
						<li class="user-menu-item" style="display:${displayTypeUser}"><a
							data-toggle="pill" href="#user-preferences">Preferences</a></li>
						<li class="user-menu-item" style="display:${displayTypeUser}"><a
							data-toggle="pill" href="#favorites-settings">Favorites</a></li>
						<li class="user-menu-item" style="display:${displayTypeUser}"><a
							data-toggle="pill" href="#display-pic">Profile Picture</a></li>
					</ul>
				</div>
				<!-- /.col -->
				<div class="col-md-8 settings-content tab-content">
					<g:render template="/profile/settingsTabContent" />
				</div>
				<!-- /.tab content -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.settings -->

	<!-- jQuery -->
	<asset:javascript src="jquery.js" />

	<!-- Bootstrap Core JavaScript -->
	<asset:javascript src="bootstrap.min.js" />

	<!-- Custom Checkboxes -->
	<asset:javascript src="prettyCheckable.min.js" />

	<!-- Form Validation -->
	<asset:javascript src="validator.js" />

	<!-- Custom JS -->
	<asset:javascript src="custom.js" />
</body>
</html>