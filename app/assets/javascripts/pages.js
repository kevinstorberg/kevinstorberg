$(document).ready(function() {

    // Contact Form ================================================================
    $('#contact-submit').click(function(e) {
      var name = $('#contact-name').val();
      var email = $('#contact-email').val();
      var phone = $('#contact-phone').val();
      if (name == '' || email == '' || phone == '') {
        e.preventDefault();
          if (name == '') {
             $("#contact-name").css('border', "2px solid red");
          } else {
             $("#contact-name").css('border', "1px solid silver");
          }

          if (email == '') {
             $("#contact-email").css('border', "2px solid red");
          } else {
             $("#contact-email").css('border', "1px solid silver");
          }

          if (phone == '') {
             $("#contact-phone").css('border', "2px solid red");
          } else {
             $("#contact-phone").css('border', "1px solid silver");
          }

          };
      });

});
