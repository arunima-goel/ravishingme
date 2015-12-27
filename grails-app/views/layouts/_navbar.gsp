<!--Header_section-->
<header id="header-wrapper">
   <div class="container-fluid">
      <!-- Navigation -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
         <div class="container-fluid nav-container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
               <g:link mapping="landingPage" class="navbar-brand">
                  <asset:image class="logo" src="logo.png" alt="Ravishing.me" />
               </g:link>
               <button type="button" class="navbar-toggle" data-toggle="collapse"
                  data-target="#bs-example-navbar-collapse-1">
               <span class="sr-only">Toggle navigation</span> <span
                  class="icon-bar"></span> <span class="icon-bar"></span> <span
                  class="icon-bar"></span>
               </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse-container">
               <div class="collapse navbar-collapse"
                  id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav navbar-right">
                     <li>
                        <g:link mapping="about">About</g:link>
                     </li>
                     <li>
                        <g:link mapping="faqs">FAQs</g:link>
                     </li>
                     <oauth:disconnected provider="facebook">
                        <li>
                           <oauth:connect provider="facebook"
                              id="facebook-connect-link">Sign in</oauth:connect>
                        </li>
                        <li>
                           <oauth:connect provider="facebook"
                              id="facebook-connect-link" class="signup-highlight" href="#"
                              data-toggle="modal" data-target="#signup">Sign up</oauth:connect>
                        </li>
                     </oauth:disconnected>
                     <oauth:connected provider="facebook">
                        <li>
                           <div class="dropdown">
                              <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                                 <asset:image
                                    src="profile.jpg" class="profile-pic" alt="Profile" />
                              </a>
                              <ul class="dropdown-menu arrow_box">
                                 <li>
                                    <g:link mapping="profileView"
                                       params="[username: loggedInUser.profile.username]">Profile</g:link>
                                 </li>
                                 <li><g:link mapping="settings">Settings</g:link></li>
                                 <li><g:link controller="user" action="logout" id="facebook">Logout</g:link></li>
                              </ul>
                           </div>
                        </li>
                     </oauth:connected>
                  </ul>
               </div>
            </div>
            <!-- /.navbar-collapse -->
         </div>
         <!-- /.container -->
      </nav>
   </div>
   <!--- Header Container -->
</header>
<!--Header_section-->