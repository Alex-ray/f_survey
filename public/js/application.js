$(document).ready(function() {
  hideForm();

  $(document).on('click', 'button', function(event) {
    var $target = $(event.target);

    if ($target.is('.signup')) {
      signupForm()
    }

    if ($target.is('.login')) {
      loginForm()
    }
  });

  $('form').submit(function(e) {
    e.preventDefault();
    var url = $('form').attr('action');
    var data = $('form').serialize();
    $.post(url,data, function(){loginSuccess()});
    return false;
  });

});

var loginSuccess = function() {
  $('form').slideUp('fast');
  $('.signup').hide();
  $('.login').hide();
  $('.logout').show();
}

var signupForm = function() {
  $('form').attr('action', '/signup');
  $('button.signup').hide();
  $('button.login').show();
  $('form button').text('Sign Up');
  $('form').slideDown(100);
}

var loginForm = function() {
  $('form').attr('action', '/login');
  $('button.login').hide();
  $('button.signup').show();
  $('form button').text('Log In');
  $('form').slideDown(100);
}

var hideForm = function() {
  $('form').hide();
  $('.logout').hide();
}
