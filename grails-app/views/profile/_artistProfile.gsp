
<h2 class="settings-header">Add some basic information to set up
	your profile</h2>
<g:form class="settings-form" data-toggle="validator">
	<g:hiddenField name="username"
		value="${loggedInUser?.profile?.username}" />
	<g:hiddenField name="id" value="${loggedInUser?.profile?.id}" />
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="bio">About you*</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input form-group">
			<textarea required name="aboutYou" id="settings-aboutyou" rows="10"
				cols="66" maxlength="1000" 
				placeholder="Tell us about yourself and your work. Do not forget to mention whether you travel to clients’ locations - e.g. destination weddings, home appointments etc.">${loggedInUser?.profile?.aboutYou}</textarea>
			<div class="bio-msg">Maximum 1,000 characters</div>
			<div class="help-block with-errors"></div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="artist">Willing to travel*</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input has-radio travel-container">
			<g:radio name="isWillingToTravel" id="travel-yes" value="true"
				checked="${loggedInUser?.profile?.isWillingToTravel.equals(true)}" />
			<label for="travel-yes" class="has-radio">Yes</label>
			<g:radio name="isWillingToTravel" id="travel-no" value="false"
				checked="${loggedInUser?.profile?.isWillingToTravel.equals(false)}" />
			<label for="travel-no">No</label>
			<div class="help-block with-errors"></div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="cosmetics">Cosmetics Brands*</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input form-group cosmetics-group">
			<ul class="settings-checkboxes cosmetics">
				<g:each
					in="${org.ravishingme.CosmeticBrand.list(sort: 'id', order: 'asc')}"
					var="cosmeticBrand" status="i">
					<li><input type="checkbox" name="cosmeticBrands"
						value="${cosmeticBrand.id}" data-label="${cosmeticBrand.name}"
						data-customClass="cosmetics-check" class="cos-checkbox"
						${loggedInUser?.profile?.cosmeticBrands.contains(cosmeticBrand)?'checked':''} /></li>
				</g:each>
			</ul>
			<div class="help-block with-errors cosmetics"></div>
			<div class="text-center settings-hint">
				<p>
					If you don't find a cosmetics brand of your choice, please 
					<g:link mapping="about" fragment="contact">contact us</g:link>.</a>
				</p>
			</div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="services">Services*</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input">
			<div class="row">
				<table width="100%" margin-left="auto" margin-right="auto">
					<tr>
						<td class="col-md-6 services-header" align="left">Add
							Services</td>
						<td class="col-md-6 services-header price" align="right">Starting
							Price</td>
					</tr>
					<g:each in="${loggedInUser?.profile?.servicesOffered}"
						var="serviceOffered" status="i">
						<tr>
							<g:hiddenField name='servicesOffered[${i}].id'
								value='${serviceOffered.id}' />
							<td class="col-md-6 align="left"><input type="checkbox"
								name="servicesOffered[${i}].isOffered"
								data-label="${serviceOffered.service.name}"
								data-customClass="services-check" class="service-checkbox"
								${serviceOffered.isOffered?'checked':''} value="yes" /> <input
								type="hidden" name="servicesOffered[${i}].isOffered" value="no" />
							</td>
							<td class="col-md-6" align="right">Rs. <input type="text"
								pattern="[0-9]" name="servicesOffered[${i}].startingPrice"
								placeholder="1234"
								value="<g:formatNumber number='${serviceOffered.startingPrice}' format='0'/>" /></td>
						</tr>
					</g:each>
				</table>
				<div class="help-block with-errors services"></div>
			</div>
		</div>
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="trial">Trial*</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input has-radio trial-container">
			<g:radio name="isComplimentaryTrial" id="trial-comp" value="true"
				checked="${loggedInUser?.profile?.isComplimentaryTrial.equals(true)}" />
			<label for="trial-comp" class="has-radio">Complimentary</label>
			<g:radio name="isComplimentaryTrial" id="trial-paid" value="false"
				checked="${loggedInUser?.profile?.isComplimentaryTrial.equals(false)}" />
			<label for="trial-paid">Paid</label>
			<div class="help-block with-errors"></div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="experience">Years of experience*</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input form-group">
			<input type="text" name="yearsOfExperience" id="settings-experience"
				data-error="Please enter your years of experience (numbers only)."
				pattern="[0-9]{1,2}" required
				value="${loggedInUser?.profile?.yearsOfExperience}">
			<div class="help-block with-errors"></div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row hours-row">
		<div class="col-md-4 settings-label">
			<label for="exp">Business Hours</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input">
			<div class="row">
				<div class="button-group">
					<g:hiddenField name="businessHours.startTime"
						class="settings-business-hours-start-input"
						value="${loggedInUser?.profile?.businessHours?.startTime?.key}" />
					<button type="button" class="settings-dropdown-btn am"
						data-toggle="dropdown">
						${loggedInUser?.profile?.businessHours?.startTime?.value}
					</button>
					<ul class="dropdown-menu outer-noscroll settings-dropdown-hours-am">
						<div class="inner-noscroll">
							<g:each in="${org.ravishingme.BusinessHours.Time.values()}"
								var="businessHoursStart">
								<li data-value="${businessHoursStart?.key}"
									class="${businessHoursStart?.key == loggedInUser?.profile?.businessHours?.startTime?.key ? 'selected' : ''}"><a>
										${businessHoursStart?.value}
								</a></li>
							</g:each>
						</div>
						<div class="scroll-opac"></div>
					</ul>
				</div>
				<div class="button-group">
					<g:hiddenField name="businessHours.startTimePeriod"
						class="settings-business-hours-start-period-input"
						value="${loggedInUser?.profile?.businessHours?.startTimePeriod?.key}" />
					<button type="button" class="settings-dropdown-btn hours-am"
						data-toggle="dropdown">
						${loggedInUser?.profile?.businessHours?.startTimePeriod?.key}
					</button>
					<ul
						class="dropdown-menu outer-noscroll settings-dropdown-menu hours-am1">
						<div class="inner-noscroll">
							<g:each in="${org.ravishingme.BusinessHours.Period.values()}"
								var="businessHoursStartTimePeriod">
								<li data-value="${businessHoursStartTimePeriod?.key}"
									class="${businessHoursStartTimePeriod?.key == loggedInUser?.profile?.businessHours?.startTimePeriod?.key ? 'selected' : ''}"><a>
										${businessHoursStartTimePeriod?.key}
								</a></li>
							</g:each>
						</div>
					</ul>
				</div>
				<div class="button-group">
					<g:hiddenField name="businessHours.endTime"
						class="settings-business-hours-end-input"
						value="${loggedInUser?.profile?.businessHours?.endTime?.key}" />
					<button type="button" class="settings-dropdown-btn pm"
						data-toggle="dropdown">
						${loggedInUser?.profile?.businessHours?.endTime?.value}
					</button>
					<ul class="dropdown-menu outer-noscroll settings-dropdown-hours-pm">
						<div class="inner-noscroll">
							<g:each in="${org.ravishingme.BusinessHours.Time.values()}"
								var="businessHoursEnd">
								<li data-value="${businessHoursEnd?.key}"
									class="${businessHoursEnd?.key == loggedInUser?.profile?.businessHours?.endTime?.key ? 'selected' : ''}"><a>
										${businessHoursEnd?.value}
								</a></li>
							</g:each>
						</div>
						<div class="scroll-opac"></div>
					</ul>
				</div>
				<div class="button-group">
					<g:hiddenField name="businessHours.endTimePeriod"
						class="settings-business-hours-end-period-input"
						value="${loggedInUser?.profile?.businessHours?.endTimePeriod?.key}" />
					<button type="button" class="settings-dropdown-btn hours-pm"
						data-toggle="dropdown">
						${loggedInUser?.profile?.businessHours?.endTimePeriod?.key}
					</button>
					<ul
						class="dropdown-menu outer-noscroll settings-dropdown-menu hours-am">
						<div class="inner-noscroll">
							<g:each in="${org.ravishingme.BusinessHours.Period.values()}"
								var="businessHoursEndTimePeriod">
								<li data-value="${businessHoursEndTimePeriod?.key}"
									class="${businessHoursEndTimePeriod?.key == loggedInUser?.profile?.businessHours?.endTimePeriod?.key ? 'selected' : ''}"><a>
										${businessHoursEndTimePeriod?.key}
								</a></li>
							</g:each>
						</div>
					</ul>
				</div>
			</div>
			<!-- /.row -->
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
				url="[controller:'profile', action:'updateSettings']"
				value="Save"
				before="if(!validateArtistProfileSettingsForm()) return false;"
				onSuccess="displaySuccessMessage()" />
		</div>
	</div>
	<!-- /.settings footer -->
</g:form>
<!-- /.form -->

