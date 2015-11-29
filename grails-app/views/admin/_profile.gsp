<h2>Profile</h2>
<g:form controller="profile">
	<g:hiddenField name="username" value="${profile?.username}" />
	<g:hiddenField name="id" value="${profile?.id}" />
	Bio: <g:textField name="aboutYou" value="${profile?.aboutYou}"/></br>
	Willing to travel: 
	<g:radio name="isWillingToTravel" value="true" checked="${profile?.isWillingToTravel.equals(true)}"/>Yes
	<g:radio name="isWillingToTravel" value="false" checked="${profile?.isWillingToTravel.equals(false)}"/>No
	</br>
	Cosmetics:</br>
	<g:each in="${org.ravishingme.CosmeticBrand.list(sort: 'id', order: 'asc')}" var="cosmeticBrand" status="i">
	    <g:checkBox name="cosmeticBrands" value="${cosmeticBrand.id}" checked="${profile.cosmeticBrands.contains(cosmeticBrand)}" />
	    <label for="cosmeticBrands">${cosmeticBrand.name}</label></br>
	</g:each>
	</br>
	Services:</br>
	<g:each in="${org.ravishingme.Service.list(sort: 'id', order: 'asc')}" var="service" status="i">
	    <g:checkBox name="services" value="${service.id}" checked="${profile.services.contains(service)}" />
	    <label for="service">${service.name}</label>
	    <g:textField name="service.startingPrice" value="${service.startingPrice}"/>
	</g:each>
	</br>
	Trial: 
	<g:radio name="isComplimentaryTrial" value="true" checked="${profile?.isComplimentaryTrial.equals(true)}"/>Complimentary
	<g:radio name="isComplimentaryTrial" value="false" checked="${profile?.isComplimentaryTrial.equals(false)}"/>Paid
	</br>
	Years of experience: <g:textField name="yearsOfExperience" value="${profile?.yearsOfExperience}"/></br>
	Business hours:
	Start time: 
	<g:select name="businessHours.startTime"
			from="${org.ravishingme.BusinessHours.Time.values()}"
			value="${profile?.businessHours?.startTime}" optionValue="value" optionKey="key"/>
	<g:select name="businessHours.startTimePeriod"
			from="${org.ravishingme.BusinessHours.Period.values()}"
			value="${profile?.businessHours?.startTimePeriod}" optionValue="key" optionKey="key"/>
	End time:
	<g:select name="businessHours.endTime"
			from="${org.ravishingme.BusinessHours.Time.values()}"
			value="${profile?.businessHours?.endTime}" optionValue="value" optionKey="key"/>
	<g:select name="businessHours.endTimePeriod"
			from="${org.ravishingme.BusinessHours.Period.values()}"
			value="${profile?.businessHours?.endTimePeriod}" optionValue="key" optionKey="key"/>
			
	</br></br>
	
	<g:actionSubmit action="update" value="Update Profile" /> 
  	
</g:form>