<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-detection" content="telephone=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="apple-touch-icon.png" rel="apple-touch-icon">
<link href="${pageContext.request.contextPath }/images/logo003.jpg" rel="icon">
<meta name="author" content="Nghia Minh Luong">
<meta name="keywords" content="Default Description">
<meta name="description" content="Default keyword">
<title>小琳零食</title>










<!-- Fonts-->

<!-- <link href="https://fonts.googleapis.com/css?family=Archivo+Narrow:300,400,700%7CMontserrat:300,400,500,600,700,800,900" rel="stylesheet"> -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/js/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/js/plugins/ps-icon/style.css">
<!-- CSS Library-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/js/plugins/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/js/plugins/owl-carousel/assets/owl.carousel.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/js/plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/js/plugins/slick/slick/slick.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/js/plugins/bootstrap-select/dist/css/bootstrap-select.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/js/plugins/Magnific-Popup/dist/magnific-popup.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/js/plugins/jquery-ui/jquery-ui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/js/plugins/revolution/css/settings.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/js/plugins/revolution/css/layers.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/js/plugins/revolution/css/navigation.css">
<!-- Custom-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/styletiao.css">
<!--HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
<!--WARNING: Respond.js doesn't work if you view the page via file://-->
<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
</head>

<div class="header--sidebar"></div>
<header class="header">
  <div class="header__top">
	<div class="container-fluid">
	  <div class="row">
			<div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 ">
			  <p>小琳零食预订平台欢迎您的光临，如果您有什么问题可以发邮件到123456789@gmail.com</p>
			</div>
			<div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
			  <div class="header__actions"><a href="${pageContext.request.contextPath }/userlogin">登录&注册</a>
				<div class="btn-group ps-dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">当前用户</a>
				 
				</div>
				<div class="btn-group ps-dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${user}</a>
				  
				</div>
			  </div>
			</div>
	  </div>
	</div>
  </div>
  <nav class="navigation">
	<div class="container-fluid">
	  <div class="navigation__column left">
		<div class="header__logo"><a class="ps-logo" href="#"><img src="${pageContext.request.contextPath }/images/logo001.jpg" alt=""></a></div>
	  </div>
	  <div class="navigation__column center">
			<ul class="main-menu menu">
			  <li class="menu-item menu-item-has-children dropdown"><a href="${pageContext.request.contextPath }/index">首页</a>
			  </li>
			  <li class="menu-item menu-item-has-children dropdown"><a href="${pageContext.request.contextPath }/design">设计交流</a>
			  </li>
			  <li class="menu-item menu-item-has-children dropdown"><a href="${pageContext.request.contextPath }/upindex">上线产品</a>
			  </li>
			  
			  
			  <li class="menu-item menu-item-has-children dropdown"><a href="${pageContext.request.contextPath }/personal">我的仓库</a>
			  </li>
			  
			</ul>
	  </div>
	  <div class="navigation__column right">
		<%-- <form class="ps-search--header" action="${pageContext.request.contextPath }/findSnackByAdvancedd" method="post">
		  <input class="form-control" type="text" name="name" id="name" placeholder="Search Product…">
		  <button type="submit"><i class="ps-icon-search"></i></button>
		</form> --%>
	
		<div class="menu-toggle"><span></span></div>
	  </div>
	</div>
  </nav>
</header>
<div class="header-services">
  <div class="ps-services owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="7000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="false" data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000" data-owl-mousedrag="on">
	<p class="ps-service"><i class="ps-icon-delivery"></i><strong>新品抢先预约：</strong>优质而新颖的零食设计产品邀您做全球第一位食用者，惊喜刺激不间断。</p>
	<p class="ps-service"><i class="ps-icon-delivery"></i><strong>设计交流测试：</strong>小琳邀请您一起参与零食产品的设计与测试，你的每个建议我们都会认真采纳。</p>
	<p class="ps-service"><i class="ps-icon-delivery"></i><strong>安全健康零食：</strong>食品最主要的是安全，在安全的基础上我们会做的更健康，健康的同时不忘美味。</p>
  </div>
</div>