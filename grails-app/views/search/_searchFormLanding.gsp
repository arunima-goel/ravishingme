<g:form controller="search">
   <div class="row">
      <div class="col-md-5 col-md-offset-1 col-xs-12 home-search">
         <span class="drp-caret"></span>
         <div class="button-group">
            <button type="button" class="dropdown-search-btn" data-toggle="dropdown"></button>
            <ul class="search-header-checkboxes dropdown-menu outer-noscroll">
               <div class="inner-noscroll">
                  <g:each in="${org.ravishingme.Service.list()}" var="service" >
                     <li><input type="checkbox" name="services" value="${service.id}" data-label="${service.name}"/></li>
                  </g:each>
               </div>
               <div class="scroll-opac"></div>
            </ul>
         </div>
      </div>
      <div class="col-md-5 col-xs-12 home-city">
         <div class="input-group">
            <div class="drp-caret"></div>
            <div class="button-group">
               <g:hiddenField name="city" class="home-city-input" />
			   <button type="button" class="dropdown-city-btn" data-toggle="dropdown">Delhi</button>
               <ul class="dropdown-menu outer-noscroll">
                  <div class="inner-noscroll">
                     <g:each in="${org.ravishingme.City.list()}" var="city" >
                        <li value="${city.id}"><a>${city.name}</a></li>
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
      <!-- /home-city row -->
   </div>
   <!-- /Search Bar Row -->
</g:form>