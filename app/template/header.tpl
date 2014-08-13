<!DOCTYPE HTML>
<html>
<head>
<!--[if gt IE 8]><!-->
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!--<![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<?php echo $keywords; ?>" />
<meta name="description" content="<?php echo $description; ?>" /> 
<meta name="language" content="English">
<meta name="owner" content="<?php echo $_SERVER['HTTP_HOST']; ?>">
<meta name="Author" content="<?php echo "Lazaros Kazantzis"; ?>">
<meta name="copyright" content="<?php echo $_SERVER['HTTP_HOST']; ?>"> 
<meta name="robots" content="all">
<meta name="rating" content="general, Safe For Kids " />
<title><?php echo $title; ?></title>
	<?php
		foreach($styles as $style){
			echo '<link rel="'.$style["rel"].'" href="'._CSS_DIR_.$style["href"].'.css" type="text/css" media="'.$style["media"].'" />';	
		}
	?>
<script src="/resources/js/libraries/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="/resources/js/libraries/jquery-migrate-1.1.1.min.js" type="text/javascript"></script>
<script src="/resources/js/libraries/bootstrap.min.js" type="text/javascript"></script>
<script src="/resources/js/libraries/bootbox.min.js" type="text/javascript"></script>
	
</head>
	<body>
	<div class="container">
	  <div class="row">
		  <div class="header-brand-div col-lg-8 col-md-8 col-sm-12 col-xs-12">
		    <a class="brand" href="/"><i><h1><?php echo $header['siteTitle']; ?></h1><h3><?php echo $header['siteSubtitle']; ?></h3></i></a>
		  </div>
		  <div class="header-info-div col-lg-4 col-md-4 hidden-sm hidden-xs">
		    <div class="col-lg-12 col-md-12 header-info">
		      <span class="glyphicon glyphicon-map-marker"></span><?php echo $header['office']; ?>
		    </div>
		    <div class="col-lg-12 col-md-12 header-info">
		      <span class="glyphicon glyphicon-phone-alt"></span><a href="tel:+302310528616"><?php echo $header['tel']; ?> 2310 528616</a>
		    </div>
		  </div>
	  </div>
	  <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
          <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target="#main-navbar">
              <span class="sr-only"><?php echo $header['toggleMenu']; ?></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>
          <div class="collapse navbar-collapse" id="main-navbar">
          	<ul class="nav navbar-nav">
          	<?php
          		$navigation_menu = '';
          		foreach($menu as $menu_tab) {
          			$active = '';
          			if(!array_key_exists('subtabs', $menu_tab)) {
          				if($menu_tab['tab']['link'] == $activated_tab)
          					$active = 'class="active"';
          				$navigation_menu .= '<li '.$active.'><a href="'.$menu_tab['tab']['link'].'">'.$menu_tab['tab']['label'].'</a></li>';
          			}
          			else {
          				$navigation_menu .= '<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">'.$menu_tab['tab'].'</a>';
          				$navigation_menu .= '<ul class="dropdown-menu" role="menu">';
          				foreach($menu_tab['subtabs'] as $subtab) {
          					$active = '';
          					if($subtab['link'] == $activated_tab)
          						$active = 'class="active"';
          					$navigation_menu .= '<li '.$active.'><a href="'.$subtab['link'].'">'.$subtab['label'].'</a></li>';
          				}
          				$navigation_menu .= '</ul></li>';
          			}
          		}
          			
				echo $navigation_menu;
          	?>
          	</ul>
          </div>
        </div>
	  </nav>
      <!--[if lt IE 9]>
		  <h5>This page is best viewed in <a href="http://www.mozilla.org/el/firefox/new/">Firefox</a>, <a href="http://www.google.com/intl/el/chrome/browser/">Google Chrome</a>, <a href="http://support.apple.com/downloads/#safari">Safari</a>, <a href="http://www.opera.com/">Opera</a> or <a href="http://windows.microsoft.com/el-gr/internet-explorer/download-ie">Internet Explorer 9 or later</a>.</h5>
	  <![endif]-->