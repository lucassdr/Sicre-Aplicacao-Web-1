<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
        
    <!-- Custom styles for this template -->
    <link href="assets/css/styleAdmin.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    <meta name="theme-color" content="#04091e" />
    <link rel="shortcut icon" href="assets3/img/favicon.ico">


<title>Bloqueio de tela</title>
</head>

<body onload="getTime()">

<%
	if((session.getAttribute("username") == null) && (session.getAttribute("password") == null)){
			response.sendRedirect("login.jsp");
	}
	
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0");
%>

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  	<div class="container">
	  	
	  		<div id="showtime"></div>
	  			<div class="col-lg-4 col-lg-offset-4">
	  				<div class="lock-screen">
		  				<h2><a data-toggle="modal" href="#myModal"><i class="fas fa-lock"></i></a></h2>
		  				<p>Clique para desbloquear</p>
		  				
				          <!-- Modal -->
					          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
					              <div class="modal-dialog">
					                  <div class="modal-content">
					                  <form action="desbloquearTela" method="post">
					                      <div class="modal-header">
					                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					                          <h4 class="modal-title">Bem-vindo de volta.</h4>
					                      </div>
					                      <div class="modal-body">
					                          <p class="centered"><img class="img-circle" width="80" src="assets/images/ui-danro.jpg"></p>
					                          <h5 class="centered">${username}</h5>
					                          <input type="text" name="username" placeholder="Nome de usário" autocomplete="off" class="form-control placeholder-no-fix">
					                          <br>
					                          <input type="password" name="pass" placeholder="Senha" autocomplete="off" class="form-control placeholder-no-fix">
					                      </div>
					                      
					                      <div class="modal-footer centered">
					                          <button data-dismiss="modal" class="btn btn-theme04" type="button">Cancelar</button>
					                          <button class="btn btn-theme03">Entrar</button>
					                      </div>
				                      </form>
					                  </div>
					              </div>
					          </div>
				          <!-- modal -->
		  				
	  				</div>
	  			</div><!-- /col-lg-4 -->
	  	
	  	</div><!-- /container -->

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("assets/images/brt2.jpg", {speed: 500});
    </script>

    <script>
        function getTime()
        {
            var today=new Date();
            var h=today.getHours();
            var m=today.getMinutes();
            var s=today.getSeconds();
            // add a zero in front of numbers<10
            m=checkTime(m);
            s=checkTime(s);
            document.getElementById('showtime').innerHTML=h+":"+m+":"+s;
            t=setTimeout(function(){getTime()},500);
        }

        function checkTime(i)
        {
            if (i<10)
            {
                i="0" + i;
            }
            return i;
        }
    </script>

  </body>






</html>