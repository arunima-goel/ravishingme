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
					<button type="button" class="dropdown-filter-btn" data-toggle="dropdown">Bridal Makeup Range<span class="drp-caret"></span></button>
					<ul class="dropdown-menu scrollable-menu">
                       <li><a href="#">Upto Rs. 5,000</a></li>
                       <li><a href="#">Upto Rs. 10,000</a></li>
                       <li><a href="#">Upto Rs. 15,000</a></li>
                       <li><a href="#">Upto Rs. 20,000</a></li>
                       <li><a href="#">Upto Rs. 25,000</a></li>
                       <li><a href="#">Upto Rs. 30,000</a></li>
                       <li><a href="#">Upto Rs. 35,000</a></li>
                       <li><a href="#">Upto Rs. 40,000</a></li>
                       <li class="second"><a href="#">> Rs. 40,000</a></li>
                    </ul>
					<g:submitToRemote class="btn btn-default filter-search-btn fixed-btn" url="[controller:'search', action:'search']" update="search-results" value="Search"/>
        		</div>
				<!-- /.button group -->
			</div>
			<!-- /.col -->
			<div class="col-md-4 cosmetics-filter">
				<div class="button-group dropdown-scroll">
					<button type="button" class="dropdown-filter-btn" data-toggle="dropdown">Cosmetics<span class="drp-caret"></span></button>
					<ul class="filter-header-checkboxes dropdown-menu scrollable-menu" id="dropdown">
					   <g:each in="${org.ravishingme.CosmeticBrand.list()}" var="cosmeticBrand" >
                          <li><input type="checkbox" name="cosmeticBrands" value="${cosmeticBrand.id}" data-label="${cosmeticBrand.name}"/></li>
                       </g:each>
                    </ul>
					<g:submitToRemote class="btn btn-default filter-search-btn fixed-btn" url="[controller:'search', action:'search']" update="search-results" value="Search"/>
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