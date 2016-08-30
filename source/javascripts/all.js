// This is where it all goes :)
function require(script) {
    $.ajax({
        url: script,
        dataType: "script",
        async: false,           // <-- This is the key
        success: function () {
            // all good...
        },
        error: function () {
            throw new Error("Could not load script " + script);
        }
    });
}

require('javascripts/bootstrap.js')
require('javascripts/wow.min.js')
require('javascripts/jquery.fancybox.js')
require('javascripts/main.js')
require('javascripts/npm.js')
require('javascripts/owl.carousel.min.js')
require('javascripts/slider.js')
