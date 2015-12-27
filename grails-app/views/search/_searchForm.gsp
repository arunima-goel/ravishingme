<g:form controller="search">
	<div class="row sh-inner">
	   <div class="col-md-5 col-md-offset-1 sh-search">
	      <div class="button-group">
	         <div class="drp-caret"></div>
	         <button type="button" class="dropdown-search-btn" data-toggle="dropdown">Bridal Makeup</button>
	         <ul class="search-header-checkboxes dropdown-menu outer-noscroll">
	            <div class="inner-noscroll">
	               <g:each in="${org.ravishingme.Service.list()}" var="service">
	                  <li><input type="checkbox" name="services" value="${service.id}" data-label="${service.name}" /></li>
	               </g:each>
	            </div>
	            <div class="scroll-opac"></div>
	         </ul>
	      </div>
	   </div>
	   <div class="col-md-5 sh-city">
	      <div class="input-group">
	         <div class="button-group">
	            <div class="drp-caret"></div>
	            <g:hiddenField name="city" class="home-city-input" />
			    <input type="button" class="dropdown-city-btn" data-toggle="dropdown"></input>
	            <ul class="dropdown-menu outer-noscroll">
	               <div class="inner-noscroll">
	                  <g:each in="${org.ravishingme.City.list()}" var="city"><li value="${city.id}"><a>${city.name}</a></li>
	                  </g:each>
	               </div>
	               <div class="scroll-opac"></div>
	            </ul>
	         </div>
	         <span class="input-group-btn">
	            <g:actionSubmit class="btn btn-default home-btn" action="index" value="Search" />
             </span>
	      </div>
	      <!-- /input-group -->
	   </div>
	   <!-- /sh city row -->
	</div>
	<!-- /Search Bar Row -->
	</g:form>