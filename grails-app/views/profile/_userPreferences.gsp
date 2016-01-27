<h2 class="settings-header">Select your preferences to get better
	results.</h2>
<g:form class="settings-form" data-toggle="validator">
	<g:hiddenField name="username"
		value="${loggedInUser?.profile?.username}" />
	<g:hiddenField name="id" value="${loggedInUser?.profile?.id}" />
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="cosmetics">Cosmetic Brands*</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input">
			<ul class="user-cosmetics">
				<g:each
					in="${org.ravishingme.CosmeticBrand.list(sort: 'id', order: 'asc')}"
					var="cosmeticBrand" status="i">
					<li><input type="checkbox" name="preferredCosmeticBrands"
						class="user-cos-checkbox" value="${cosmeticBrand.id}"
						data-label="${cosmeticBrand.name}"
						${loggedInUser?.profile?.preferredCosmeticBrands.contains(cosmeticBrand)?'checked':''} /></li>
				</g:each>
			</ul>
			<div class="help-block with-errors cosmetics"></div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label for="user-services">Services</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input">
			<ul class="user-services">
				<g:each
					in="${org.ravishingme.Service.list(sort: 'id', order: 'asc')}"
					var="service" status="i">
					<li><input type="checkbox" name="preferredServices"
						class="user-services" value="${service.id}"
						data-label="${service.name}"
						${loggedInUser?.profile?.preferredServices.contains(service)?'checked':''} /></li>
				</g:each>
			</ul>
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
				before="if(!validateUserPreferencesSettingsForm()) return false;"
				onSuccess="displaySuccessMessage()" />
		</div>
	</div>
	<!-- /.settings footer -->
</g:form>
