$(document).ready(function(){
  $( "input" ).on( "click", function() {
    $('[data-show-for]').hide();
    $('[data-show-for=both]').show();
    $('[data-show-for='+ $( "input:checked" ).val() +']').toggle();
  });

  if ( $("#inquiry_role_hire").is(':checked')){
    $('[data-show-for=both]').show();
    $('[data-show-for='+ $( "input:checked" ).val() +']').show();
  }

  if ( $("#inquiry_role_work").is(':checked')){
    $('[data-show-for=both]').show();
    $('[data-show-for='+ $( "input:checked" ).val() +']').show();
  }

  $("#notice").fadeOut();
});