$(document).ready(function() {
  var $form = $('#newsletter-form')
  var $messageBox = $form.find('#message-box');
  var $message = $messageBox.find('.message');

  var clearForm = function() {
    $form[0].reset();
  };

  var showSuccessMessage = function() {
    $messageBox.addClass('success');
    $message.text('Thanks for subscribing!');
    clearForm();
  };

  var showErrorMessage = function() {
    $messageBox.addClass('error');
    $message.text('Your request could not be sent');
  };

  $form.validate({
    rules: {
      name: 'required',
      email: {
        required: true,
        email: true
      }
    }
  });

  $form.on('click.close', '.close', function() {
    $messageBox.slideUp(function() {
      $messageBox.removeClass('success error');
    });
  });

  $form.on("ajax:beforeSend", function(evt, xhr, settings){
  }).on('ajax:success', function(evt, data, status, xhr){
    showSuccessMessage();
  }).on('ajax:complete', function(evt, xhr, status){
    $messageBox.slideDown();
  }).on('ajax:error', function(evt, xhr, status, error){
    showErrorMessage();
  });

});
