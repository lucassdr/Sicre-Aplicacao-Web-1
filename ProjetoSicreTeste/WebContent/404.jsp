<!DOCTYPE html>
<!--[if IE 8 ]><html class="no-js oldie ie8" lang="pt-br"> <![endif]-->
<!--[if IE 9 ]><html class="no-js oldie ie9" lang="pt-br"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="pt-br"> <!--<![endif]-->
<head>
<%@ page isErrorPage="true" %>

   <!--- basic page needs
   ================================================== -->
   <meta charset="utf-8">
	<title>404 - Não encontrado</title>
	<meta name="description" content="">  
	<meta name="author" content="">

   <!-- mobile specific metas
   ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

 	<!-- CSS
   ================================================== -->
	<link rel="stylesheet" href="assets/css/baseCss.css">  
   	<link rel="stylesheet" href="assets/css/mainCss.css">
   	<link rel="stylesheet" href="assets/css/vendorCss.css">       

   <!-- script
   ================================================== -->
	<script src="js/modernizr.js"></script>

   <!-- favicons
	================================================== -->
	<meta name="theme-color" content="#04091e" />
	<link rel="shortcut icon" href="assets3/img/favicon.ico">

</head>

<body>

<%
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0");
%>


	<!-- header 
   ================================================== -->
   <header class="main-header">
   	<div class="row">
   		<div class="logo">
	         <a href="index.html">SICRE</a>
	      </div>   		
   	</div>   
   </header> <!-- /header -->

 
  	<!-- main content
   ================================================== -->
   <main id="main-404-content" class="main-content-slides">

   	<div class="content-wrap">

		   <div class="shadow-overlay"></div>

		   <div class="main-content">
		   	<div class="row">
		   		<div class="col-twelve">
			  			<h1 class="kern-this">Erro 404.</h1>
			  			<p>
						Oooooops! Parece que nada foi encontrado por aqui.
						Talvez a página tenha sido removida ou alterada. Vamos tentar algo diferente?
			  			</p>
			   	</div> <!-- /twelve --> 		   			
		   	</div> <!-- /row -->    		 		
		   </div> <!-- /main-content --> 

		   <footer>
		   	<div class="row">

		   		<div class="col-seven tab-full social-links pull-right">
			   		<ul>
				   		<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					      <li><a href="#"><i class="fa fa-behance"></i></a></li>
					      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
					      <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
					      <li><a href="#"><i class="fa fa-instagram"></i></a></li>   			
				   	</ul>
			   	</div>
		   			
		  			<div class="col-five tab-full bottom-links">
			   		<ul class="links">
				   		<li><a href="index.html">Visite o site institucional</a></li>
				         <li><a href="mailto:lucassdr@outlook.com.br">Informar problema</a></li>			                    
				   	</ul>

				   	<div class="credits">
				   		Todos os direitos reservados <i class="fa fa-code"
								aria-hidden="true"></i> by <a href="http://lucassdr.com.br/"
								target="_blank">lucassdr</a>
				   	</div>
			   	</div>   		   		

		   	</div> <!-- /row -->    		  		
		   </footer>

		</div> <!-- /content-wrap -->
   
   </main> <!-- /main-404-content -->

   <div id="preloader"> 
    	<div id="loader"></div>
   </div> 

   <!-- Java Script
   ================================================== --> 
   <script src="assets/js/jquery-2.1.3.min.js"></script>
   <script src="assets/js/plugins.js"></script>
   <script src="assets/js/mainJS.js"></script>

</body>

</html>