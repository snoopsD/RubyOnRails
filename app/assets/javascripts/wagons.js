$(document).ready(function() {
  $( "#wagon_type" ).change(function() {
    var wagon;
    var div;

    wagon = $(this).val().toLowerCase();
    div = $('.' + wagon);

    $('.train').hide();
    div.toggle();
    
  });
});
