<div id="awards-settings" class="tab-pane fade">
	<h2 class="settings-header">Add your social networks</h2>
	<g:form class="settings-form" data-toggle="validator">
		<g:hiddenField name="username" value="${loggedInUser?.profile?.username}" />
		<g:hiddenField name="id" value="${loggedInUser?.profile?.id}" />
		<div class="row">
			<div class="col-md-4 settings-label">
				<label>Awards</label>
			</div>
			<!-- /.col -->
			<div class="col-md-8 settings-input">
				<textarea name="awards" rows="10" cols="66">
					${loggedInUser?.profile?.awards}
				</textarea>
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
				<textarea name="affiliations" rows="10" cols="66">
					${loggedInUser?.profile?.affiliations}
				</textarea>
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
		<!-- Settings Footer -->
		<div class="settings-footer">
			<div class="form-btns pull-right">
				<a href="" class="cancel-btn">Cancel</a>
				<g:submitToRemote class="save-btn"
					url="[controller:'profile', action:'update']" update="profileInfo"
					value="Save" />
			</div>
		</div>
		<!-- /.settings footer -->
	</g:form>
</div>