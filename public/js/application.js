$(document).ready(function() {
  hideForm();

  $(document).on('click', 'button', function(event){
    var click = $(event);

    if (click == $('button.signup')) {
      $('form').attr('action', '/signup');
      dropFrom();
    }

  });

});

var dropForm = function() {
  $('form#signup').slideDown('slow');
}

var hideForm = function() {
  $('form').hide();
}