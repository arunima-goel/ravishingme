<div id="profile-settings" class="tab-pane fade">
	<g:hiddenField name="username" value="${loggedInUser?.profile?.username}" />
	<g:hiddenField name="id" value="${loggedInUser?.profile?.id}" />
	<h2 class="settings-header">Add some basic information to setup your profile</h2>
	<g:form class="settings-form" data-toggle="validator">
		<div class="row">
			<div class="col-md-4 settings-label">
				<label for="bio">Bio</label>
			</div>
			<!-- /.col -->
			<div class="col-md-8 settings-input form-group">
				<textarea name="aboutYou" rows="10" cols="66" maxlength="1000"></textarea>
				<div class="bio-msg">Maximum 1,000 characters</div>
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
				<input type="radio" name="travel" id="travel-yes" value="Yes"><label
					for="travel-yes" class="has-radio">Yes</label> <input type="radio"
					name="travel" id="travel-no" value="No"><label
					for="travel-no">No</label>
				<div class="help-block with-errors"></div>
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-md-4 settings-label">
				<label for="cosmetics">Cosmetics*</label>
			</div>
			<!-- /.col -->
			<div class="col-md-8 settings-input form-group cosmetics-group">
				<ul class="settings-checkboxes cosmetics">
					<li><input type="checkbox" name="cosmetics" data-label="Avon"
						data-customClass="cosmetics-check" class="cos-checkbox" /></li>
					<li><input type="checkbox" name="cosmetics"
						data-label="Blue Heaven" data-customClass="cosmetics-check"
						class="cos-checkbox" /></li>
					<li><input type="checkbox" name="cosmetics"
						data-label="Bobbi Brown" data-customClass="cosmetics-check"
						class="cos-checkbox" /></li>
					<li><input type="checkbox" name="cosmetics"
						data-label="Chamber" data-customClass="cosmetics-check"
						class="cos-checkbox" /></li>
					<li><input type="checkbox" name="cosmetics"
						data-label="Christian Dior" data-customClass="cosmetics-check"
						class="cos-checkbox" /></li>
					<li><input type="checkbox" name="cosmetics"
						data-label="Color Bar" data-customClass="cosmetics-check"
						class="cos-checkbox" /></li>
					<li><input type="checkbox" name="cosmetics"
						data-label="Elle 18" data-customClass="cosmetics-check"
						class="cos-checkbox" /></li>
					<li><input type="checkbox" name="cosmetics" data-label="Lakme"
						data-customClass="cosmetics-check" class="cos-checkbox" /></li>
					<li><input type="checkbox" name="cosmetics"
						data-label="Lancome" data-customClass="cosmetics-check"
						class="cos-checkbox" /></li>
					<li><input type="checkbox" name="cosmetics"
						data-label="L'Oreal Paris" data-customClass="cosmetics-check"
						class="cos-checkbox" /></li>
					<li><input type="checkbox" name="cosmetics"
						data-label="M.A.C." data-customClass="cosmetics-check"
						class="cos-checkbox" /></li>
					<li><input type="checkbox" name="cosmetics"
						data-label="Maybelline" data-customClass="cosmetics-check"
						class="cos-checkbox" /></li>
					<li><input type="checkbox" name="cosmetics"
						data-label="Miss Claire" data-customClass="cosmetics-check"
						class="cos-checkbox" /></li>
					<li><input type="checkbox" name="cosmetics" data-label="Nars"
						data-customClass="cosmetics-check" class="cos-checkbox" /></li>
				</ul>
				<div class="help-block with-errors cosmetics"></div>
				<div class="text-center settings-hint">
					<p>
						If you don't find a cosmetic of your choice, please <a
							href="about.html#contact">contact us</a>
					</p>
				</div>
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-md-4 settings-label">
				<label for="cosmetics">Services*</label>
			</div>
			<!-- /.col -->
			<div class="col-md-8 settings-input">
				<div class="row">
					<div class="col-md-6">
						<ul class="services-checkboxes">
							<li class="services-header">Add Services</li>
							<li><input type="checkbox" name="services" data-label="Avon"
								data-customClass="services-check" class="service-checkbox" /></li>
							<li><input type="checkbox" name="services"
								data-label="Blue Heaven" data-customClass="services-check"
								class="service-checkbox" /></li>
							<li><input type="checkbox" name="services"
								data-label="Bobbi Brown" data-customClass="services-check"
								class="service-checkbox" /></li>
							<li><input type="checkbox" name="services"
								data-label="Chamber" data-customClass="services-check"
								class="service-checkbox" /></li>
							<li><input type="checkbox" name="services"
								data-label="Christian Dior" data-customClass="services-check"
								class="service-checkbox" /></li>
							<li><input type="checkbox" name="services"
								data-label="Color Bar" data-customClass="services-check"
								class="service-checkbox" /></li>
							<li><input type="checkbox" name="services"
								data-label="Elle 18" data-customClass="services-check"
								class="service-checkbox" /></li>
							<li><input type="checkbox" name="services"
								data-label="Lakme" data-customClass="services-check"
								class="service-checkbox" /></li>
							<li><input type="checkbox" name="services"
								data-label="Lancome" data-customClass="services-check"
								class="service-checkbox" /></li>
						</ul>
						<div class="help-block with-errors services"></div>
					</div>
					<!-- /.col -->
					<div class="col-md-6">
						<ul class="service-prices-list">
							<li class="services-header price">Starting Price</li>
							<li>Rs. <input type="text" name="price" placeholder="1234" /></li>
							<li>Rs. <input type="text" name="price" placeholder="1234" /></li>
							<li>Rs. <input type="text" name="price" placeholder="1234" /></li>
							<li>Rs. <input type="text" name="price" placeholder="1234" /></li>
							<li>Rs. <input type="text" name="price" placeholder="1234" /></li>
							<li>Rs. <input type="text" name="price" placeholder="1234" /></li>
							<li>Rs. <input type="text" name="price" placeholder="1234" /></li>
							<li>Rs. <input type="text" name="price" placeholder="1234" /></li>
							<li>Rs. <input type="text" name="price" placeholder="1234" /></li>
						</ul>
					</div>
					<!-- //.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-md-4 settings-label">
				<label for="trial">Trial</label>
			</div>
			<!-- /.col -->
			<div class="col-md-8 settings-input has-radio">
				<div class="row">
					<div class="col-md-6">
						<input type="radio" name="travel" id="trial-comp"
							data-label="Complimentary">
					</div>
					<div class="col-md-6 pm-col">
						<input type="radio" name="travel" id="trial-paid"
							data-label="Paid">
					</div>
				</div>
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-md-4 settings-label">
				<label for="experience">Years Experience*</label>
			</div>
			<!-- /.col -->
			<div class="col-md-8 settings-input form-group">
				<input type="text" name="experience" id="experience"
					data-error="Please enter your years of experience. Numbers only."
					pattern="[0-9]{1,2}" required>
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
						<button type="button" class="settings-dropdown-btn am"
							data-toggle="dropdown">10:00</button>
						<ul
							class="dropdown-menu outer-noscroll settings-dropdown-hours-am">
							<div class="inner-noscroll">
								<li class="selected"><a>10:00</a></li>
								<li><a>10:30</a></li>
								<li><a>11:00</a></li>
								<li><a>11:30</a></li>
								<li><a>12:00</a></li>
								<li><a>12:30</a></li>
								<li><a>1:00</a></li>
							</div>
							<div class="scroll-opac"></div>
						</ul>
					</div>
					<div class="button-group">
						<button type="button" class="settings-dropdown-btn hours-am"
							data-toggle="dropdown">AM</button>
						<ul
							class="dropdown-menu outer-noscroll settings-dropdown-menu hours-am1">
							<div class="inner-noscroll">
								<li class="selected"><a>AM</a></li>
								<li><a>PM</a></li>
							</div>
						</ul>
					</div>
					<div class="button-group">
						<button type="button" class="settings-dropdown-btn pm"
							data-toggle="dropdown">10:00</button>
						<ul
							class="dropdown-menu outer-noscroll settings-dropdown-hours-pm">
							<div class="inner-noscroll">
								<li class="selected"><a>10:00</a></li>
								<li><a>10:30</a></li>
								<li><a>11:00</a></li>
								<li><a>11:30</a></li>
								<li><a>12:00</a></li>
								<li><a>12:30</a></li>
								<li><a>1:00</a></li>
							</div>
							<div class="scroll-opac"></div>
						</ul>
					</div>
					<div class="button-group">
						<button type="button" class="settings-dropdown-btn hours-pm"
							data-toggle="dropdown">AM</button>
						<ul
							class="dropdown-menu outer-noscroll settings-dropdown-menu hours-am">
							<div class="inner-noscroll">
								<li class="selected"><a>AM</a></li>
								<li><a>PM</a></li>
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
				<a href="" class="cancel-btn">Cancel</a>
				<button class="save-btn">Save</button>
			</div>
		</div>
		<!-- /.settings footer -->
	</g:form>
	<!-- /.form -->
</div>