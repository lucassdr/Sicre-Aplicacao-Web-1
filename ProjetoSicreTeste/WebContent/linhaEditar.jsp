
<%@page import="dominio.TipoDeLinha"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dominio.Linhas"%>
<%@page import="java.util.List"%>
<%@page errorPage="500.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="pt-br">
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="">
<meta name="author" content="">
<meta name="theme-color" content="#04091e" />
<link rel="shortcut icon" href="assets3/img/favicon.ico">

<title>Editar linha</title>

<link href="assets/css/bootstrap.css" rel="stylesheet">
<!--external css-->
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="assets/js/gritter/css/jquery.gritter.css" />
<link rel="stylesheet" type="text/css" href="assets/css/styleAdmin.css">

<!-- Custom styles for this template -->
<link href="assets/css/styleAdmin.css" rel="stylesheet">
<link href="assets/css/style-responsive.css" rel="stylesheet">

<script src="assets/js/chart-master/Chart.js"></script>

<link href="assets/css/table-responsive.css" rel="stylesheet">

<link rel="shortcut icon" href="assets3/img/favicon.ico">

<jsp:useBean id="linha" scope="request" class="dominio.Linhas"></jsp:useBean>

<%
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0");
%>

</head>
<body>
	<%
		List<TipoDeLinha> listaTipoLinha = (List<TipoDeLinha>) request.getAttribute("listaTipoLinha");
		List<Linhas> lista = (List<Linhas>) request.getAttribute("lista");
	%>

	<%
		if ((session.getAttribute("username") == null) && (session.getAttribute("password") == null)) {
			response.sendRedirect("login.jsp");
		}
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setHeader("Expires", "0");
	%>

	<section id="container">
		<header class="header black-bg">
			<div class="sidebar-toggle-box">
				<div class="fa fa-bars tooltips" data-placement="right"
					data-original-title="Toggle Navigation"></div>
			</div>
			<!--logo start-->
			<a href="#menu-toggle" class="logo"><b>SICRE</b></a>
			<!--logo end-->

			<div class="top-menu">
				<ul class="nav pull-right top-menu">
					<li><a class="logout" href="logout">Sair</a></li>
				</ul>
			</div>
			<div class="top-menu">
				<ul class="nav pull-right top-menu">
					<li><a class="logout" href="bloquear">Bloquear</a></li>
				</ul>
			</div>
		</header>

		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu" id="nav-accordion">

					<p class="centered">
						<a href=""><img src="assets/images/ui-danro.jpg"
							class="img-circle" width="60"></a>
					</p>
					<h5 class="centered">${username}</h5>

					<li class="mt"><a href="index.jsp"> <i
							class="fa fa-dashboard"></i> <span>Dashboard</span>
					</a></li>

					<li class="sub-menu"><a class="active" href="javascript:;">
							<i class="fa fa-tasks"></i> <span>Linhas</span>
					</a>
						<ul class="sub">
							<li><a href="listarLinhas">Linhas cadastradas</a></li>
						</ul></li>

					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-cogs"></i> <span>Imagens</span>
					</a>
						<ul class="sub">
							<li><a href="galeriaDeImagens.jsp">Galeria de
									reclamações</a></li>
						</ul></li>

				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>


		<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> Gerenciamneto de linhas de ônibus
				</h3>
				<div class="row mt">
					<div class="col-lg-12">
						<div class="content-panel">
							<h4>
								<i class="fa fa-angle-right"></i> Cadastro de linhas
							</h4>
							<section id="unseen">
								<h4>
									<c:catch var="NullPointerException">
										<%
											out.println("Linhas cadastradas: " + lista.size());
										%>
									</c:catch>
								</h4>


								<%
									List<String> erros = (List<String>) request.getAttribute("erros");

									if (erros != null) {
										out.print("<ul>");
										for (String erro : erros)
											out.print("<li>" + erro + "</li>");
										out.print("</ul>");
									}
								%>


								<table
									class="table table-bordered table-striped table-condensed">
									<thead>
										<form action="salvarLinha" method="post">
											<tbody>
												<tr>
													<td><input type="hidden" class="form-control"
														name="idLinha" id="idLinha" value="${linha.idLinha}"
														size="10" maxlength="255"></td>
												</tr>
												<tr>
													<td><label for="numeroLinha">Número da linha:</label></td>
													<td><input type="text" class="form-control"
														name="numeroLinha" id="numeroLinha"
														value="${linha.numeroLinha}" size="50" maxlength="255"
														required="required"></td>
												</tr>
												<tr>
													<td><label for="extensaoKm">Extensão(Km):</label></td>
													<td><input type="number" class="form-control"
														name="extensaoKm" id="extensaoKm"
														value="${linha.extensaoKm}" size="50" maxlength="255"
														required="required" min="1" max="999"></td>
												</tr>
												<tr>
													<td><label for="tipoDeOnibus">Tipo de ônibus:</label></td>
													<td><input type="text" class="form-control"
														name="tipoDeOnibus" id="tipoDeOnibus"
														value="${linha.tipoDeOnibus}" size="50" maxlength="255"
														required="required"></td>
												</tr>
												<tr>
													<td><label for="valorPassagem">Valor(R$):</label></td>
													<td><input type="text" class="form-control"
														name="valorPassagem" id="valorPassagem"
														value="${linha.valorPassagem}" size="50" maxlength="255"
														required="required"></td>
												</tr>
												<tr>
													<td><label for="tempoMedio">Tempo Médio:</label></td>
													<td><input type="time" class="form-control"
														name="tempoMedio" id="tempoMedio"
														value="${linha.tempoMedio}" size="50" maxlength="255"
														required="required"></td>
												</tr>
												<tr>
													<td><label for="horaInicioOperacao">Horário
															Inicial:</label></td>
													<td><input type="time" class="form-control"
														name="horaInicioOperacao" id="horaInicioOperacao"
														value="${linha.horaInicioOperacao}" size="50"
														maxlength="255" required="required"></td>
												</tr>
												<tr>
													<td><label for="horaFimOperacao">Horário
															Final:</label></td>
													<td><input type="time" class="form-control"
														name="horaFimOperacao" id="horaFimOperacao"
														value="${linha.horaFimOperacao}" size="50" maxlength="255"
														required="required"></td>
												</tr>
												<tr>
													<td><label for="tipoDeLinha">Selecione o tipo
															de linha:</label></td>
													<td><select name="tipoDeLinha" id="tipoDeLinha"
														class="btn btn-default dropdown-toggle">

															<option value="">Selecione</option>

															<c:forEach var="tip" items="${listaTipoLinha}">
																<c:set var="selecao" value="" />
																<c:if test="${tip.equals(linha.tipoDeLinha)}">
																	<c:set var="selecao" value="selected='selected'" />
																</c:if>
																<option ${selecao} value="${tip.idTipoDeLinha}">${tip.nome}</option>
															</c:forEach>

													</select></td>
												</tr>

												<tr>
													<td></td>
													<td><label> <input type="submit"
															name="btnSalvar" value="Salvar" class="btn btn-primary">
															<input type="button" value="Cancelar"
															class="btn btn-default"
															onclick="window.location = 'listarLinhas'">
													</label>
												</tr>


											</tbody>
										</form>
								</table>
							</section>
						</div>
						<!-- /content-panel -->
					</div>
					<!-- /col-lg-4 -->
				</div>
				<!-- /row -->


			</section>
		</section>


		<footer class="site-footer">
			<div class="text-center">
				<a href="http://lucassdr.com.br/" target="_blank">2018 -
					lucassdr</a>
			</div>
		</footer>
		<!--footer end-->
	</section>



	<!-- Bootstrap core JavaScript
	    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="assets/js/jquery-3.2.1.min.js"></script>
	<script src="assets/dist/js/bootstrap.min.js"></script>

	<script src="assets/js/chart.min.js"></script>
	<script src="assets/js/chart-data.js"></script>
	<script src="assets/js/easypiechart.js"></script>
	<script src="assets/js/easypiechart-data.js"></script>
	<script src="assets/js/bootstrap-datepicker.js"></script>
	<script src="assets/js/custom.js"></script>
	<script src="assets/js/jquery-latest.min.js"></script>
	<script src="assets/js/examples.js"></script>
	<script src="assets/js/jquery.mask.min.js"></script>


	<!-- js placed at the end of the document so the pages load faster -->
	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery-3.2.1.min.js"></script>
	<script class="include" type="text/javascript"
		src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="assets/js/jquery.scrollTo.min.js"></script>
	<script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>

	<!--common script for all pages-->
	<script src="assets/js/common-scripts.js"></script>

	<script>
		window.onload = function() {
			var chart1 = document.getElementById("line-chart").getContext("2d");
			window.myLine = new Chart(chart1).Line(lineChartData, {
				responsive : true,
				scaleLineColor : "rgba(0,0,0,.2)",
				scaleGridLineColor : "rgba(0,0,0,.05)",
				scaleFontColor : "#c5c7cc"
			});
		};
	</script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
		integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
		crossorigin="anonymous"></script>

</body>
</html>

