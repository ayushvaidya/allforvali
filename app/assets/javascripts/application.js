// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require activestorage
//= require turbolinks
//= require plyr
//= require_tree .

$(document).on("turbolinks:load", function() {
    const players = Array.from(document.querySelectorAll('.js-player')).map(p => new Plyr(p));
});

(function() {
    console.log('iife')
    $("audio").on("play", function() {
        console.log('on play')
        $("audio").not(this).each(function(index, audio) {
            console.log('pause')
            audio.pause();
        });
    });
})()
