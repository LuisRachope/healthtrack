<%@ page  language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!Doctype html>
<html lang="pt-br">
<head>
	<title>Cadastrar-se - Health Track</title>
	<%@ include file="_modulos/head.jsp" %>
</head>
<body>
	<div class="container-fluid" id="cadastrar">
     <br>
        <div class="row">
            <div class=" col-md-12 text-center">
                <img src="_images/logo.png" alt="Logo Health Track" id="logo_login"> 
            </div>
        </div><br>
		<header class="row" id="cabecalho2">
			<div class="col-md-12">
				<h1 class="text-center">Cadastro do usuário</h1>
			</div>
		</header>
		<br>
		<form id="campos-cadastro" action="cadastrar" method="post">
			<div class="form-vertical">
				<div class="col-md-12">
					<label for="nome">Nome:</label>
					<input type="text" name="nome" id="nome" class="form-control" required="required" autofocus="autofocus">
				</div>
				<div class="col-md-12">
					<label for="sobrenome">Sobrenome:</label>
					<input type="text" name="sobrenome" id="sobrenome" class="form-control" required="required">
				</div>
				<div class="col-md-6">
					<label for="dataNasc">Data de Nascimento:</label>
					<input type="text" id="dataNasc" name="dataNasc" class="form-control data" required="required">
				</div>
				<div class="col-md-6">
					<label for="altura">Altura (Ex: 1.72m):</label>
					<input type="text" id="altura" name="altura" step="0.01" class="form-control" min="0" max="2.90" maxlength="4" autocomplete="off" required="required">
				</div>
				<div class="col-md-12">
					<label for="sexo">Gênero:</label>
					<div class="radio" id="sexo">
						<label class="radio-inline"><input type="radio" name="opradio" checked="checked" value="true">Masculino</label>
						<label class="radio-inline"><input type="radio" name="opradio" value="false">Feminino</label>
					</div>
				</div>
				<div class="col-md-12">
					<label for="email">E-mail:</label>
					<input type="email" name="email" id="email" class="form-control" onblur="validacaoEmail(f1.email)" required="required">
                </div>
				<div class="col-md-12">
					<label for="confemail">Confirmar e-mail:</label>
					<input type="email" name="confemail" id="confemail" class="form-control" required="required">
				</div>
				<div class="col-md-6">
					<label for="senha">Senha:</label>
					<input type="password" name="senha" id="senha" class="form-control" required="required">
				</div>
				<div class="col-md-6">
					<label for="confsenha">Confirmar senha:</label>
					<input type="password" id="confsenha" class="form-control" name="confsenha" required="required">
				</div>
				<div class="col-md-12">
					<button type="submit" class="btn btn-primary btn-block" id="cadast">Cadastrar</button>
                </div>	
                <div class="text-center">
                    <a class="d-block small mt-3" href="login.jsp">voltar e Fazer login?</a>
                </div>			
			</div>
		</form>
	</div>
<%@ include file="_modulos/foot-jquery.jsp" %>
</body>
</html>