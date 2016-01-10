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

    // Populate checkbox values on page load
    var checkedValues = $('.search-header-checkboxes input:checkbox:checked').map(function() {
        return $(this).data("label");
    }).get();
    
    
    console.log("Checked: " + checkedValues.join(', '));
    
    $(".sh-search .dropdown-search-btn, .home-content .dropdown-search-btn").text(checkedValues.join(', '));
});

/* Custom Checkboxes & Radio Buttons */
$('.settings-input [type="checkbox"]').each(function(){
	$(this).prettyCheckable();
 });

$('.settings-input input[type="radio"]').each(function(){
    $(this).prettyCheckable();
 });

$(".search-header-checkboxes input[type='checkbox']").each(function(){
	var prev_services_search = $('.dropdown-search-btn').data('prev-services-search');
	if (prev_services_search) {
		if ($.inArray($(this).val(), prev_services_search.split(",")) > -1) {
			$(this).prop('checked', true)
		}
	}

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
$(function() {
	$('.dropdown-city-btn-search-form').text($('.dropdown-city-menu li.selected').text());
	$('.dropdown-city-btn-search-form').val($('.dropdown-city-menu li.selected').text());
});

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
          $(".city-dropdown .settings-city-input").val($(this).val());
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
          $(".settings-dropdown-btn.am").val($(this).val());
          $(".dropdown-menu.outer-noscroll.settings-dropdown-hours-am li").removeClass("selected");
          $(this).addClass("selected");
          $(".settings-business-hours-start-input").val($(this).data("value"));
      });
});

$(function(){
      $(".dropdown-menu.outer-noscroll.settings-dropdown-hours-pm li").click(function(){
          $(".settings-dropdown-btn.pm").text($(this).text());
          $(".settings-dropdown-btn.pm").val($(this).text());
          $(".dropdown-menu.outer-noscroll.settings-dropdown-hours-pm li").removeClass("selected");
          $(this).addClass("selected");
          $(".settings-business-hours-end-input").val($(this).data("value"));
      });
});

$(function(){
      $(".dropdown-menu.outer-noscroll.settings-dropdown-menu.hours-am1 li").click(function(){
          $(".settings-dropdown-btn.hours-am").text($(this).text());
          $(".settings-dropdown-btn.hours-am").val($(this).text());
          $(".dropdown-menu.outer-noscroll.settings-dropdown-menu.hours-am1 li").removeClass("selected");
          $(this).addClass("selected");
          $(".settings-business-hours-start-period-input").val($(this).data("value"));
      });
});

$(function(){
      $(".dropdown-menu.outer-noscroll.settings-dropdown-menu.hours-am li").click(function(){
          $(".settings-dropdown-btn.hours-pm").text($(this).text());
          $(".settings-dropdown-btn.hours-pm").val($(this).text());
          $(".dropdown-menu.outer-noscroll.settings-dropdown-menu.hours-am li").removeClass("selected");
          $(this).addClass("selected");
          $(".settings-business-hours-end-period-input").val($(this).data("value"));
      });
});

$(function(){
      $(".sh-city .dropdown-menu.outer-noscroll li").click(function(){
          $(".dropdown-city-btn").text($(this).text());
          $(".dropdown-city-btn").val($(this).text());
          $(".sh-city .dropdown-menu.outer-noscroll li").removeClass("selected");
          $(this).addClass("selected");
          $(".sh-city .home-city-input").val($(this).val());
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
$("input[name='isArtist']").change(function(){
    if($(this).val() == 'true'){
        $(".artist-menu-item").show();
        $(".user-menu-item").hide();
        $(".whatsapp-msg").show();
    } else{
        $(".artist-menu-item").hide();
        $(".user-menu-item").show();
        $(".whatsapp-msg").hide();
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

$(".stay-btn").click(function() {
	$("#warning-modal").modal("hide");
});

function displaySuccessMessage() {
	$("#success-modal").modal("show");
}

function displayFailureMessage() {
	$("#failure-modal").modal("show");
}

$("ul.dropdown-menu.outer-noscroll.settings-dropdown-state li").click(function() {
    var value = $(this).text();
    
    var isValid = (value !== 'State')
    
    if (isValid) {
        $(".state-dropdown .help-block.with-errors").text("");
    }
    
}); 

function validateAccountSettingsForm() {
	var isEverythingValid = true;
	
	/** Artist radio button validation **/
    if ($('#artist-yes').is(':checked') || $('#artist-no').is(':checked')) {  
        $(".artist-container .help-block.with-errors").text("");
    }else{
        $(".has-radio .help-block.with-errors").text("Please make a selection.");
        event.preventDefault();
        isEverythingValid = false;
    }
    
	/** User full name validation **/
	if (!$("#settings-name")[0].checkValidity()) {
		isEverythingValid = false;
	}
	
	/** Email validation **/
	if (!$("#settings-email")[0].checkValidity()) {
		isEverythingValid = false;
	}
		
	/** Location Validation **/
	if (!$("#settings-location")[0].checkValidity()) {
		isEverythingValid = false;
	}
	
    var value = $(".settings-dropdown-btn.city").text();
    var isValid = (value !== 'City')
    
    if (!isValid) {
        $(".city-dropdown .help-block.with-errors").text("Please select your city");
        event.preventDefault();
        isEverythingValid = false;
    } else {
        $(".city-dropdown .help-block.with-errors").text("");
    }
    
    var value = $(".settings-dropdown-btn.state").text();
    var isValid = (value !== 'State')
    
    if (!isValid) {
        $(".state-dropdown .help-block.with-errors").text("Please select your state");
        event.preventDefault();
        isEverythingValid = false;
    } else {
        $(".state-dropdown .help-block.with-errors").text("");
    }
    
    /** Location Validation **/
	if (!$("#settings-whatsapp")[0].checkValidity()) {
		isEverythingValid = false;
	}
    
    return isEverythingValid;
}

function validateArtistProfileSettingsForm() {
	var isEverythingValid = true;
	
	/** About you name validation **/
	if (!$("#settings-aboutyou")[0].checkValidity()) {
		isEverythingValid = false;
	}
    
	/** Travel radio button validation **/
    if ($('#travel-yes').is(':checked') || $('#travel-no').is(':checked')) {  
        $(".travel-container .help-block.with-errors").text("");
    }else{
        $(".has-radio .help-block.with-errors").text("Please make a selection.");
        event.preventDefault();
        isEverythingValid = false;
    }
    
    /** Cosmetics check boxes validation **/
    var anyBoxesChecked = false;
    $('.cos-checkbox').each(function() {
        if ($(this).prop('checked')) {
            anyBoxesChecked = true;
        }
    });
 
    if (anyBoxesChecked == false) {
      $(".cosmetics.help-block.with-errors").text("Please select at least one.");
      event.preventDefault();  
      isEverythingValid = false;
    } 
    
    /** Services check boxes validation **/
    var anyBoxesChecked = false;
    $('.service-checkbox').each(function() {
        if ($(this).prop('checked')) {
            anyBoxesChecked = true;
        }
    });
 
    if (anyBoxesChecked == false) {
      $(".services.help-block.with-errors").text("Please select at least one.");
      event.preventDefault();  
      isEverythingValid = false;
    } 
    
    /** Complimentary trial radio button validation **/
    if ($('#trial-comp').is(':checked') || $('#trial-paid').is(':checked')) {  
        $(".trial-container .help-block.with-errors").text("");
    }else{
        $(".trial-container .help-block.with-errors").text("Please make a selection.");
        event.preventDefault();
        isEverythingValid = false;
    }
    
    /** Years of experience name validation **/
	if (!$("#settings-experience")[0].checkValidity()) {
		isEverythingValid = false;
	}
    return isEverythingValid;
}

function validateUserPreferencesSettingsForm() {
	var isEverythingValid = true;
	
	/** Cosmetics check boxes validation **/
    var anyBoxesChecked = false;
    $('.user-cos-checkbox').each(function() {
        if ($(this).prop('checked')) {
            anyBoxesChecked = true;
        }
    });
 
    if (anyBoxesChecked == false) {
      $(".cosmetics.help-block.with-errors").text("Please select at least one.");
      event.preventDefault();  
      isEverythingValid = false;
    } 
    
   
    return isEverythingValid;
}

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




