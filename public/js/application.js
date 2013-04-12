$(document).ready(function() {
  hideForm();

  $(document).on('click', 'button', function(event) {
    var $target = $(event.target);
    if ( $target.is('.signup') ) {

      $('form').attr('action', '/signup');
      $('button.signup').hide();
      $('button.login').show();
      $('form button').text('Sign Up');
      dropForm();
    }

    if ( $target.is('.login') ) {

      $('form').attr('action', '/login');
      $('button.login').hide();
      $('button.signup').show();
      $('form button').text('Log In');
      dropForm();

    }

  });

});

var dropForm = function() {
  $('form').slideDown(100);
}

var hideForm = function() {
  $('form').hide();
}