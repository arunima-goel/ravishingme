<!DOCTYPE html>
<html>
	<body>
		<!-- jQuery -->
    	<asset:javascript src="jquery.js"/>

		Admin page
		
		<g:form controller="admin">
        	<g:textField name="username" value="test-user-name" />
        	<g:submitToRemote url="[action:'getUserProfile']" update="profileInfo" value="Get Profile Info"/>
		</g:form>
		
		<div id="profileInfo">
			<g:render template="/admin/profileInfo" model="${profile}" />
	    </div>
	</body>
</html>
