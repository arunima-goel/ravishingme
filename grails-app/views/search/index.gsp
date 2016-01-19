<!DOCTYPE html>
<html lang="en">
   <head>
      <meta name="layout" content="main"/>
   </head>
   <body>
      <!-- Search Header -->
      <div class="search-header">
         <asset:image src="search_bg.png" alt="search" />
         <div class="container">
            <g:render template="/search/searchForm"/>
         </div>
         <!-- /container -->
      </div>
      <!-- Search Header -->
      <!-- Search Filters -->
      <g:render template="/search/searchFilters"/>
      
      <!-- Search Results --> 
      <g:render template="/search/searchResults"/>
      
      <!-- jQuery -->
      <asset:javascript src="jquery.js"/>
     
      <!-- Bootstrap Core JavaScript -->
      <asset:javascript src="bootstrap.min.js"/>
           
      <!-- Custom Checkboxes -->
      <asset:javascript src="prettyCheckable.min.js"/>
    
      <!-- Custom JS -->
      <asset:javascript src="custom.js"/>
   </body>
</html>