$(document).ready(function() {
  $( "#wagon_type" ).change(function() {
    var wagon;
    var div;

<<<<<<< HEAD
    wagon = $(this).val().toLowerCase();
    div = $('.' + wagon);

    $('.train').hide();
    div.toggle();
=======
   wagon = $(this).val().toLowerCase();
   div = $('.' + wagon);

   div.toggle();
>>>>>>> origin/slave
  });
});
