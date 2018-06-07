<%@page import="dominio.Usuario"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Cadastrar</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="shortcut icon" href="assets3/img/favicon.ico">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="assets2/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="assets2/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="assets2/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="assets2/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="assets2/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="assets2/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="assets2/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="assets2/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="assets2/css/util.css">
<link rel="stylesheet" type="text/css" href="assets2/css/main.css">
<!--===============================================================================================-->
<meta name="theme-color" content="#04091e" />


</head>
<body>

	<div class="limiter">
		<div class="container-login100" style="background-color: #04091e;">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form class="login100-form validate-form" action="salvarUsuario"
					method="post">
					<span class="login100-form-title p-b-49"> Cadastrar </span>

					<div class="wrap-input100 validate-input"
						data-validate="Nome é obrigatório">
						<span class="label-input100">Nome</span> <input class="input100"
							type="text" name="nome" placeholder="João"
							value="${usuario.nome}"> <span class="focus-input100"></span>
					</div>
					<br> <br>
					<div class="wrap-input100 validate-input"
						data-validate="Sobrenome é obrigatório">
						<span class="label-input100">Sobrenome</span> <input
							class="input100" type="text" name="sobrenome"
							placeholder="da Silva Souza" value="${usuario.sobrenome}">
						<span class="focus-input100"></span>
					</div>
					<br> <br>
					<div class="wrap-input100 validate-input"
						data-validate="CPF é obrigatório">
						<span class="label-input100">CPF</span> <input class="input100"
							type="text" name="cpf" placeholder="123.456.789-10"
							value="${usuario.cpf}"> <span class="focus-input100"></span>
					</div>
					<br> <br>
					<div class="wrap-input100 validate-input m-b-23"
						data-validate="Nome de usuário é obrigatório">
						<span class="label-input100">Nome de usuário</span> <input
							class="input100" type="text" name="nomeUsuario"
							placeholder="Ex.: joaosilva" value="${usuario.nomeUsuario}">
						<span class="focus-input100"></span>
					</div>
					<br> <br>
					<div class="wrap-input100 validate-input"
						data-validate="Senha é obrigatória">
						<span class="label-input100">Senha</span> <input class="input100"
							type="password" name="senha" placeholder="Cadastre uma senha"
							autocomplete="off" value="${usuario.senha}"> <span
							class="focus-input100"></span>
					</div>
					<br> <br>
					<div class="wrap-input100 validate-input"
						data-validate="A senha informada pelo administrador é obrigatória">
						<span class="label-input100">Senha de acesso</span> <input
							class="input100" type="password" name="pass"
							placeholder="Ex.: S1C43" autocomplete="off"
							value="${usario.pass}"> <span class="focus-input100"></span>
					</div>
					<sub>Aa senha informada pelo administrador é obrigatória ao
						realizar o cadastro</sub> <br> <br>
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">Cadastrar</button>
						</div>
					</div>
				</form>
				<div class="flex-col-c p-t-50">
					<span class="txt1 p-b-17">
						<a href="login.jsp" class="txt2">Fazer login</a>
					</span>
					<a href="index.html">Ir ao site institucional</a>
				</div>

			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>