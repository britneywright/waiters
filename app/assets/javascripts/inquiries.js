$(document).ready(function(){

$( "input" ).on( "click", function() {
  $( "#log" ).html( $( "input:checked" ).val() + " is checked!" );
  $('[data-show-for]').hide();
  $('[data-show-for=both]').show();
  $('[data-show-for='+ $( "input:checked" ).val() +']').toggle();
});

if ( $("#inquiry_role_hire").is(':checked')){
  $( "#log" ).html( $( "input:checked" ).val() + " is checked!" );
  $('[data-show-for=both]').show();
  $('[data-show-for='+ $( "input:checked" ).val() +']').show();
}

if ( $("#inquiry_role_work").is(':checked')){
  $( "#log" ).html( $( "input:checked" ).val() + " is checked!" );
  $('[data-show-for=both]').show();
  $('[data-show-for='+ $( "input:checked" ).val() +']').show();
}

});