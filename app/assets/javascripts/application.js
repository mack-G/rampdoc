//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .


$(document).ready(function() {
    //Set the carousel options
    $('#quote-carousel').carousel({
        pause: true,
        interval: 5000,
    });
});
