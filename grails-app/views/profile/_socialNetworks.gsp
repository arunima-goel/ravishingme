<h2 class="settings-header">Add your social networks</h2>
<g:form class="settings-form" data-toggle="validator">
	<g:hiddenField name="username"
		value="${loggedInUser?.profile?.username}" />
	<g:hiddenField name="id" value="${loggedInUser?.profile?.id}" />
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="facebook">Facebook</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input form-group">
			<input type="text" name="socialNetworks.facebookUrl"
				value="${loggedInUser?.profile?.socialNetworks?.facebookUrl}"
				id="facebook-input"><br>
			<div class="help-block with-errors"></div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="twitter">Twitter</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input form-group">
			<input type="text" name="socialNetworks.twitterUrl"
				value="${loggedInUser?.profile?.socialNetworks?.twitterUrl}"
				id="twitter-input"><br>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="instagram">Instagram</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input form-group">
			<input type="text" name="socialNetworks.instagramUrl"
				value="${loggedInUser?.profile?.socialNetworks?.instagramUrl}"
				id="instagram-input"><br>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="youtube">Youtube</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input form-group">
			<input type="text" name="socialNetworks.youtubeUrl"
				value="${loggedInUser?.profile?.socialNetworks?.youtubeUrl}"
				id="youtube-input"><br>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="presonal-website">Personal Website</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input form-group">
			<input type="text" name="socialNetworks.personalWebsite"
				value="${loggedInUser?.profile?.socialNetworks?.personalWebsite}"
				id="personal-website-input"><br>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<!-- Settings Footer -->
	<div class="settings-footer">
		<div class="form-btns pull-right">
			<a href="" class="cancel-btn">Cancel</a>
			<g:submitToRemote class="save-btn"
				url="[controller:'profile', action:'updateSettings']" 
				value="Save"
				onSuccess="displaySuccessMessage()" />
		</div>
	</div>
	<!-- /.settings footer -->
</g:form>
<!-- /.form -->
