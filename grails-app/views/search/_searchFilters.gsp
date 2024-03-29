<g:form controller="search">
	<g:hiddenField name="city" value="${searchParams?.city}"/>
	<g:hiddenField name="services" value="${searchParams?.services}"/>
	<div id="search-filters" class="container">
		<div class="row filters">
			<div class="filter-wrapper">
				<div class="col-md-4 travel-filter">
					<div class="button-group">
						<button type="button" class="dropdown-filter-btn" data-toggle="dropdown">Travel<span class="drp-caret"></span>
						</button>
						<g:hiddenField name="travel" class="filter-travel-input" />
			   			<ul class="dropdown-menu">
							<li><a href="#">Yes</a></li>
							<li class="second"><a href="#">No</a></li>
							<g:submitToRemote class="btn btn-default filter-search-btn" url="[controller:'search', action:'search']" update="search-results" value="Filter"/>
	          			</ul>
					</div>
					<!-- /.button group -->
				</div>
				<!-- /.col -->
				<div class="col-md-4 makeup-filter">
					<div class="button-group dropdown-scroll">
						<button type="button" class="dropdown-filter-btn" data-toggle="dropdown">Bridal Makeup Range<span class="drp-caret"></span></button>
						<g:hiddenField name="makeupRange" class="filter-makeup-range-input" />
			   			<ul class="dropdown-menu scrollable-menu">
	                       <li><a href="#" data-range="5000">Upto Rs. 5,000</a></li>
	                       <li><a href="#" data-range="10000">Upto Rs. 10,000</a></li>
	                       <li><a href="#" data-range="15000">Upto Rs. 15,000</a></li>
	                       <li><a href="#" data-range="20000">Upto Rs. 20,000</a></li>
	                       <li><a href="#" data-range="25000">Upto Rs. 25,000</a></li>
	                       <li><a href="#" data-range="30000">Upto Rs. 30,000</a></li>
	                       <li><a href="#" data-range="35000">Upto Rs. 35,000</a></li>
	                       <li class="second"><a href="#" data-range="40000">Upto Rs. 40,000</a></li>
	                    </ul>
						<g:submitToRemote class="btn btn-default filter-search-btn fixed-btn" url="[controller:'search', action:'search']" update="search-results" value="Filter"/>
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
						<g:submitToRemote class="btn btn-default filter-search-btn fixed-btn" url="[controller:'search', action:'search']" update="search-results" value="Filter"/>
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
</g:form>