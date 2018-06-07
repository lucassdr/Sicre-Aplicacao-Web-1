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

<title>DASHGUM - Bootstrap Admin Template</title>

<!-- Bootstrap core CSS -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<!--external css-->
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href="assets/js/fancybox/jquery.fancybox.css" rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="assets/css/styleAdmin.css" rel="stylesheet">
<link href="assets/css/style-responsive.css" rel="stylesheet">

<script src="assets/js/jquery.js"></script>
<link rel="shortcut icon" href="assets3/img/favicon.ico">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<%
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}

	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0");
%>


<body>

	<section id="container">
		<!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
		<!--header start-->
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

					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-tasks"></i> <span>Linhas</span>
					</a>
						<ul class="sub">
							<li><a href="listarLinhas">Linhas cadastradas</a></li>
						</ul></li>

					<li class="sub-menu"><a href="javascript:;">
							<i class="fa fa-cogs"></i> <span>Imagens</span>
					</a>
						<ul class="sub">
							<li><a  class="active" href="galeriaDeImagens.jsp">Galeria de
									reclamações</a></li>
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
			<section class="wrapper site-min-height">
				<h3>
					<i class="fa fa-angle-right"></i> Gallery
				</h3>
				<hr>
				<div class="row mt">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
						<div class="project-wrapper">
							<div class="project">
								<div class="photo-wrapper">
									<div class="photo">
										<a class="fancybox" href="assets/images/port04.jpg"><img
											class="img-responsive" src="assets/images/port04.jpg"
											alt=""></a>
									</div>
									<div class="overlay"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- col-lg-4 -->

					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
						<div class="project-wrapper">
							<div class="project">
								<div class="photo-wrapper">
									<div class="photo">
										<a class="fancybox" href="assets/images/port05.jpg"><img
											class="img-responsive" src="assets/images/port05.jpg"
											alt=""></a>
									</div>
									<div class="overlay"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- col-lg-4 -->

					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
						<div class="project-wrapper">
							<div class="project">
								<div class="photo-wrapper">
									<div class="photo">
										<a class="fancybox" href="assets/images/port06.jpg"><img
											class="img-responsive" src="assets/images/port06.jpg"
											alt=""></a>
									</div>
									<div class="overlay"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- col-lg-4 -->
				</div>
				<!-- /row -->

				<div class="row mt">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
						<div class="project-wrapper">
							<div class="project">
								<div class="photo-wrapper">
									<div class="photo">
										<a class="fancybox" href="assets/images/port01.jpg"><img
											class="img-responsive" src="assets/images/port01.jpg"
											alt=""></a>
									</div>
									<div class="overlay"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- col-lg-4 -->

					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
						<div class="project-wrapper">
							<div class="project">
								<div class="photo-wrapper">
									<div class="photo">
										<a class="fancybox" href="assets/images/port02.jpg"><img
											class="img-responsive" src="assets/images/port02.jpg"
											alt=""></a>
									</div>
									<div class="overlay"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- col-lg-4 -->

					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
						<div class="project-wrapper">
							<div class="project">
								<div class="photo-wrapper">
									<div class="photo">
										<a class="fancybox" href="assets/images/port03.jpg"><img
											class="img-responsive" src="assets/images/port03.jpg"
											alt=""></a>
									</div>
									<div class="overlay"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- col-lg-4 -->
				</div>
				<!-- /row -->

				<div class="row mt mb">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
						<div class="project-wrapper">
							<div class="project">
								<div class="photo-wrapper">
									<div class="photo">
										<a class="fancybox" href="assets/images/port04.jpg"><img
											class="img-responsive" src="assets/images/port04.jpg"
											alt=""></a>
									</div>
									<div class="overlay"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- col-lg-4 -->

					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
						<div class="project-wrapper">
							<div class="project">
								<div class="photo-wrapper">
									<div class="photo">
										<a class="fancybox" href="assets/images/port05.jpg"><img
											class="img-responsive" src="assets/images/port05.jpg"
											alt=""></a>
									</div>
									<div class="overlay"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- col-lg-4 -->

					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
						<div class="project-wrapper">
							<div class="project">
								<div class="photo-wrapper">
									<div class="photo">
										<a class="fancybox" href="assets/images/port06.jpg"><img
											class="img-responsive" src="assets/images/port06.jpg"
											alt=""></a>
									</div>
									<div class="overlay"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- col-lg-4 -->
				</div>
				<!-- /row -->

			</section>
			<! --/wrapper -->
		</section>
		<!-- /MAIN CONTENT -->

		<!--main content end-->
		<!--footer start-->
		<footer class="site-footer">
			<div class="text-center">
				2014 - Alvarez.is <a href="gallery.html#" class="go-top"> <i
					class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
	</section>

	<!-- js placed at the end of the document so the pages load faster -->
	<script src="assets/js/fancybox/jquery.fancybox.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="assets/js/jquery.scrollTo.min.js"></script>
	<script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


	<!--common script for all pages-->
	<script src="assets/js/common-scripts.js"></script>

	<!--script for this page-->

	<script type="text/javascript">
		$(function() {
			//    fancybox
			jQuery(".fancybox").fancybox();
		});
	</script>

	<script>
		//custom select box

		$(function() {
			$("select.styled").customSelect();
		});
	</script>

</body>
</html>
