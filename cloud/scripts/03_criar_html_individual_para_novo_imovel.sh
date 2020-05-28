#!/bin/bash

#create html for the new house

echo "script: $0"

#validando argumentos
if [[ "$#" -eq 0 || "$#" -gt 1 ]]; then
	echo "precisa de 1 e somente 1 argumento!"
	exit -1
fi

timestamp=$(date -u "+%Y-%d-%m-%H-%MZ")
imovel=$1
thisscript="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
info=$(find ${thisscript}/../images/REF${imovel}/ -iname info.txt)
new_imovel=${thisscript}/../refs/ref${imovel}.html
imovel_bkp=${timestamp}_ref${imovel}_individual_bkp

ref=$(cat $info | grep -a ^ref | cut -d':' -f2)
refupper=$(echo "${ref}" | tr a-z A-Z)
eref=$(cat $info | grep -a ^eref | cut -d':' -f2)
preco=$(cat $info | grep -a ^preco | cut -d':' -f2)
metro=$(cat $info | grep -a ^metro | cut -d':' -f2)
dormi=$(cat $info | grep -a ^dormi | cut -d':' -f2)
banho=$(cat $info | grep -a ^banho | cut -d':' -f2)
titulo=$(cat $info | grep -a ^titulo | cut -d':' -f2)
descri=$(cat $info | grep -a ^descri | cut -d':' -f2)
contato1=$(cat $info | grep -a ^contato1 | cut -d':' -f2)
telefone1=$(cat $info | grep -a ^telefone1 | cut -d':' -f2)
contato2=$(cat $info | grep -a ^contato2 | cut -d':' -f2)
telefone2=$(cat $info | grep -a ^telefone2 | cut -d':' -f2)
financiamento=$(cat $info | grep -a ^financiamento | cut -d':' -f2)
mconstru=$(cat $info | grep -a ^mconstru | cut -d':' -f2)
item1=$(cat $info | grep -a ^item1 | cut -d':' -f2)
item2=$(cat $info | grep -a ^item2 | cut -d':' -f2)
item3=$(cat $info | grep -a ^item3 | cut -d':' -f2)
item4=$(cat $info | grep -a ^item4 | cut -d':' -f2)
item5=$(cat $info | grep -a ^item5 | cut -d':' -f2)
item6=$(cat $info | grep -a ^item6 | cut -d':' -f2)
destaque=$(cat $info | grep -a ^destaque | cut -d':' -f2)
locacao=$(cat $info | grep -a ^locacao | cut -d':' -f2)
captacao=$(cat $info | grep -a ^captacao | cut -d':' -f2)
prop=$(cat $info | grep -a ^prop | cut -d':' -f2)
local=$(cat $info | grep -a ^local | cut -d':' -f2)
imagens=$(cat $info | grep -a ^imagens | cut -d':' -f2)

if [ -z ${locacao} ]; then
	detalheslocacao="ALUGUEL R\$ ${locacao}"
else
	detalheslocacao=
fi

##############

#start html

cat << _EOF_ > ${new_imovel}
	<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<link href="http://construtoracarvalhopereira.com.br/images/${refupper}/*.jpg" rel="../images/${refupper}/*.jpg"/>
<title>CONSTRUTORA CARVALHO PEREIRA</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Domicile Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="../css/ken-burns.css" type="text/css" media="all" />
<link rel="stylesheet" href="../css/animate.min.css" type="text/css" media="all" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- js -->
<script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Josefin+Sans:400,100,100italic,300,300italic,400italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="../js/move-top.js"></script>
<script type="text/javascript" src="../js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		\$(".scroll").click(function(event){		
			event.preventDefault();
			\$('html,body').animate({scrollTop:\$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
	
	<!-- Piwik -->
		<script type="text/javascript">
		  var _paq = _paq || [];
		  _paq.push(['trackPageView']);
		  _paq.push(['enableLinkTracking']);
		  (function() {
		    var u="http://cluster-piwik.locaweb.com.br/";
		    _paq.push(['setTrackerUrl', u+'piwik.php']);
		    _paq.push(['setSiteId', 14189]);
		    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
		    g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
		  })();
		</script>
	<!-- End Piwik Code -->
	
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3l_header_left">
				<ul>
					<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> <a href="mailto:contato@construtoracarvalhopereira.com.br">contato@construtoracarvalhopereira.com.br</a></li>
					<!--<li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span> (15) 99801 6412</li> -->
					<li><i class="fa fa-whatsapp fa-2x" aria-hidden="true"></i><a href="intent://send/11995915356#Intent;scheme=smsto;package=com.whatsapp;action=android.intent.action.SENDTO;end"> 11 995915356</a></li>
					<li><a href="intent://send/15998183001#Intent;scheme=smsto;package=com.whatsapp;action=android.intent.action.SENDTO;end">15 998183001</a></li>
				</ul>
			</div>
			<div class="w3l_header_right">
				<ul class="social-icons">
					<li><a href="https://www.facebook.com/Construtora-Carvalho-Pereira-LTDA-173572119750855/" class="icon icon-border facebook" target="_blank"></a></li>
					<!-- <li><a href="#" class="icon icon-border twitter"></a></li>
					<li><a href="#" class="icon icon-border instagram"></a></li>
					<li><a href="#" class="icon icon-border pinterest"></a></li> -->
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="header-bottom">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
					<div class="logo">
						<!-- <h1><a class="navbar-brand" href="../../index.html"><span>D</span>omicile</a></h1> -->
						<h1><a class="navbar-brand" href="../../index.html"></a></h1>
					</div>
				</div>

				
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="cl-effect-1" id="cl-effect-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="../../index.html">Início</a></li>
							
							<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Imóveis<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="vendas.html">Vendas</a></li>
									<li><a href="locacao.html">Locação</a></li>
								</ul>
							</li>

							<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Construção<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="../adm.html">Projetos</a></li>
									<li><a href="../adm.html">Administração de Obras</a></li>
									<li><a href="../adm.html">Reformas</a></li>
								</ul>
							</li>

							<li><a href="../anunciar.html">Quer Vender?</a></li>
						</ul>
					</nav>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
			<div class="w3ls_search">
				<div class="cd-main-header">
					<ul class="cd-header-buttons">
						<li><a class="cd-search-trigger" href="#"> <span></span></a></li>
					</ul> <!-- cd-header-buttons -->
				</div>
				<div id="cd-search" class="cd-search">
					<form action="#" method="post">
						<input name="Search" type="search" placeholder="Em Construção...">
					</form>
				</div>
			</div>
			<!-- search-jQuery -->
				<script src="../js/main.js"></script>
			<!-- //search-jQuery -->
		</div>
	</div>
<!-- //header -->


<!-- conteúdo -->
	
	<div class="single">
		<div class="container">
			<div class="w3_single_grid">

<!-- -->

				<div class="w3_single_grid_left">
					<div class="w3_single_grid_left_grid w3l_services_grid">
						<ul>
							<li><a class="bake">R$ ${preco} ${refupper}</a></li>
							<li class="square">${metro} m²</li>
							<li class="bath">${banho}</li>
							<li class="bed">${dormi}</li>
							<li>
								<i class="fa fa-whatsapp" aria-hidden="true"></i><a href="intent://send/${telefone1}#Intent;scheme=smsto;package=com.whatsapp;action=android.intent.action.SENDTO;end"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>${contato1} </a>${telefone1}</li>
						</ul>

						<!-- banner -->
							<div class="banner">
								<div id="kb" class="carousel" data-ride="carousel" data-interval="5000" data-pause="hover">

						            <!-- Wrapper-for-Slides -->
						            <div class="carousel-inner" role="listbox">

						                <!-- First-Slide -->
						                <div class="item active">
						                    <img src="../images/${refupper}/1.jpg" alt="" />
						                </div>

						                <!-- Second-Slide -->
						                <div class="item">
						                    <img src="../images/${refupper}/2.jpg" alt="" class="img-responsive" />
						                </div>

						                <!-- Third-Slide -->
						                <div class="item">
						                    <img src="../images/${refupper}/3.jpg" alt="" class="img-responsive" />
						                </div>
						                
						                <!-- Fourth-Slide -->
						                <div class="item">
						                    <img src="../images/${refupper}/4.jpg" alt="" class="img-responsive" />
						                </div>
						                
						                <div class="item">
						                    <img src="../images/${refupper}/5.jpg" alt="" class="img-responsive" />
						                </div>
						                
						                <div class="item">
						                    <img src="../images/${refupper}/6.jpg" alt="" class="img-responsive" />
						                </div>
						                
						                <div class="item">
						                    <img src="../images/${refupper}/7.jpg" alt="" class="img-responsive" />
						                </div>
						                
						                <div class="item">
						                    <img src="../images/${refupper}/8.jpg" alt="" class="img-responsive" />
						                </div>
						                
						                <div class="item">
						                    <img src="../images/${refupper}/9.jpg" alt="" class="img-responsive" />
						                </div>
						                
						                <div class="item">
						                    <img src="../images/${refupper}/10.jpg" alt="" class="img-responsive" />
						                </div>
						                
						            </div>
									
						            <!-- Left-Button -->
						            <a class="left carousel-control kb_control_left" href="#kb" role="button" data-slide="prev">
										<span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
						                <span class="sr-only">Anterior</span>
						            </a>

						            <!-- Right-Button -->
						            <a class="right carousel-control kb_control_right" href="#kb" role="button" data-slide="next">
						                <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
						                <span class="sr-only">Próxima</span>
						            </a>
									
						        </div>
								<script src="../js/custom.js"></script>
							</div>
						<!-- //banner -->


						<h3>${titulo}</h3>
						<p>${descri}</p>
					</div>
					<div class="w3_single_grid_left_grid1">
						<div class="col-md-6 w3_single_grid_left_grid1_left">
							<ul>
								<li>${item1}</li>
								<li>${item2}</li>
								<li>${item3}</li>
								<li>${item4}</li>
							</ul>
						</div>
						<div class="col-md-6 w3_single_grid_left_grid1_left">
							<ul>
								<li><i class="fa fa-whatsapp" aria-hidden="true"></i><a href="intent://send/${telefone1}#Intent;scheme=smsto;package=com.whatsapp;action=android.intent.action.SENDTO;end"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> ${contato1} </a>(${telefone1})</li>
								<li><i class="fa fa-whatsapp" aria-hidden="true"></i><a href="intent://send/${telefone2}#Intent;scheme=smsto;package=com.whatsapp;action=android.intent.action.SENDTO;end"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> ${contato2} </a>(${telefone2})</li>
								<li>${item5}</li>
								<li>${item6}</li>
							</ul>
						</div>
						<div class="clearfix"> </div>

						<p>...</p>
					</div>
				</div>


<!-- -->

				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>

<!-- //conteúdo -->

<!-- botao_voltar_imoveis -->

	<div class="about">
		<div class="container">
			<div class="w3_single_grid">

					<h3><a href="#" onclick="history.go(-1)" class="bake"> << VOLTAR << </a></h3>
					<br />

				<div class="clearfix"> </div>
			</div>
		</div>
	</div>


<!-- //botao_voltar_imoveis -->


<!-- adm_obras -->

<div class="single">
		<div class="container">
			<div class="w3_single_grid">
	<div class="col-md-5 w3_single_grid_right">
					<div class="w3_single_grid_right_grid">
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
						  <div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingOne">
							  <h4 class="panel-title asd">
								<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
								  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>administração de obras
								</a>
							  </h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							  <div class="panel-body panel_text">
								Conte com nossa experiência de mais de 20 anos na construção civil e tenha sua obra bem administrada, seu dinheiro bem investido e transparência em nossa relação. Entre em contato agora mesmo para mais detalhes.
							  </div>
							</div>
						  </div>
						  <div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingTwo">
							  <h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
								  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>construção
								</a>
							  </h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
							   <div class="panel-body panel_text">
								Nós contamos com engenheiros qualificados e preparados para atendê-lo, aproveite e faça uma cotação sem compromisso entrando em contato conosco diretamente pelo whatsapp ou ligue.								  </div>
							</div>
						  </div>
						  <div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingThree">
							  <h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
								  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>projetos
								</a>
							  </h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
							   <div class="panel-body panel_text">
								Que tal transformar sua idéia de imóvel em um projeto profissional contando com uma consultoria diferencida !? ... Para mais detalhes ligue ou contate-nos através do whatsapp.								  </div>
							</div>
						  </div>
						  <div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingFour">
							  <h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
								  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>reformas
								</a>
							  </h4>
							</div>
							<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
							   <div class="panel-body panel_text">
								Deixe com a gente! Estamos disponíveis para otimizar a sua reforma com qualidade e rapidez. Seja uma reforma pequena ou grande entre em contato com Alcides pelo whatsapp.
							  </div>
							</div>
						  </div>
						</div>
					</div>
	</div>
	<div class="clearfix"> </div>
	</div>
	</div>
	</div>

<!-- //adm_obras -->


<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3agile_footer_grids">
				<div class="col-md-4 agileinfo_footer_grid">
					<div class="footer-logo">
						<!-- <h2><a href="../../index.html"><i>C</i>arvalho <i>P</i>ereira <span>Nosso serviço é profissional</span></a></h2> -->
						<h2><a href="../../index.html">Carvalho Pereira <span>Nosso serviço é profissional</span></a></h2>
					</div>
				</div>
				<div class="col-md-3 agileinfo_footer_grid">
					<ul>
						<li><i class="fa fa-whatsapp fa-2x" aria-hidden="true"></i><a href="intent://send/11995915356#Intent;scheme=smsto;package=com.whatsapp;action=android.intent.action.SENDTO;end"> 11 995915356</a></li>
						<li><a href="intent://send/15998183001#Intent;scheme=smsto;package=com.whatsapp;action=android.intent.action.SENDTO;end">15 998183001</a></li>
					</ul>
					<p>Construtora Carvalho Pereira <span>Porta do Sol Mairinque.</span></p>
					<ul class="social-icons">
						<li><a href="https://www.facebook.com/Construtora-Carvalho-Pereira-LTDA-173572119750855/" class="icon icon-border facebook" target="_blank" class="icon icon-border facebook"></a></li>
						<!-- <li><a href="#" class="icon icon-border twitter"></a></li>
						<li><a href="#" class="icon icon-border instagram"></a></li>
						<li><a href="#" class="icon icon-border pinterest"></a></li> -->
					</ul>
				</div>
				<div class="col-md-2 agileinfo_footer_grid agileinfo_footer_grid1">
					<ul>
						<li><a href="../../index.html">Início</a></li>
						<li><a href="vendas.html">Vendas</a></li>
						<li><a href="locacao.html">Locação</a></li>
						<li><a href="../adm.html">Construção</a></li>
					</ul>
				</div>
				<div class="col-md-3 agileinfo_footer_grid">
					<div class="agileinfo_footer_grid_left">
						<a href="ref001.html"><img src="../images/REF001/014.jpg" alt=" " class="img-responsive" /></a>
					</div>
					<div class="agileinfo_footer_grid_left">
						<a href="ref002.html"><img src="../images/REF002/009.jpg" alt=" " class="img-responsive" /></a>
					</div>
					<div class="agileinfo_footer_grid_left">
						<a href="ref003.html"><img src="../images/REF003/007.jpg" alt=" " class="img-responsive" /></a>
					</div>
					<div class="agileinfo_footer_grid_left">
						<a href="ref004.html"><img src="../images/REF004/007.jpg" alt=" " class="img-responsive" /></a>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="footer-copy">
		<div class="container">
			<p>© 2017 CRECI - 173907-F | Design by <a href="http://w3layouts.com">W3layouts.</a></p>
		</div>
	</div>
<!-- //footer -->
<!-- for bootstrap working -->
	<script src="../js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		\$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>

_EOF_

####
cp -v ${new_imovel} ${thisscript}/log/${imovel_bkp}