<div id="search-filters" class="container">
	<div class="row filters">
		<div class="filter-wrapper">
			<div class="col-md-4 travel-filter">
				<div class="button-group">
					<button type="button" class="dropdown-filter-btn" data-toggle="dropdown">Travel<span class="drp-caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="#">Yes</a></li>
						<li class="second"><a href="#">No</a></li>
						<g:submitToRemote class="btn btn-default filter-search-btn" url="[controller:'search', action:'search']" update="search-results" value="Search"/>
          			</ul>
				</div>
				<!-- /.button group -->
			</div>
			<!-- /.col -->
			<div class="col-md-4 makeup-filter">
				<div class="button-group dropdown-scroll">
					<button type="button" class="dropdown-filter-btn"
						data-toggle="dropdown">
						Bridal Makeup Range<span  class="drp-caret"></span>
					</button>
					<ul class="filter-header-checkboxes dropdown-menu scrollable-menu">
						<li><input type="checkbox" name="makeup"
							value="Upto RS. 5,000" data-label="Upto RS. 5,000" /></li>
						<li><input type="checkbox" name="makeup"
							data-label="Upto RS. 10,000" /></li>
						<li><input type="checkbox" name="makeup"
							data-label="Upto RS. 15,000" /></li>
						<li><input type="checkbox" name="makeup"
							data-label="Upto RS. 20,000" /></li>
						<li><input type="checkbox" name="makeup"
							data-label="Upto RS. 25,000" /></li>
						<li><input type="checkbox" name="makeup"
							data-label="Upto RS. 30,000" /></li>
						<li><input type="checkbox" name="makeup"
							data-label="Upto RS. 35,000" /></li>
						<li><input type="checkbox" name="makeup"
							data-label="Upto RS. 40,000" /></li>
					</ul>
					<a href="#" class="filter-search-btn fixed-btn">Search</a>
				</div>
				<!-- /.button group -->
			</div>
			<!-- /.col -->
			<div class="col-md-4 cosmetics-filter">
				<div class="button-group dropdown-scroll">
					<button type="button" class="dropdown-filter-btn"
						data-toggle="dropdown">
						Cosmetics<span class="drp-caret"></span>
					</button>
					<ul class="filter-header-checkboxes dropdown-menu scrollable-menu"
						id="dropdown">
						<li><input type="checkbox" name="makeup"
							value="Upto RS. 5,000" data-label="Upto RS. 5,000" /></li>
						<li><input type="checkbox" name="makeup"
							data-label="Upto RS. 10,000" /></li>
						<li><input type="checkbox" name="makeup"
							data-label="Upto RS. 15,000" /></li>
						<li><input type="checkbox" name="makeup"
							data-label="Upto RS. 20,000" /></li>
						<li><input type="checkbox" name="makeup"
							data-label="Upto RS. 25,000" /></li>
						<li><input type="checkbox" name="makeup"
							data-label="Upto RS. 30,000" /></li>
						<li><input type="checkbox" name="makeup"
							data-label="Upto RS. 35,000" /></li>
						<li><input type="checkbox" name="makeup"
							data-label="Upto RS. 40,000" /></li>
					</ul>
					<a href="#" class="filter-search-btn fixed-btn">Search</a>
				</div>
				<!-- /.button group -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.wrapper -->
	</div>
	<!-- /.row -->
</div>
<!-- /.container -->