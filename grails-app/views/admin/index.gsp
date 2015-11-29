<!DOCTYPE html>
<html>
	<body>
		Admin page
		
		<g:form>
        	<g:textField name="username" value="test-user-name" />
        	<g:actionSubmit action="getUserProfile" value="GetProfileInfo" />
		</g:form>
		
		<g:if test="${profile != null}">
	    	Username: ${profile.username}
	    	
			<div id="profileInfo">
				<g:render template="/admin/profileInfo" model="${profile}"/>
			</div>
			<div id="accountBasics">
				<g:render template="/admin/accountBasics" model="${profile}"/>
			</div>
	    </g:if>
	    <g:else>
	    	Could not find user
	    </g:else>
	</body>
</html>
