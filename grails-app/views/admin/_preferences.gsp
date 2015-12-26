<h2>Preferences</h2>
<g:render template="/templates/flashMessages"/>
<g:form>
	<g:hiddenField name="username" value="${profile?.username}" />
	<g:hiddenField name="id" value="${profile?.id}" />
	Cosmetics:</br>
	<g:each in="${org.ravishingme.CosmeticBrand.list(sort: 'id', order: 'asc')}" var="cosmeticBrand" status="i">
	    <g:checkBox name="preferredCosmeticBrands" value="${cosmeticBrand.id}" checked="${profile.preferredCosmeticBrands.contains(cosmeticBrand)}" />
	    <label for="preferredCosmeticBrand">${cosmeticBrand.name}</label></br>
	</g:each>
	</br>
	Services:</br>
	<g:each in="${org.ravishingme.Service.list(sort: 'id', order: 'asc')}" var="service" status="i">
	    <g:checkBox name="preferredServices" value="${service.id}" checked="${profile.preferredServices.contains(service)}" />
	    <label for="preferredService">${service.name}</label>
	</g:each>
	</br>
	<g:submitToRemote url="[controller:'profile', action:'update']" update="profileInfo" value="Update Preferences"/>  	
</g:form>