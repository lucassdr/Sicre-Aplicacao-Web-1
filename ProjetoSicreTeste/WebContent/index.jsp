<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <meta http-equiv="Content-Language" content="pt-br">
	<meta name="theme-color" content="#04091e" />

    <title>SICRE</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/styleAdmin.css">    
    
    <!-- Custom styles for this template -->
    <link href="assets/css/styleAdmin.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <script src="assets/js/chart-master/Chart.js"></script>
    
    <link rel="shortcut icon" href="assets3/img/favicon.ico">
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
  
 <%
  	if((session.getAttribute("username") == null) || (session.getAttribute("password") == null)){
  		response.sendRedirect("login.jsp");
  	}
  	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0");
 %> 
  
   <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="index.jsp" class="logo"><b>SICRE</b></a>
            <!--logo end-->
            <div class="nav notify-row" id="top_menu">
            </div>
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
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href=""><img src="assets/images/ui-danro.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">${username}</h5>
              	  	
                  <li class="mt">
                      <a class="active" href="index.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
					
				<li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Linhas</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="listarLinhas">Linhas cadastradas</a></li>
                      </ul>
                  </li>
					
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>Imagens</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="galeriaDeImagens.jsp">Galeria de reclamações</a></li>
                      </ul>
                  </li>
                
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

              <div class="row">
                  <div class="col-lg-9 main-chart">
					
					<div class="row mt">
                      <!--CUSTOM CHART START -->
                      <div class="border-head">
                          <h3>Média diária de passageiros</h3>
                      </div>
                      <div class="custom-bar-chart">
                          <ul class="y-axis">
                              <li><span>5.000.000</span></li>
                              <li><span>1.000.000</span></li>
                              <li><span>500.000</span></li>
                              <li><span>250.000</span></li>
                              <li><span>100.000</span></li>
                              <li><span>0</span></li>
                          </ul>
                          <ul></ul>
                          <div class="bar">
                              <div class="title">DOM</div>
                              <div class="value tooltips" data-original-title="969.500" data-toggle="tooltip" data-placement="top">19.39%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">SEG</div>
                              <div class="value tooltips" data-original-title="4.837.187" data-toggle="tooltip" data-placement="top">97.77%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">TER</div>
                              <div class="value tooltips" data-original-title="4.384.987" data-toggle="tooltip" data-placement="top">87.77%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">QUA</div>
                              <div class="value tooltips" data-original-title="3.703.098" data-toggle="tooltip" data-placement="top">73.25%</div>
                          </div>
                          <div class="bar">
                              <div class="title">QUI</div>
                              <div class="value tooltips" data-original-title="3.989.767" data-toggle="tooltip" data-placement="top">79.99%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">SEX</div>
                              <div class="value tooltips" data-original-title="4.918.958" data-toggle="tooltip" data-placement="top">98.36%</div>
                          </div>
                          <div class="bar">
                              <div class="title">SÁB</div>
                              <div class="value tooltips" data-original-title="1.457.187" data-toggle="tooltip" data-placement="top">27.65%</div>
                          </div>
                      </div>
                      <!--custom chart end-->
					</div><!-- /row -->	
					
                  </div><!-- /col-lg-9 END SECTION MIDDLE -->
                  
                  
      <!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->                  
                  
                  <div class="col-lg-3 ds">
                    <!--COMPLETED ACTIONS DONUTS CHART-->
						<h3>Notificações</h3>
                                        
                      <!-- First Action -->
                      <div class="desc">
                      	<div class="thumb">
                      		<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                      	</div>
                      	<div class="details">
                      		<p><muted>19 segundos atrás</muted><br/>
                      		   <a href="#">Eduardo Cunha</a> Ônibus com ar condicionado ruim<br/>
                      		</p>
                      	</div>
                      </div>
                      <!-- Second Action -->
                      <div class="desc">
                      	<div class="thumb">
                      		<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                      	</div>
                      	<div class="details">
                      		<p><muted>42 segundos atrás</muted><br/>
                      		   <a href="#">Eduardo Paes</a> Superlotação na linha Central x Madureira<br/>
                      		</p>
                      	</div>
                      </div>
                      <!-- Third Action -->
                      <div class="desc">
                      	<div class="thumb">
                      		<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                      	</div>
                      	<div class="details">
                      		<p><muted>2 minutos atrás</muted><br/>
                      		   <a href="#">Manuela D'Ávila</a> Tentativa de assalto no ônibus frustada pela polícia militar.<br/>
                      		</p>
                      	</div>
                      </div>
                      <!-- Fourth Action -->
                      <div class="desc">
                      	<div class="thumb">
                      		<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                      	</div>
                      	<div class="details">
                      		<p><muted>3 minutos atrás</muted><br/>
                      		   <a href="#">Renan Calheiro</a> Interdição próximo ao ponto final na Central do Brasil<br/>
                      		</p>
                      	</div>
                      </div>
                      <!-- Fifth Action -->
                      <div class="desc">
                      	<div class="thumb">
                      		<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                      	</div>
                      	<div class="details">
                      		<p><muted>4 minutos atrás</muted><br/>
                      		   <a href="#">Sérgio Cabral</a> Vendedores ambulantes dentro do expresso BRT. Madureira x Jardim Alvorada<br/>
                      		</p>
                      	</div>
                      </div>

                      
                        <!-- CALENDAR-->
                        <div id="calendar" class="mb">
                            <div class="panel green-panel no-margin">
                                <div class="panel-body">
                                    <div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
                                        <div class="arrow"></div>
                                        <h3 class="popover-title" style="disadding: none;"></h3>
                                        <div id="date-popover-content" class="popover-content"></div>
                                    </div>
                                    <div id="my-calendar"></div>
                                </div>
                            </div>
                        </div><!-- / calendar -->
                      
                  </div><!-- /col-lg-3 -->
              </div>
          </section>
      </section>

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
          	<a href="http://lucassdr.com.br/" target="_blank">2018 - lucassdr</a>              
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="assets/js/sparkline-chart.js"></script>    
	<script src="assets/js/zabuto_calendar.js"></script>	
	
	<script type="text/javascript">
        $(document).ready(function () {
        var unique_id = $.gritter.add({
            // (string | mandatory) the heading of the notification
            title: 'Bem-vindo ao SICRE!',
            // (string | mandatory) the text inside the notification
            text: 'Primeiro veja as suas notificações. Elas precisam de sua atenção. <a href="http://lucassdr.com.br/" target="_blank" style="color:#ffd777">www.lucassdr.com.br</a>',
            // (string | optional) the image to display on the left
            image: 'assets/images/ui-danro.jpg',
            // (bool | optional) if you want it to fade out on its own or just sit there
            sticky: false,
            // (int | optional) the time you want it to be alive for before fading out
            time: '6500',
            // (string | optional) the class name you want to apply to that specific message
            class_name: 'my-sticky-class'
        });

        return false;
        });
	</script>
	
	<script type="application/javascript">
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    </script>
  

  </body>
</html>
