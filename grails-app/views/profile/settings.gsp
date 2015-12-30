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
                  
                  <g:render template="/profile/accountBasics"/>
                  <!-- /.account basics tab content -->
                  
                  <g:render template="/profile/artistProfile"/>
                  <!-- /.profile settings tab -->
                  
                  <g:render template="/profile/pictures"/>
                  <!-- /.display-pic tab -->
                  
                  <g:render template="/profile/socialNetworks"/>
                  <!-- /.social netowrks -->
                  <div id="awards-settings" class="tab-pane fade">
                     <h2 class="settings-header">Add your social networks</h2>
                     <div class="row">
                        <div class="col-md-4 settings-label">
                           <label>Awards</label>
                        </div>
                        <!-- /.col -->
                        <div class="col-md-8 settings-input">
                           <textarea rows="10" cols="66"></textarea>
                        </div>
                        <!-- /.col -->
                     </div>
                     <!-- /.row -->
                     <div class="row">
                        <div class="col-md-4 settings-label">
                           <label>Afilliations</label>
                        </div>
                        <!-- /.col -->
                        <div class="col-md-8 settings-input">
                           <textarea rows="10" cols="66"></textarea>
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
                  <!-- Awards Settings -->
                  <div id="favorites-settings" class="tab-pane fade">
                     <h2 class="settings-header">List your favorite artists</h2>
                     <p class="fav-empty">Oops...your artist list is empty.</p>
                     <!-- Settings Footer -->
                     <div class="settings-footer">
                        <div class="form-btns pull-right">
                           <a href="#" class="cancel-btn">Cancel</a>
                           <button class="save-btn">Save</button>
                        </div>
                     </div>
                     <!-- /.settings footer -->
                  </div>
                  <!-- Favorites Settings -->
                  <!-- /Artist Tabs -->
                  <!-- User Tabs -->
                  <!--- User Preferences Tab -->
                  <div id="user-preferences" class="tab-pane fade">
                     <h2 class="settings-header">Select your preferences to get better results.</h2>
                     <div class="row">
                        <div class="col-md-4 settings-label">
                           <label for="cosmetics">Cosmetics*</label>
                        </div>
                        <!-- /.col -->
                        <div class="col-md-8 settings-input">
                           <ul class="user-cosmetics">
                              <li><input type="checkbox" name="cosmetics" data-label="Avon"/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="Blue Heaven"/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="Bobbi Brown"/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="Chamber"/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="Christian Dior"/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="Color Bar"/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="Elle 18"/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="Lakme"/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="Lancome"/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="L'Oreal Paris"/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="M.A.C."/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="Maybelline"/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="Miss Claire"/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="Nars"/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="O.P.I."/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="Oriflame"/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="Revlon"/></li>
                              <li><input type="checkbox" name="cosmetics" data-label="Vivianna"/></li>
                           </ul>
                        </div>
                        <!-- /.col -->
                     </div>
                     <!-- /.row -->     
                     <div class="row">
                        <div class="col-md-4 settings-label">
                           <label for="user-services">Services</label>
                        </div>
                        <!-- /.col -->
                        <div class="col-md-8 settings-input">
                           <ul class="user-services">
                              <li><input type="checkbox" name="services" data-label="Avon"/></li>
                              <li><input type="checkbox" name="services" data-label="Blue Heaven"/></li>
                              <li><input type="checkbox" name="services" data-label="Bobbi Brown"/></li>
                              <li><input type="checkbox" name="services" data-label="Chamber"/></li>
                              <li><input type="checkbox" name="services" data-label="Christian Dior"/></li>
                              <li><input type="checkbox" name="services" data-label="Color Bar"/></li>
                              <li><input type="checkbox" name="services" data-label="Elle 18"/></li>
                              <li><input type="checkbox" name="services" data-label="Lakme"/></li>
                              <li><input type="checkbox" name="services" data-label="Lancome"/></li>
                              <li><input type="checkbox" name="services" data-label="L'Oreal Paris"/></li>
                              <li><input type="checkbox" name="services" data-label="M.A.C."/></li>
                              <li><input type="checkbox" name="services" data-label="Maybelline"/></li>
                              <li><input type="checkbox" name="services" data-label="Miss Claire"/></li>
                              <li><input type="checkbox" name="services" data-label="Nars"/></li>
                              <li><input type="checkbox" name="services" data-label="O.P.I."/></li>
                              <li><input type="checkbox" name="services" data-label="Oriflame"/></li>
                              <li><input type="checkbox" name="services" data-label="Revlon"/></li>
                              <li><input type="checkbox" name="services" data-label="Vivianna"/></li>
                           </ul>
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
                  <!-- /.User Preferences tab -->
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