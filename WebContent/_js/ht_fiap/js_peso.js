$(document).ready(function () { 
    var $CampoKcal = $("#PesoAtual");
    $CampoKcal.mask('00.0', {reverse: true});
});

$('#PesoAtual').keypress(function(e) {
    var keyCode = (e.keyCode ? e.keyCode : e.which); // Somente aceita números.
    if (!(keyCode > 47 && keyCode < 58)) {
      e.preventDefault();
    }
  }); 
