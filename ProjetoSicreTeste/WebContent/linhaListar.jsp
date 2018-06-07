
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="dominio.Linhas"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<meta name="theme-color" content="#04091e" />
<link rel="shortcut icon" href="assets3/img/favicon.ico">
<%-- <pagination-tag:pager start="<%=start%>" range="<%=range%>" results="<%=results%>"/>  --%>
<title>Linhas cadastradas</title>



<!-- Bootstrap core CSS -->
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

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript">
	function confirmar(idLinha, numeroLinha) {
		if (confirm(' ID selecionado: ' + idLinha
				+ '\n Deseja realmente excluir a linha ' + numeroLinha + '?')) {
			// modelo DOM
			window.location = 'excluirLinha?idLinha=' + idLinha;
		}
	}
</script>
</head>

<body>
	<%
		List<Linhas> lista = (List<Linhas>) request.getAttribute("lista");
	%>

	<%
		if((session.getAttribute("username") == null) && (session.getAttribute("password") == null)){
	  		response.sendRedirect("login.jsp");
	  	}

		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setHeader("Expires", "0");
	%>


	<section id="container">
		<!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
		<!--header start-->
		<header class="header black-bg">
			<div class="sidebar-toggle-box">
				<div class="fa fa-bars tooltips" data-placement="right"
					data-original-title="Toggle Navigation"></div>
			</div>
			<!--logo start-->
			<a href="index.jsp" class="logo"><b>SICRE</b></a>
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
		<!--header end-->

		<!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
		<!--sidebar start-->
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
							<li><a  href="galeriaDeImagens.jsp">Galeria de reclamações</a></li>
						</ul></li>

				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
		<!--main content start-->
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
								<div>
									<h4>
										<a href="abrirInclusao">
												<button type="button" class="btn btn-primary">Cadastrar linha</button>
										</a>
									</h4>
								</div>


								<table
									class="table table-bordered table-striped table-condensed">
									<thead>
										<tr>
											<th>Opções</th>
											<th>ID</th>
											<th>Número/Nome</th>
											<th>Extensão/Km</th>
											<th>Tipo de ônibus</th>
											<th>Valor</th>
											<th>Tempo médio</th>
											<th>Hora Início</th>
											<th>Hora Fim</th>
											<th>Escopo</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="linha" items="${lista}">
											<tr>
												<td><a href="editar?idLinha=${linha.idLinha}" class="btn btn-primary">Alterar</a>
														<a href="javascript:confirmar('${linha.idLinha}', '${linha.numeroLinha}')" class="btn btn-danger">Excluir</a></td>
												<td>${linha.idLinha}</td>
												<td>${linha.numeroLinha}</td>
												<td>${linha.extensaoKm}</td>
												<td>${linha.tipoDeOnibus}</td>
												<td>${linha.valorPassagem}</td>
												<td>${linha.tempoMedio}</td>
												<td>${linha.horaInicioOperacao}</td>
												<td>${linha.horaFimOperacao}</td>
												<td>${linha.tipoDeLinha.nome}</td>
											</tr>
										</c:forEach>
									</tbody>
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
		<!-- /MAIN CONTENT -->

		<!--main content end-->
		<!--footer start-->
		<footer class="site-footer">
			<div class="text-center">
				<a href="http://lucassdr.com.br/" target="_blank">2018 -
					lucassdr</a>
			</div>
		</footer>
		<!--footer end-->
	</section>

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

</body>
</html>











