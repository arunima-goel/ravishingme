<!DOCTYPE html>
<html lang="en">
   <head>
      <meta name="layout" content="main"/>
   </head>
   <body>
      <!-- Page Content -->
      <div id="home-wrapper">
         <asset:image class="home-bg" alt="home" src="home_bg.png" />
         <div class="container home-content">
            <g:render template="/templates/searchForm"/>
         </div>
         <!-- Home Content Container -->
      </div>
      <!-- /Home Wrapper -->
      <!-- Callout -->
      <div class="home-callout container">
         <div class="row">
            <h3>Be Ravishing,
               <span>Find and contact beauty professionals near you<span>
            </h3>
            <hr/>
         </div>
         <!-- /Row -->
      </div>
      <!-- Signup Modal -->
      <div id="signup" class="modal fade" role="dialog">
         <div class="modal-dialog">
            <button class="modal-close" data-dismiss="modal"></button>
            <!-- Modal content-->
            <div class="modal-content text-center">
               <div class="modal-header">
                  <h4 class="modal-title">Create your ravishing account.</h4>
                  <h4>It's <span>Free</span></h4>
               </div>
               <div class="modal-body">
                  <oauth:connect provider="facebook" id="facebook-connect-link" class="btn btn-block btn-social btn-facebook"><span class="fa fa-5x fa-facebook"></span>Sign up with Facebook</oauth:connect>
                  <p>We will not post anything without your permission</p>
               </div>
               <div class="signup-terms">
                  <p>By clicking "sign up", you confirm that you accept</p>
                  <p> our <a href="#">Terms of service</a> and <a href="#">Privacy Policy</a>.</p>
               </div>
               <div class="modal-footer">
                  <h4>
                  Already a member? 
                  <oauth:connect provider="facebook" id="facebook-connect-link">Login</oauth:connect>
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
    
      <!-- Custom JS -->
      <asset:javascript src="custom.js"/>
   </body>
</html>