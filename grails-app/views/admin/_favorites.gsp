<h2>Favorites</h2>
	<g:each in="${profile.favorites}" var="favorite">
		<g:form controller="profile">
				<g:hiddenField name="username" value="${profile?.username}" />
				<g:hiddenField name="id" value="${profile?.id}" />
				<g:hiddenField name="favoriteId" value="${favorite.id}" />
				<g:submitToRemote
					url="[controller:'profile', action:'removeFavoriteFromAdmin']"
					update="profileInfo" value="Remove favorite ${favorite.username}" />
			</g:form>
</g:each>
