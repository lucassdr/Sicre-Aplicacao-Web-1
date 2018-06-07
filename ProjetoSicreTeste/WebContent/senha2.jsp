<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Recuperar senha</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="assets2/images/icons/favicon.ico" />
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

<script>
	$(document).ready(function() {
		$("#formulario").submit(function() {
			//Aqui se quiser pode fazer outras validações, mas nesse caso farei apenas a validação de ambos campos de senha.
			if ($("#passwordOne").val() == $("#passwordTwo").val()) {
				return true;
			}
			return false;
			alert('As senhas não iguais.')
		});
	});
</script>

</head>
<body>



	<div class="limiter">
		<div class="container-login100" style="background-color: #04091e;">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">


				<form class="login100-form validate-form" name="formulario"
					action="trocarSenha" method="post">
					<tr>
						<td><input type="hidden" class="form-control"
							name="idUsuario" id="idUsuario" value="${id}" size="10"
							maxlength="255"></td>
					</tr>
					<span class="login100-form-title p-b-49"> Crie sua nova
						senha </span>
					<div id="novaSenha" name="novaSenha"></div>
					<div class="wrap-input100 validate-input m-b-23"
						data-validate="Nome de usuário é obrigatório">
						<span class="label-input100">Nome de usuário</span> <input
							class="input100" type="text" name="username" value="${username}"
							readonly="readonly"> <span class="focus-input100"></span>
					</div>
					

					<div class="wrap-input100 validate-input"
						data-validate="CPF é obrigatório">
						<span class="label-input100">CPF</span> <input class="input100"
							type="text" name="cpf" value="${cpf}"readonly="readonly">
						<span class="focus-input100"></span>
					</div>
					<br>

					<div class="wrap-input100 validate-input"
						data-validate="Senha é obrigatória">
						<span class="label-input100">Nova senha</span> <input
							class="input100" type="password" name="passwordOne"
							placeholder="Crie uma nova senha"> <span
							class="focus-input100"></span>
					</div>
					<br>

					<div class="wrap-input100 validate-input"
						data-validate="Senha é obrigatória">
						<span class="label-input100">Confirme a nova senha</span> <input
							class="input100" type="password" name="passwordTwo"
							placeholder="Crie uma nova senha"> <span
							class="focus-input100"></span>
					</div>
					<br>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<a href="#novaSenha">
								<button class="login100-form-btn">Salvar nova senha</button>
							</a>
						</div>
					</div>
				</form>
				<div class="flex-col-c p-t-50">
					<a href="index.jsp">Fazer login</a>
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