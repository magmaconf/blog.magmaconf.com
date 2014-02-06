// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_three .

$(document).ready(function() {
  $('.previous_page').append('<i class="prev"></i>')
  $('.next_page').append('<i class="next"></i>')

  var state = true;

  $('#main-menu').click(function(e) {
    state = !state

    if(state) {
      e.preventDefault();
      $('#main-menu').css({background: '#fff', color: '#1fb6b4'});
      $('.menu-hidden').slideToggle();
    } else {
      e.preventDefault();
      $('#main-menu').css({background: '#1fb6b4', color: '#fff'});
      $('.menu-hidden').slideToggle();
    }
  });

  $('.post').first().append('<a href="http://www.crowdint.com" target="_blank" class="banner"></a>');

  $('.top i.fa-check').addClass('fa-flag');
  $('.top i.fa-rotate-left').addClass('fa-legal');

  // Put color to each section link
  var location = window.location.pathname
  if (location == '/category/news') {
    $('.news i').css('background', '#312926');
  }
  if (location == '/category/judges') {
    $('.judges i').css('background', '#312926');
  }
  if (location == '/category/speakers') {
    $('.speakers i').css('background', '#312926');
  }
  if (location == '/category/sponsors') {
    $('.sponsors i').css('background', '#312926');
  }
});
