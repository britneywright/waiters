$(document).ready(function(){

$( "input" ).on( "click", function() {
  $( "#log" ).html( $( "input:checked" ).val() + " is checked!" );
  $('[data-show-for=both]').show();
  $('[data-show-for='+ label.text() +']').show();
});

});