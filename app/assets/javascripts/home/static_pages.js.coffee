# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  
  #hide function
  hide_all = ->
    $('.work').hide()
    $('.contact').hide()
    $('.resume').hide()
    return

  #home = work
  hide_all()
  $('.work.demoreel').show()
  $('.work-submenu').show()

  #resize Video container for 16:9 ratio
  $('.video').height parseInt($('.video').width() * 9 / 16)
  $(window).resize ->
    $('.video').height parseInt($('.video').width() * 9 / 16)
    return

  #menu display on xtra-small screen
  $('#name').click ->
    $('.visible-xs .menu').toggle()
    return
  $('.visible-xs .menu h4').click ->
    $('.visible-xs .menu').toggle()
    return

  #change pages
  $('.contact-menu').click ->
    #first, stop video
    $('iframe').attr 'src', $('iframe').attr('src')
    #then change page
    hide_all()
    $('.contact').show()
    return

  $('.work-menu').click ->
    hide_all()
    $('.work-submenu').show()
    $('.demoreel').show()
    #resize video
    $('.video').height parseInt($('.video').width() * 9 / 16)
    return

  $('.resume-menu').click ->
    #first, stop video
    $('iframe').attr 'src', $('iframe').attr('src')
    #then change page
    hide_all()
    $('.resume').show()
    return

  $('.production-menu').click ->
    #first, stop video
    $('iframe').attr 'src', $('iframe').attr('src')
    #then change page
    hide_all()
    $('.work-submenu').show()
    $('.production').show()
    return

  $('.demoreel-menu').click ->
    #then change page
    hide_all()
    $('.work-submenu').show()
    $('.demoreel').show()
    return

  $('.thumbnails-flipper').mouseenter ->
    $(this).quickFlipper {}, 1
    return

  $('.thumbnails-flipper').mouseleave ->
    $('.thumbnails-flipper').quickFlipper {}, 0
    return
  return