$(document).ready(function () { 
  var $CampoKcal = $("#altura");
  $CampoKcal.mask('0.00', {reverse: true});
});

$('#nome').keypress(function(e) {
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

  function validacaoEmail(field) {
    usuario = field.value.substring(0, field.value.indexOf("@"));
    dominio = field.value.substring(field.value.indexOf("@")+ 1, field.value.length);
     
    if ((usuario.length >=1) &&
        (dominio.length >=3) && 
        (usuario.search("@")==-1) && 
        (dominio.search("@")==-1) &&
        (usuario.search(" ")==-1) && 
        (dominio.search(" ")==-1) &&
        (dominio.search(".")!=-1) &&      
        (dominio.indexOf(".") >=1)&& 
        (dominio.lastIndexOf(".") < dominio.length - 1)) {
    
    }
    else{
    document.getElementById("msgemail").innerHTML="<font color='red'>E-mail inválido </font>";
    alert("Inclua um '@' no endereço de e-mail e um dominio valido. Por exemplo example@internet.com");
    }
    };

    $("#form").submit(function() {
      if($("#senha").val()== null || $("#senha").val() ==""){
          alert('Campo Senha vazio');      
          return false;
      }
  });