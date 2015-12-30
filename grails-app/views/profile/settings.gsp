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
                  <div id="user-favorites" class="tab-pane fade">
                     <h2 class="settings-header">List of your favorite artists</h2>
                     <div class="row favorites-content">
                        <div class="col-md-6 fav-col">
                           <a href="profile.html">
                              <asset:image src="user-fav.png" class="img-circle" alt=""/>
                           </a>
                           <a href="profile.html#contact">Shweta Shidhore</a>
                        </div>
                        <!-- /.col -->
                        <div class="col-md-6 fav-col right">
                           <div class="fav-phone">123-345-7890</div>
                           <div class="fav-inquiry"><a href="profile.html#contact">Inquiry</a></div>
                           <asset:image src="heart-orange.png" alt="" class="fav-heart" />
                        </div>
                        <!-- /.col -->
                        <div class="col-md-6 fav-col">
                           <a href="profile.html">
                              <asset:image src="user-fav.png" class="img-circle" alt=""/>
                           </a>
                           <a href="profile.html#contact">Shweta Shidhore</a>
                        </div>
                        <!-- /.col -->
                        <div class="col-md-6 fav-col right">
                           <div class="fav-phone">123-345-7890</div>
                           <div class="fav-inquiry"><a href="profile.html#contact">Inquiry</a></div>
                           <asset:image src="heart-orange.png" alt="" class="fav-heart" />
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
                  </div>
                  <!-- /.User Favorites tab -->
                  <!-- User Display Pic Tab -->
                  <div id="user-display-pic" class="tab-pane fade">
                     <h2 class="settings-header">Upload your ravishing profile picture</h2>
                     <div class="row">
                        <div class="col-md-12 user-profile-pic-content">
                           <asset:image src="http://placehold.it/200x200" alt="Profile Picture" class="profile-photo" />
                           <a href="#">Upload a profile picture / change picture</a>
                        </div>
                        <!-- /.col -->
                     </div>
                     <!-- /.row -->     
                     <div class="row">
                        <div class="col-md-4 settings-label">
                        </div>
                        <!-- /.col -->
                        <div class="col-md-8 settings-input">
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
                  </div>
                  <!-- /.User Display Pic tab -->
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