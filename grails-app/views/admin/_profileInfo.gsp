<h2>Profile Info</h2>
<g:if test="${profile != null}">
   	<div id="accountBasics">
		<g:render template="/admin/accountBasics" model="${profile}"/>
	</div>
	<div id="pictures">
		<g:render template="/admin/pictures" model="${profile}"/>
	</div>
	<div id="favorites">
		<g:render template="/admin/favorites" model="${profile}"/>
	</div>
	<g:if test="${profile.isArtist == true}">
		<div id="profile">
			<g:render template="/admin/profile" model="${profile}"/>
		</div>
		<div id="socialNetworks">
			<g:render template="/admin/socialNetworks" model="${profile}"/>
		</div>
		<div id="awardsAndAffiliations">
			<g:render template="/admin/awardsAndAffiliations" model="${profile}"/>
		</div>
	</g:if>
	<g:else>
		<div id="preferences">
			<g:render template="/admin/preferences" model="${profile}"/>
		</div>
	</g:else>
</g:if>
