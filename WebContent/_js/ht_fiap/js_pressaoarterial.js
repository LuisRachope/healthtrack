$(document).ready(function () { 
    var $CampoKcal = $("#pressistolica");
    $CampoKcal.mask('0000', {reverse: true});
});

$(document).ready(function () { 
    var $CampoKcal = $("#pressdiastolica");
    $CampoKcal.mask('0000', {reverse: true});
});

$('#pressistolica').keypress(function(e) {
    var keyCode = (e.keyCode ? e.keyCode : e.which); // Somente aceita números.
    if (!(keyCode > 47 && keyCode < 58)) {
      e.preventDefault();
    }
  }); 

  $('#pressdiastolica').keypress(function(e) {
    var keyCode = (e.keyCode ? e.keyCode : e.which); // Somente aceita números.
    if (!(keyCode > 47 && keyCode < 58)) {
      e.preventDefault();
    }
  }); 
