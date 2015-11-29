<h2>Account Basics</h2>
<g:form controller="profile">
	<g:hiddenField name="username" value="${profile?.username}" />
	<g:hiddenField name="id" value="${profile?.id}" />
	Are you an artist: 
	<g:radio name="isArtist" value="true" checked="${profile?.isArtist.equals(true)}"/>Yes
	<g:radio name="isArtist" value="false" checked="${profile?.isArtist.equals(false)}"/>No
	</br>
	Full name: <g:textField name="name" value="${profile?.name}"/></br>
	Email: <g:textField name="email" value="${profile?.email}"/></br>
	Username: www.ravishing.me/${profile?.username} </br><!-- TODO: convert this to a link? -->
    Location: </br>
    Street Address: <g:textField name="address.streetAddress" value="${profile?.address?.streetAddress}"/> </br>
    City: <g:textField name="address.city" value="${profile?.address?.city}"/> </br>
    State: <g:select name="address.state"
			from="${org.ravishingme.State.list()}"
			value="${profile?.address?.state?.id}" optionValue="name" optionKey="id"/>
		</br>
		
	Phone: <g:textField name="phoneNumber" value="${profile?.phoneNumber}"/> </br>
    WhatsApp number: <g:textField name="whatsAppNumber" value="${profile?.whatsAppNumber}"/> </br> 
    </br>
  	<g:actionSubmit action="update" value="Update Account Basics" />
  	
</g:form>
