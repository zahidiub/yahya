<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" href="catalog/view/optimus/stylesheet/stylesheet.css">
<?php $themeSettings =  $this->config->get('themecontrol'); ?>
<?php if(isset($themeSettings['themeSetting'])){ if($themeSettings['themeSetting'] != '') { ?>
<?php if($themeSettings['themeSetting'] != 'custom') { ?>
<link rel="stylesheet" href="catalog/view/optimus/stylesheet/<?php echo $themeSettings['themeSetting']; ?>.css">
<?php } else { ?>
	<link rel="stylesheet" href="catalog/view/theme/optimus/stylesheet/custom.css">
	<?php include("themecontrol/custom.tpl"); ?>
<?php } ?>
<?php } else { ?>
<link rel="stylesheet" href="catalog/view/theme/optimus/stylesheet/stylesheet.css">
<?php } } ?>

<?php if(isset($themeSettings['bgImage'])){ if($themeSettings['bgImage'] != '') { ?>
<style type="text/css">
body { background: url(<?php echo HTTP_IMAGE . $themeSettings['bgImage']; ?>); }

</style>
<?php } } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/optimus/stylesheet/stylesheet.css" />
<link href="catalog/view/theme/optimus/stylesheet/cloud-zoom.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
<script src="http://use.edgefonts.net/maven-pro.js"></script>
<script src="http://use.edgefonts.net/ropa-sans.js"></script>
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>

<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/JavaScript" src="catalog/view/javascript/cloud-zoom.1.0.2.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<link rel="stylesheet" href="catalog/view/theme/optimus/stylesheet/bootstrap-responsive.css" /> 
<link rel="stylesheet" href="catalog/view/theme/optimus/stylesheet/flexslider.css" /> 
<script type="text/javascript" src="catalog/view/theme/optimus/js/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="catalog/view/theme/optimus/js/slider/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="catalog/view/theme/optimus/js/drop-menu.js"></script>
<script type="text/javascript" src="catalog/view/theme/optimus/js/selectivizr-min.js"></script>
<script type="text/javascript" src="catalog/view/theme/optimus/js/jquery.contenthover.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>

<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/optimus/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/optimus/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!--[if (gte IE 6)&(lte IE 8)]>
  <script type="text/javascript" src="catalog/view/theme/optimus/js/selectivizr-min.js"></script>
  <noscript><link rel="stylesheet" href="[fallback css]" /></noscript>
<![endif]-->
<script type="text/javascript">
$(function() {
	$(window).scroll(function() {
		if($(this).scrollTop() != 0) {
			$('#toTop').fadeIn();	
		} else {
			$('#toTop').fadeOut();
		}
	});
 
	$('#toTop').click(function() {
		$('body,html').animate({scrollTop:0},800);
	});	
});
</script>

<div id="toTop">^</div>

<?php echo $google_analytics; ?> 
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-35418741-1']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>

<div id="header-container">
<div id="header">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  
   <?php if(isset($themeSettings['headerEnable'])){ if($themeSettings['headerEnable'] == 'enable') { ?>
			<div class="header_customblock">
              <div class="header_info"> 
              <big><?php if(isset($themeSettings['headerLine1'])){ echo $themeSettings['headerLine1']; } ?></big><br>
              <div class="head_info"> <big><?php if(isset($themeSettings['headerLine2'])){ echo $themeSettings['headerLine2']; } ?></big> </div>
				</div>
			  <?php } } ?>

  </div>
  <?php echo $cart; ?>
   <div id="search">
    <div class="button-search"></div>
    <?php if ($filter_name) { ?>
    <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
    <?php } else { ?>
    <input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#ddd';" />
    <?php } ?>
  </div>
  </div>
  <?php if ($categories) { ?>
<div id="menu" class="hidden-phone">
  <ul>
  <li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul> 
    
</div>
  </div>
  <div id="header-bottom">
  

    <div class="links">
	<a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
	<a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
	<a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a>
	<a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
  <?php echo $language; ?>
  <?php echo $currency; ?>
  <div id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
   
  </div>
<div id="dropdrownmenu" class="visible-phone">
			<div class="headerAccBtn">Menu</div>
			<div class="headerAccCnt">
				<ul>
				  	<li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
					<?php foreach ($categories as $category) { ?>
					<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
					  <?php if ($category['children']) { ?>
					  <div>
						<?php for ($i = 0; $i < count($category['children']);) { ?>
						<ul>
						  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
						  <?php for (; $i < $j; $i++) { ?>
						  <?php if (isset($category['children'][$i])) { ?>
						  <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
						  <?php } ?>
						  <?php } ?>
						</ul>
						<?php } ?>
					  </div>
					  <?php } ?>
					</li>
					<?php } ?>
				</ul>
			</div>
			<script type="text/javascript"><!--
				$(document).ready(function() {
				$('.headerAccBtn').click(function() {
					$('.headerAccBtn').removeClass('on');
					$('.headerAccCnt').slideUp('normal');
			   
					if($(this).next().is(':hidden') == true) {
						$(this).addClass('on');
						$(this).next().slideDown('normal');
					 } 
					  
				 });
				 
				$('.headerAccBtn').mouseover(function() {
					$(this).addClass('over');
				}).mouseout(function() {
					$(this).removeClass('over');										
				});

				$('.headerAccCnt').hide();

			});
			//--></script>	
</div>

<?php } ?>
<div id="container">


<div id="notification"></div>
