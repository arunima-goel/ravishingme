<oauth:connected provider="facebook">
	<g:form>
		<g:hiddenField name="favoriteId" value="${profile?.id}" />
		<g:set var="favoriteIcon"
			value="${loggedInUser?.profile?.favorites.contains(profile).equals(true) ? 'favorite-icon-orange' : 'favorite-icon-gray'}" />
		<g:set var="favoriteAction"
			value="${loggedInUser?.profile?.favorites.contains(profile).equals(true) 
												? [controller:'profile', action:'removeFavorite']
												: [controller:'profile', action:'addFavorite'] }" />
		<g:submitToRemote class="${favoriteIcon}" update="favorite-icon"
			url="${favoriteAction}" />
	</g:form>
</oauth:connected>
<oauth:disconnected provider="facebook">
	<a href="#" data-target="#favorite-modal" data-toggle="modal" > <asset:image
			src="heart-gray.png" class="favoriteIconWhenLoggedOut" />
	</a>
</oauth:disconnected>
<span>Favorite</span>
