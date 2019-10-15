$(document).ready( function() {
  var active = true;
  $('#archiveButton').click(function() {
    $('.archive').toggle();
    if (active == true) {
      active = false;
      $('#hideText').html(' \t&nbsp; Show owned items');
      $( "#toggleIcon" ).html('<i class="fas fa-lg fa-eye"></i>');
    } else {
      active = true;
      $('#hideText').html(' \t&nbsp; Hide owned items');
      $( "#toggleIcon" ).html('<i class="fas fa-lg fa-eye-slash"></i>');
    }
  });
});