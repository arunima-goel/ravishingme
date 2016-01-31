<h2 class="settings-header">Add your awards and affiliations</h2>
<g:form class="settings-form" data-toggle="validator">
	<g:hiddenField name="username"
		value="${loggedInUser?.profile?.username}" />
	<g:hiddenField name="id" value="${loggedInUser?.profile?.id}" />
	<div class="row">
		<div class="col-md-4 settings-label">
			<label>Awards</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input">
			<textarea name="awards" rows="10" cols="66" placeholder="E.g. Best Wedding Makeup Artist 2015, Delhi">${loggedInUser?.profile?.awards}</textarea>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-4 settings-label">
			<label>Affiliations</label>
		</div>
		<!-- /.col -->
		<div class="col-md-8 settings-input">
			<textarea name="affiliations" rows="10" cols="66" placeholder="E.g. Lakme Salon">${loggedInUser?.profile?.affiliations}</textarea>
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
				onSuccess="displaySuccessMessage()" />
		</div>
	</div>
	<!-- /.settings footer -->
</g:form>
