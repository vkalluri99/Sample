function callHandler(d, s, e) {
    $.ajax({
        url: 'SchoolHandler.axd',
        data: d,
        type: 'GET',
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        async: true,
        cache: true,
        success: s,
        error: e
    });
}
function callHandler_sync(d, s, e) {
    $.ajax({
        url: 'SchoolHandler.axd',
        data: d,
        type: 'GET',
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        async: false,
        cache: true,
        success: s,
        error: e
    });
}

//function CallHandlerUsingJson(d, s, e) {
//    $.ajax({
//        type: "GET",
//        url: "SchoolHandler.axd?json=",
//        dataType: "json",
//        contentType: "application/json; charset=utf-8",
//        data: JSON.stringify(d),
//        async: true,
//        cache: true,
//        success: s,
//        error: e
//    });
//}
function CallHandlerUsingJson(d, s, e) {
    d = JSON.stringify(d);
//    d = d.replace(/&/g, '\uFF06');
//    d = d.replace(/#/g, '\uFF03');
//    d = d.replace(/\+/g, '\uFF0B');
    //    d = d.replace(/\=/g, '\uFF1D');
    d = encodeURIComponent(d);
    $.ajax({
        type: "GET",
        url: "SchoolHandler.axd?json=",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        data: d,
        async: true,
        cache: true,
        success: s,
        error: e
    });
}


$(function () {
    $(".only_no").keydown(function (event) {
        // Allow: backspace, delete, tab, escape, and enter
        if (event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 27 || event.keyCode == 13 || event.keyCode == 190 ||
        // Allow: Ctrl+A
            (event.keyCode == 65 && event.ctrlKey === true) ||
        // Allow: home, end, left, right
            (event.keyCode >= 35 && event.keyCode <= 39)) {
            // let it happen, don't do anything
            return;
        }
        else {
            // Ensure that it is a number and stop the keypress
            if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105)) {
                event.preventDefault();
            }
        }
    });
});

function only_no_classjqueryinitialzer() {
    $(".only_no").keydown(function (event) {
        // Allow: backspace, delete, tab, escape, and enter
        if (event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 27 || event.keyCode == 13 || event.keyCode == 190 ||
        // Allow: Ctrl+A
            (event.keyCode == 65 && event.ctrlKey === true) ||
        // Allow: home, end, left, right
            (event.keyCode >= 35 && event.keyCode <= 39)) {
            // let it happen, don't do anything
            return;
        }
        else {
            // Ensure that it is a number and stop the keypress
            if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105)) {
                event.preventDefault();
            }
        }
    });
}

function callHandler_post(d, s, e) {
    $.ajax({
        url: 'SchoolHandler.axd',
        data: d,
        type: 'POST',
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        async: true,
        cache: true,
        success: s,
        error: e
    });
}
function callHandler_nojson_post(d, s, e) {
    $.ajax({
        url: 'SchoolHandler.axd',
        type: "POST",
       // dataType: "json",
        contentType: false,
        processData: false,

        data: d,
        success: s,
        error: e
    });
}
function CallHandlerUsingJson_POST(d, s, e) {
    d = JSON.stringify(d);
    //    d = d.replace(/&/g, '\uFF06');
    //    d = d.replace(/#/g, '\uFF03');
    //    d = d.replace(/\+/g, '\uFF0B');
    //    d = d.replace(/\=/g, '\uFF1D');
    d = encodeURIComponent(d);
    $.ajax({
        type: "POST",
        url: "SchoolHandler.axd",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        data: d,
        async: true,
        cache: true,
        success: s,
        error: e
    });
}

jQuery(window).scroll(function () {
    if (jQuery(this).scrollTop() > 300) {
        jQuery('.scrollToTop').fadeIn();
    } else {
        jQuery('.scrollToTop').fadeOut();
    }
});

//Click event to scroll to top

jQuery('.scrollToTop').click(function () {
    jQuery('html, body').animate({ scrollTop: 0 }, 800);
    return false;
});
  

/* ----------------------------------------------------------- */
/*  13. PRELOADER
/* ----------------------------------------------------------- */

jQuery(window).load(function () { // makes sure the whole site is loaded      
    jQuery('#aa-preloader-area').delay(300).fadeOut('slow'); // will fade out      
})
   
  

