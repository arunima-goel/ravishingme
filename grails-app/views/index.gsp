<head>
    <title>Welcome to Grails</title>
</head>

<body>
<oauth:disconnected provider="facebook">
 <span class="vert hidden-xs">&vert;</span>
 <li>
     <oauth:connect provider="facebook" id="facebook-connect-link" class="facebookLogin">login</oauth:connect>
 </li>
 <span class="vert hidden-xs">&vert;</span>
 <li>
     <oauth:connect provider="facebook" id="facebook-connect-link" class="facebookLogin">sign up</oauth:connect>
 </li>
</oauth:disconnected>
<oauth:connected provider="facebook">
<span class="vert hidden-xs">&vert;</span>
<li>
    <g:link controller="user" action="logout" id="facebook">Logout</g:link>
</li>
 </oauth:connected>
</body>
</html>