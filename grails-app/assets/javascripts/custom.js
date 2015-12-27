$(document).ready(function() {
    
    /* Add/Remove Active Class */
    $("ul.second-nav li").click(function() {  
        $(this).addClass('selected').siblings().removeClass('selected');
    });

    /* Smooth Scrolling Effect */
    $(document).on('click', '.second-nav a', function(e) {
       e.preventDefault();
       $('html, body').animate({
            scrollTop: $( $.attr(this, 'href') ).offset().top}, 500);
    })

});

/* Custom Checkboxes & Radio Buttons */
$('.settings-input input[type="checkbox"]').each(function(){
    $(this).prettyCheckable();
 });

$('.settings-input input[type="radio"]').each(function(){
    $(this).prettyCheckable();
 });

$(".search-header-checkboxes input[type='checkbox']").each(function(){
    $(this).prettyCheckable();
});

$(".filter-header-checkboxes input[type='checkbox']").each(function(){
    $(this).prettyCheckable();
});

$('.filter-checkboxes label, .filter-header-checkboxes').click(function(e) {
     e.stopPropagation();
});

$('.search-header-checkboxes label, .search-header-checkboxes').click(function(e) {
    e.stopPropagation();
    
    var checkedValues = $('.search-header-checkboxes input:checkbox:checked').map(function() {
        return $(this).data("label");
    }).get();
    
    
    console.log("Checked: " + checkedValues.join(', '));
    
    $(".sh-search .dropdown-search-btn, .home-content .dropdown-search-btn").text(checkedValues.join(', '));
});


$('.travel-filter ul.dropdown-menu li a').click(function(e) {
    e.stopPropagation();
    
    // If this isn't already active
    if (!$(this).hasClass("active")) {
        // Remove the class from anything that is active
        $(".travel-filter ul.dropdown-menu li a.active").removeClass("active");
        // And make this active
        $(this).addClass("active");
    }
    $(".travel-filter .filter-travel-input").val($(this).text());
});


/* Change Dropdown Buttons Text */
$(function(){
      $(".home-city .dropdown-menu li, .sh-city .dropdown-menu li").click(function(){
          $(".dropdown-city-btn").text($(this).text());
          $(".dropdown-city-btn").val($(this).val());
          $(".home-city .dropdown-menu li a, .sh-city .dropdown-menu li a").removeClass("selected");
          $(this).addClass("selected");
      });
});

$(function(){
      $(".home-city .dropdown-menu li").click(function(){
          $(".dropdown-city-btn").text($(this).text());
          $(".dropdown-city-btn").val($(this).val());
          $(".home-city .dropdown-menu li").removeClass("selected");
          $(this).addClass("selected");
          $(".home-city .home-city-input").val($(this).val());
      });
});

$(function(){
      $(".settings-dropdown-city li").click(function(){
          $(".settings-dropdown-btn.city").text($(this).text());
          $(".settings-dropdown-btn.city").val($(this).text());
          $(".settings-dropdown-city li").removeClass("selected");
          $(this).addClass("selected");
      });
});

$(function(){
      $(".settings-dropdown-state li").click(function(){
          $(".settings-dropdown-btn.state").text($(this).text());
          $(".settings-dropdown-btn.state").val($(this).text());
          $(".settings-dropdown-state li").removeClass("selected");
          $(this).addClass("selected");
      });
});

$(function(){
      $(".dropdown-menu.outer-noscroll.settings-dropdown-hours-am li").click(function(){
          $(".settings-dropdown-btn.am").text($(this).text());
          $(".settings-dropdown-btn.am").val($(this).text());
          $(".dropdown-menu.outer-noscroll.settings-dropdown-hours-am li").removeClass("selected");
          $(this).addClass("selected");
      });
});

$(function(){
      $(".dropdown-menu.outer-noscroll.settings-dropdown-hours-pm li").click(function(){
          $(".settings-dropdown-btn.pm").text($(this).text());
          $(".settings-dropdown-btn.pm").val($(this).text());
          $(".dropdown-menu.outer-noscroll.settings-dropdown-hours-pm li").removeClass("selected");
          $(this).addClass("selected");
      });
});

$(function(){
      $(".dropdown-menu.outer-noscroll.settings-dropdown-menu.hours-am1 li").click(function(){
          $(".settings-dropdown-btn.hours-am").text($(this).text());
          $(".settings-dropdown-btn.hours-am").val($(this).text());
          $(".dropdown-menu.outer-noscroll.settings-dropdown-menu.hours-am1 li").removeClass("selected");
          $(this).addClass("selected");
      });
});

$(function(){
      $(".dropdown-menu.outer-noscroll.settings-dropdown-menu.hours-am li").click(function(){
          $(".settings-dropdown-btn.hours-pm").text($(this).text());
          $(".settings-dropdown-btn.hours-pm").val($(this).text());
          $(".dropdown-menu.outer-noscroll.settings-dropdown-menu.hours-am li").removeClass("selected");
          $(this).addClass("selected");
      });
});

$(function(){
      $(".sh-city .dropdown-menu.outer-noscroll li").click(function(){
          $(".dropdown-city-btn").text($(this).text());
          $(".dropdown-city-btn").val($(this).text());
          $(".sh-city .dropdown-menu.outer-noscroll li").removeClass("selected");
          $(this).addClass("selected");
      });
});


$('.cosmetics-filter .dropdown-scroll').on('show.bs.dropdown', function () {
    $(".cosmetics-filter .filter-search-btn.fixed-btn").show();
});

$('.cosmetics-filter .dropdown-scroll').on('hide.bs.dropdown', function () {
    $(".cosmetics-filter .filter-search-btn.fixed-btn").hide();
});

$('.makeup-filter .dropdown-scroll').on('show.bs.dropdown', function () {
    $(".makeup-filter .filter-search-btn.fixed-btn").show();
});

$('.makeup-filter .dropdown-scroll').on('hide.bs.dropdown', function () {
    $(".makeup-filter .filter-search-btn.fixed-btn").hide();
});

$('.makeup-filter ul.dropdown-menu li a').click(function(e) {
	e.stopPropagation();

	// If this isn't already active
	if (!$(this).hasClass("active")) {
		// Remove the class from anything that is active
		$(".makeup-filter ul.dropdown-menu li a.active").removeClass("active");
		// And make this active
		$(this).addClass("active");
	}
	$(".makeup-filter .filter-makeup-range-input").val($(this).data("range"));
});

$(function(){
	$(".makeup-filter .dropdown-menu li").click(function(){
		$(".makeup-filter .filter-makeup-range-input").val($(this).val());
	});
});

/* Settings Menu */
$("input[name='artist']").change(function(){
    if($(this).val() == 'Yes'){
        $(".artist-menu-item").show();
        $(".user-menu-item").hide();
        $(".whatsapp-msg").show();
    } else{
        $(".artist-menu-item").hide();
        $(".user-menu-item").show();
        $(".whatsapp-msg").hide();
    }
});

/* Change Heart Image on Favorites Settings */
$('img.fav-heart').on({
    'click': function(){
        var src = ($(this).attr('src') === 'img/heart-orange.png')
            ? 'img/heart-gray.png'
            : 'img/heart-orange.png';
         $(this).attr('src', src);
    }
});

$('img.heart-img').on({
    'click': function(){
        var src = ($(this).attr('src') === 'img/heart-orange.png')
            ? 'img/heart-gray.png'
            : 'img/heart-orange.png';
         $(this).attr('src', src);
    }
});


/* Custom Form Validation */
$(".save-btn").click(function(){
    $(".settings-form").validator('validate')
});


$("ul.dropdown-menu.outer-noscroll.settings-dropdown-city li").click(function() {
    var value = $(this).text();
    
    var isValid = (value !== 'City')
    
    if (isValid) {
        $(".city-dropdown .help-block.with-errors").text("");
    }
    
});  

$("ul.dropdown-menu.outer-noscroll.settings-dropdown-state li").click(function() {
    var value = $(this).text();
    
    var isValid = (value !== 'State')
    
    if (isValid) {
        $(".state-dropdown .help-block.with-errors").text("");
    }
    
}); 

$(".save-btn").click(function(event) {
    
    /** Location Validation **/
    var value = $(".settings-dropdown-btn.city").text();
    var isValid = (value !== 'City')
    
    if (!isValid) {
        $(".city-dropdown .help-block.with-errors").text("Please select your city");
        event.preventDefault();
    } else {
        $(".city-dropdown .help-block.with-errors").text("");
    }
    
    var value = $(".settings-dropdown-btn.state").text();
    var isValid = (value !== 'State')
    
    if (!isValid) {
        $(".state-dropdown .help-block.with-errors").text("Please select your state");
        event.preventDefault();
    } else {
        $(".state-dropdown .help-block.with-errors").text("");
    }
    
    /** Radio Button Validation **/
    if ($('#artist-yes').is(':checked') || $('#artist-no').is(':checked')) {  
        $(".artist-container .help-block.with-errors").text("");
    }else{
        $(".has-radio .help-block.with-errors").text("Please make a selection.");
        event.preventDefault();
    }
    
    /** Profile Validation **/
    if ($('#travel-yes').is(':checked') || $('#travel-no').is(':checked')) {  
        $(".travel-container .help-block.with-errors").text("");
    }else{
        $(".travel-container .help-block.with-errors").text("Please make a selection.");
        event.preventDefault();
    }
    
    checkChecked('.settings-form');
    checkCheckeda('.settings-form');
    
    if(!$(".service-checkbox").prop('checked')){
      $(".services.help-block.with-errors").text("Please select at least one.");
      event.preventDefault();
    }

});

/* Clear Radio Error */
$(".clearfix.prettyradio.labelright.blue").click(function(){
    $(".has-radio .help-block.with-errors").text("");
});

$(".clearfix.prettycheckbox.labelright.cosmetics-check.blue").click(function(){
        $(".cosmetics.help-block.with-errors").text("");
});

$(".clearfix.prettycheckbox.labelright.services-check.blue").click(function(){
    $(".services.help-block.with-errors").text("");
});


/* Check if checkboxes are checked */
function checkChecked(formname) {
    var anyBoxesChecked = false;
    $('.cos-checkbox').each(function() {
        if ($(this).prop('checked')) {
            anyBoxesChecked = true;
        }
    });
 
    if (anyBoxesChecked == false) {
      $(".cosmetics.help-block.with-errors").text("Please select at least one.");
      event.preventDefault();  
    } 
}

/* Check if checkboxes are checked */
function checkCheckeda(formname) {
    var anyBoxesChecked = false;
    $('.service-checkbox').each(function() {
        if ($(this).prop('checked')) {
            anyBoxesChecked = true;
        }
    });
 
    if (anyBoxesChecked == false) {
      $(".services.help-block.with-errors").text("Please select at least one.");
      event.preventDefault();  
    } 
}





