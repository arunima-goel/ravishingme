<h2>Favorites</h2>
<g:form controller="profile">
	<g:hiddenField name="username" value="${profile?.username}" />
	<g:hiddenField name="id" value="${profile?.id}" />
	<g:each in="${profile.favorites}" var="favorite">
			<tr>
				<td><g:link action="removeFavorite" id="${profile?.id}"
						params="['favoriteId': favorite.id]">
    				Remove favorite
    			</g:link></td>
				<td>Favorite - username: ${favorite.username}</br>
				</td>
			</tr>
		</g:each>
		</br>  	
</g:form>
