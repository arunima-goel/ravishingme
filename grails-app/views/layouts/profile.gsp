<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="description" content="Ravishing.me">
      <meta name="author" content="Arunima Goel">
      <title>Ravishing.me</title>
      <!-- Bootstrap Core CSS -->
      <asset:stylesheet src="bootstrap.min.css" />
      <!-- Font Awesome CSS -->
      <asset:stylesheet
         href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
      <!-- Custom Checkboxes -->
      <asset:stylesheet src="prettyCheckable.css" />
      <!-- Custom CSS -->
      <asset:stylesheet src="style.css" />
	  
	  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
      <!--- Google Maps -->
      <script src="https://maps.googleapis.com/maps/api/js"></script>
      <script>
         function init_map() {
         
         var var_location = new google.maps.LatLng(28.535305, 77.241679);
         
         var var_mapoptions = {
           center: var_location,
           zoom: 14,
           mapTypeId: google.maps.MapTypeId.ROADMAP,
           mapTypeControl: false,
           panControl:false,
           rotateControl:false,
           streetViewControl: false,
           scrollwheel: false,    
         };
         
         var var_pin = 'img/map-marker.png';
         var var_marker = new google.maps.Marker({
         position: var_location,
         map: var_map,
         icon: var_pin,
         title:"Greater Kailash 2"});
         
         var var_map = new google.maps.Map(document.getElementById("map-canvas"),
             var_mapoptions);
         
         var_marker.setMap(var_map);	
         
         }
         
         google.maps.event.addDomListener(window, 'load', init_map);
      </script>
   </head>
   <g:render template="/layouts/profilenavbar" />
   <g:layoutBody />
   <g:render template="/layouts/footer" />
</html>