<div id="display-pic" class="tab-pane fade">
	<h2 class="settings-header">Upload profile picture</h2>
	<g:uploadForm controller="profile" action="uploadProfilePictureFromSettings">
		<div class="row">
			<div class="col-md-4 settings-label">
				<label for="profilePicture">Profile picture</label>
			</div>
			<!-- /.col -->
			<div class="col-md-8">
				<img class="profilePicture" alt="Profile picture"
					onError="this.onerror=null;this.src='http://placehold.it/50x50';"
					src="https://s3.amazonaws.com/ravishingme/profile/${loggedInUser.username}/profilePicture/profile-large.jpeg" />
				<input type="file" name="profilePicture" id="profilePicture"  accept="images/*"/>
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
		<!-- Settings Footer -->
		<div class="settings-footer">
			<div class="form-btns pull-right">
				<a href="#" data-target="#warning-modal" data-toggle="modal"
					class="cancel-btn">Cancel</a> 
				<input type="submit" value="Upload" class="save-btn" />
			</div>
		</div>
	</g:uploadForm>
	<!-- /.settings footer -->
</div>