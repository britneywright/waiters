$(document).ready(function(){

$( "input" ).on( "click", function() {
  $( "#log" ).html( $( "input:checked" ).val() + " is checked!" );
  $('[data-show-for]').hide();
  $('[data-show-for=both]').show();
  $('[data-show-for='+ $( "input:checked" ).val() +']').toggle();
});

});