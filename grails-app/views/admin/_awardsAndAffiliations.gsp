<h2>Awards and Affiliations</h2>
<g:form controller="profile">
	<g:hiddenField name="username" value="${profile?.username}" />
	<g:hiddenField name="id" value="${profile?.id}" />
	Awards: <g:textField name="awards" value="${profile?.awards}"/></br>
	Affiliations: <g:textField name="affiliations" value="${profile?.affiliations}"/></br>
	<g:actionSubmit action="update" value="Update Social Networks" />
  	
</g:form>
