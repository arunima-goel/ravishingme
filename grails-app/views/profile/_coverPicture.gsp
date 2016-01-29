<div id="cover-pic" class="tab-pane fade">
	<h2 class="settings-header">Upload your cover photo</h2>
	<g:uploadForm controller="profile" action="uploadCoverPictureFromSettings">
		<div class="row">
			<div class="col-md-4 settings-label">
				<label for="coverPicture">Cover picture</label>
			</div>
			<!-- /.col -->
			<div class="col-md-8">
				<img class="coverPicture" alt="Cover picture"
					onError="this.onerror=null;this.src='http://placehold.it/350x200';"
					src="https://s3.amazonaws.com/ravishingme/profile/${loggedInUser.username}/coverPicture/cover.jpeg" />
				<input type="file" name="coverPicture" id="coverPicture"  accept="images/*"/>
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