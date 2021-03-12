$(document).ready(function () { 
    var $CampoKcal = $("#altura");
    $CampoKcal.mask('0.00', {reverse: true});
});


var inputPassword = document.getElementById("novasenha")
  , cconfirmPassword = document.getElementById("confnovasenha");

function validatePassword(){
  if(inputPassword.value != cconfirmPassword.value) {
    confirmPassword.setCustomValidity("Senhas diferentes!");
  } else {
    confirmPassword.setCustomValidity('');
  }
}

inputPassword.onchange = validatePassword;
confirmPassword.onkeyup = validatePassword;

$('#name').keypress(function(e) {
  var keyCode = (e.keyCode ? e.keyCode : e.which); // Somente aceita letras.
  if (keyCode > 47 && keyCode < 58) {
    e.preventDefault();
  }
});

$('#sobrenome').keypress(function(e) {
  var keyCode = (e.keyCode ? e.keyCode : e.which); // Somente aceita letras.
  if (keyCode > 47 && keyCode < 58) {
    e.preventDefault();
  }
});

$('#altura').keypress(function(e) {
  var keyCode = (e.keyCode ? e.keyCode : e.which); // Somente aceita números.
  if (!(keyCode > 47 && keyCode < 58)) {
    e.preventDefault();
  }
}); 
