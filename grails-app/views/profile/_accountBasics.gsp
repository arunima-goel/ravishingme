
<h2 class="settings-header">All you need is a killer profile. Let’s get you started!</h2>
<g:form class="settings-form" data-toggle="validator">
	<g:hiddenField name="username"
		value="${loggedInUser?.profile?.username}" />
	<g:hiddenField name="id" value="${loggedInUser?.profile?.id}" />
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="isArtist">Are you an artist?*</label>
		</div>
		<!-- /.col -->
		<div
			class="col-md-8 settings-input has-radio form-group artist-container">
			<g:radio name="isArtist" id="artist-yes" value="true"
				checked="${loggedInUser?.profile?.isArtist.equals(true)}" />
			<label for="artist-yes" class="artist-label">Yes</label>
			<g:radio name="isArtist" id="artist-no" value="false"
				checked="${loggedInUser?.profile?.isArtist.equals(false)}" />
			<label for="artist-no">No</label>
			<div class="help-block with-errors"></div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="name">Full Name*</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input form-group">
			<input type="text" name="name" id="settings-name"
				pattern="^[a-zA-Z ]*$" value="${loggedInUser?.profile?.name}"
				required data-error="Please enter your full name.">
			<div class="settings-name help-block with-errors"></div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="email">E-mail*</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input form-group">
			<input type="email" name="email" id="settings-email"
				value="${loggedInUser?.profile?.email}" required
				data-error="Please enter a valid email address.">
			<div class="help-block with-errors"></div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="username">Username</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input read-only">
			<input type="text" id="settings-username"
				value="www.ravishing.me/${loggedInUser?.profile?.username}" readonly>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="location">Address*</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input">
			<div class="form-group">
				<input type="text" name="address.streetAddress"
					id="settings-location"
					value="${loggedInUser?.profile?.address?.streetAddress}" required
					data-error="Please enter a valid address."
					placeholder="Street address">
				<div class="help-block with-errors"></div>
			</div>
			<div class="form-group button-group city-dropdown">
				<g:hiddenField name="address.city" class="settings-city-input"
					value="${loggedInUser?.profile?.address?.city?.id}" />
				<button type="button" class="settings-dropdown-btn city"
					data-toggle="dropdown">
					${loggedInUser?.profile?.address?.city?.displayName}
				</button>
				<ul class="dropdown-menu outer-noscroll settings-dropdown-city">
					<div class="inner-noscroll">
						<g:each in="${org.ravishingme.City.list()}" var="city">
							<li value="${city.id}"
								class="${city.id == loggedInUser?.profile?.address?.city?.id ? 'selected' : ''}"><a>
									${city.displayName}
							</a></li>
						</g:each>
					</div>
					<div class="scroll-opac"></div>
				</ul>
				<div class="help-block with-errors"></div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.col -->
		<div class="text-center settings-hint basics">
			<p>
				If you don't find your city, please
				<g:link mapping="about" fragment="contact">contact us.</g:link>
			</p>
		</div>
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="phone">Phone</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input form-group">
			<input type="text" name="phoneNumber" id="phone"
				value="${loggedInUser?.profile?.phoneNumber}"
				data-error="Please enter a valid phone number."
				placeholder="1234567890" pattern="[0-9]{0,13}">
			<div class="help-block with-errors"></div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="whatsapp">WhatsApp Number*</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input form-group">
			<input type="text" name="whatsAppNumber" id="settings-whatsapp"
				value="${loggedInUser?.profile?.whatsAppNumber}" required
				placeholder="1234567890"
				data-error="Please enter a valid Whatsapp number."
				pattern="[0-9]{1,13}">
			<div class="help-block with-errors"></div>
			<g:set var="displayTypeArtist"
				value="${loggedInUser?.profile?.isArtist.equals(true) ? 'block' : 'none'}" />
			<div class="whatsapp-msg" style="display:${displayTypeArtist}">Your
				WhatsApp number will be visible on your profile page.</div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<!-- Settings Footer -->
	<div class="settings-footer">
		<div class="form-btns pull-right">
			<a href="#" data-target="#warning-modal" data-toggle="modal"
				class="cancel-btn">Cancel</a>
			<g:submitToRemote class="save-btn"
				url="[controller:'profile', action:'updateSettings']" value="Save"
				before="if(!validateAccountSettingsForm()) return false;"
				onSuccess="displaySuccessMessage()"
				onFailure="displayFailureMessage()" />
		</div>
	</div>
	<!-- /.settings footer -->
</g:form>
<!-- /.form -->

