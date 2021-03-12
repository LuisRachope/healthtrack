<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!Doctype html>	
<html lang="pt-br">
<head>
	<title>Seja Bem Vindo ao Health Track!</title>
	<%@ include file="_modulos/head-index.jsp" %>
	
	</head>
<body>
		<div class="container-fluid">
		<div class="row no-gutter">
		<div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
		<div class="col-md-8 col-lg-6">
		<div class="login d-flex align-items-center py-5">
		<div class="container">
		<div class="row">
		<div id="main" class="col-md-9 col-lg-8 mx-auto">
		<header class="containe-fluid" id="cabecalho">
			<img src="_images/logo.png" alt="Logo Health Track" id="logo_login"><br></br>
			<h3 class="login-heading mb-4" id="welcome">Seja Bem-Vindo de volta!</h3>
		</header>
		<c:if test="${not empty erro}">
			<div class="alert alert-danger" id="erro">
				${erro}
			</div>
		</c:if>
		<form class="form-horizontal" id="tudo" method="POST" action="Login">
			<div class="form-group" id="email">
				<div class="form-label-group" id="enteremail">
					<input type="email" name="email" class="form-control" id="form-email" placeholder="E-mail" required autofocus>
					<label for="form-email">Endereço de e-mail</label>
				</div>
				<div class="form-label-group">
					<input type="password" name="senha" class="form-control" id="form-pwd" placeholder="Senha">
					<label for="form-pwd">Senha</label>
				</div>
				<br>
				<div>
					<button id="entrar" type="submit" class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" onblur="validacaoEmail(f1.email)" >Entrar</button>
				</div>
				<!--<div class="col-md-12 text-center">
					<a id="esqueceu" href="http://google.com.br" class="small" role="button" target="_blank">Esqueceu sua senha?</a>
				</div>-->
				<div class="text-center">
					<a href="cadastrar.jsp" id="cadastrar" class="small">Novo no Health Track? Inscreva-se agora »</a>
				</div>	
			</div>
		</form>
	</div>
</div>
</div>
</div>
</div>
</div>
</div>
<%@ include file="_modulos/foot.jsp" %>
</body>
</html>