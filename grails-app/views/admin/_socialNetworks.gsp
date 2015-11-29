<h2>Social Networks</h2>
<g:form controller="profile">
	<g:hiddenField name="username" value="${profile?.username}" />
	<g:hiddenField name="id" value="${profile?.id}" />
	Facebook: <g:textField name="socialNetworks.facebookUrl" value="${profile?.socialNetworks?.facebookUrl}"/></br>
	Twitter: <g:textField name="socialNetworks.twitterUrl" value="${profile?.socialNetworks?.twitterUrl}"/></br>
	Instagram: <g:textField name="socialNetworks.instagramUrl" value="${profile?.socialNetworks?.instagramUrl}"/></br>
	Youtube: <g:textField name="socialNetworks.youtubeUrl" value="${profile?.socialNetworks?.youtubeUrl}"/></br>
	Personal Website: <g:textField name="socialNetworks.personalWebsite" value="${profile?.socialNetworks?.personalWebsite}"/></br>
	
	<g:actionSubmit action="update" value="Update Social Networks" />
  	
</g:form>
