<!DOCTYPE html>
<html lang="en" style="overflow-y: scroll">
   <head>
      <meta name="layout" content="main"/>
   </head>
   <body class="settings-body">
      <!-- Settings -->
      <div id="settings">
         <div class="container">
            <div class="row">
               <div class="col-md-4 menu-container">
                  <ul class="settings-menu">
                     <li class="active"><a data-toggle="pill" href="#account-basics">Account Basics</a></li>
                     <!-- Artist Menu -->
                     <g:set var="displayTypeArtist" value="${loggedInUser?.profile?.isArtist.equals(true) ? 'list-item' : 'none'}"/>
                     <li class="artist-menu-item" style="display:${displayTypeArtist}"><a data-toggle="pill" href="#profile-settings">Profile</a></li>
                     <li class="artist-menu-item" style="display:${displayTypeArtist}"><a data-toggle="pill" href="#display-pic">Display Pic</a></li>
                     <li class="artist-menu-item" style="display:${displayTypeArtist}"><a data-toggle="pill" href="#social-networks-settings">Social Networks</a></li>
                     <li class="artist-menu-item" style="display:${displayTypeArtist}"><a data-toggle="pill" href="#awards-settings">Awards & Affiliations</a></li>
                     <li class="artist-menu-item" style="display:${displayTypeArtist}"><a data-toggle="pill" href="#favorites-settings">Favorites</a></li>
                     <!-- User Menu -->
                     <g:set var="displayTypeUser" value="${loggedInUser?.profile?.isArtist.equals(false) ? 'list-item' : 'none'}"/>
                     <li class="user-menu-item" style="display:${displayTypeUser}"><a data-toggle="pill" href="#user-preferences">Preferences</a></li>
                     <li class="user-menu-item" style="display:${displayTypeUser}"><a data-toggle="pill" href="#user-favorites">Favorites</a></li>
                     <li class="user-menu-item" style="display:${displayTypeUser}"><a data-toggle="pill" href="#user-display-pic">Display Pic</a></li>
                  </ul>
               </div>
               <!-- /.col -->
               <div class="col-md-8 settings-content tab-content">
                  <!-- Artist Tabs -->
                  
                  <!-- Account Basics tab -->
                  <g:render template="/profile/accountBasics"/>
                  
                  <!-- Profile tab -->
                  <g:render template="/profile/artistProfile"/>
                  
                  <!-- Pictures tab -->
                  <g:render template="/profile/pictures"/>
                  
                  <!-- Social Networks -->
                  <g:render template="/profile/socialNetworks"/>
                  
                  <!-- Awards and Affiliations -->
                  <g:render template="/profile/awardsAndAffiliations"/>
                  
                  <!-- Favorites -->
                  <g:render template="/profile/favorites"/>
                  
                  <!-- /Artist Tabs -->
                 
                  <!-- User Tabs -->
                  <!--- User Preferences Tab -->
                  <g:render template="/profile/userPreferences"/>
                  
                  <!-- User Favorites Tab -->
                  <g:render template="/profile/favorites"/>
                  
                  <!-- User Display Pic Tab -->
                  <g:render template="/profile/pictures"/>
                  
                  <!-- /User Tabs -->
               </div>
               <!-- /.tab content -->
            </div>
            <!-- /.row -->
         </div>
         <!-- /.container -->
      </div>
      <!-- /.settings -->
      <!-- Warning Modal -->
      <div id="warning-modal" class="modal fade" role="dialog">
         <div class="modal-dialog">
            <button class="modal-close" data-dismiss="modal"></button>
            <!-- Modal content-->
            <div class="modal-content text-center">
               <div class="modal-header">
                  <h4 class="modal-title">Are you sure you want to leave the page?</h4>
               </div>
               <div class="modal-body">
                  <p>Hey there! It looks like you're in the middle of completing your profile and you haven't saved all your content.</p>
                  <p class="save-before">Save before you go!</p>
               </div>
               <div class="modal-footer">
                  <a href="#" class="leave-btn">Leave</a>
                  <a href="#" class="stay-btn">Stay</a>
               </div>
            </div>
         </div>
      </div>
      
      <!-- jQuery -->
      <asset:javascript src="jquery.js"/>
    
      <!-- Bootstrap Core JavaScript -->
      <asset:javascript src="bootstrap.min.js"/>
           
      <!-- Custom Checkboxes -->
      <asset:javascript src="prettyCheckable.min.js"/>

      <!-- Form Validation -->
      <asset:javascript src="validator.js"/>
    
      <!-- Custom JS -->
      <asset:javascript src="custom.js"/>
   </body>
</html>