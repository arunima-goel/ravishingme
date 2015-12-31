
<h2 class="settings-header">List of your favorite artists</h2>
<div class="row favorites-content">
	<g:each in="${loggedInUser?.profile?.favorites}" var="favorite">
		<!-- TODO: sort favorites by username? -->
		<div class="col-md-6 fav-col">
			<g:link mapping="profileView" params="[username: favorite.username]">
				<asset:image src="user-fav.png" class="img-circle" alt="" />
			</g:link>
			<g:link mapping="profileView" params="[username: favorite.username]">
				${favorite.name}
			</g:link>
		</div>
		<!-- /.col -->
		<div class="col-md-6 fav-col right">
			<div class="fav-phone">
				${favorite.phoneNumber}
			</div>
			<div class="fav-inquiry">
				<g:link mapping="profileView" params="[username: favorite.username]"
					fragment="contact">Inquiry</g:link>
			</div>
			<g:form class="fav-favorite">
				<g:hiddenField name="id" value="${loggedInUser?.profile?.id}" />
				<!-- TODO: we should not need this hidden field - fetch logged in user when the request is made in the controller -->
				<g:hiddenField name="favoriteId" value="${favorite?.id}" />

				<g:submitToRemote class="favorite-icon-orange fav-heart"
					update="favorites-settings"
					url="[controller:'profile', action:'removeFavoriteFromSettings']" />
			</g:form>
		</div>
		<!-- /.col -->
	</g:each>

</div>
<!-- /.row -->
<!-- Settings Footer -->
<div class="settings-footer">
	<div class="form-btns pull-right">
		<a href="" class="cancel-btn">Cancel</a>
		<button class="save-btn">Save</button>
	</div>
</div>
<!-- /.settings footer -->
