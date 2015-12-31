<div id="favorite-icon">
	<g:form>
		<g:hiddenField name="id" value="${loggedInUser?.profile?.id}" />
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
	<span>Favorite</span>
</div>