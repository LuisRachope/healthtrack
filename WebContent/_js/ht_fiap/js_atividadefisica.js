$(document).ready(function () { 
    var $CampoKcal = $("#cal");
    $CampoKcal.mask('000', {reverse: true});
});

$('#cal').keypress(function(e) {
    var keyCode = (e.keyCode ? e.keyCode : e.which); // Somente aceita números.
    if (!(keyCode > 47 && keyCode < 58)) {
      e.preventDefault();
    }
  }); 

