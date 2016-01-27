<div id="display-pic" class="tab-pane fade">
	<h2 class="settings-header">Upload your ravishing profile picture
		and a cover photo</h2>
	<g:uploadForm controller="profile" action="uploadPicturesFromSettings">
		<div class="row">
			<div class="col-md-4 settings-label">
				<label for="profilePicture">Profile picture</label>
			</div>
			<!-- /.col -->
			<div class="col-md-8">
				<img class="profile-photo" alt="Profile picture"
					onError="this.onerror=null;this.src='http://placehold.it/200x200';"
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