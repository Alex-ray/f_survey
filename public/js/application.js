$(document).ready(function() {
  hideForm('header form');
  navButtonHide();

  $(document).on('click', 'button', function(event) {
    var $target = $(event.target);

    if ($target.is('.signup')) {signupForm()}

    if ($target.is('.login')) {loginForm()}

    if ($target.is('.logout')) {logOut()}
  });

  $('form').submit(function(e) {
    e.preventDefault();

    var url = $('form').attr('action');
    var data = $('form').serialize();

    $.post(url,data, function(data){

      if (data === "false") {
        loginSuccess();
      } else {
        $('header').append('<div class="errors">'+data+'</div>');
      }

    });

    return false;
  });

});

var logOut = function() {
  var data = {logout: true};
  $.post('/logout',data,function(){
    hideForm('header form');
    navButtonHide();
  });
}

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

var hideForm = function(form) {
  $(form).hide();
}

var navButtonHide = function() {
  $('.logout').hide();
  $('.survey').hide();
  $('.signup').show();
  $('.login').show();
}
