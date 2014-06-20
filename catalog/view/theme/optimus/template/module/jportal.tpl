<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/base/jquery.ui.tabs.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery.ui.tabs.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/minified/jquery.ui.tabs.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/minified/jquery.ui.widget.js"></script>

<script> 
$(function() {
	$( "#tabs" ).tabs();
});
</script>
<style>
.ui-tabs{margin-bottom:20px !important;}
.ui-widget-content{background:#FFF !important;}
div.ui-tabs-panel table.list{border:none;}
div.ui-tabs-panel table.list td{border:none;}
.ui-state-optimus{border:1px solid #FFF !important;}
table.list{margin-bottom:0px !important;}
.ui-widget{font-family:Arial,Helvetica,sans-serif;}
.noavailmsg{padding:6px;text-align:center;background:#E8E8E8;}
.ui-tabs .ui-tabs-nav{[height:29px;]height:30px;}
.maincat{ background:none repeat scroll 0 0 #FDF8E8;border:1px solid #F7B64B;float:left;margin:1px;padding:5px;text-decoration:none;width:200px;}
.subcat{background:none repeat scroll 0 0 #EEEEEE;border:1px solid #CCCCCC;float:left;padding:5px;text-decoration:none;width:200px;margin:1px;}
.lsnone{list-style:none;}
.bname{width:110px; text-align:center;}
</style>

<div class="top">
  <div class="left"></div>
  <div class="right"></div>
  <div class="center">
    <div class="heading"><?php if(trim($jportal_title)){ echo $jportal_title; } else { echo "&nbsp;"; } ?></div>
  </div>
</div>

<div class="middle">
<?php if ($jp_latest_status || $jp_best_sellers_status || $jp_featured_status || $jp_specials_status || $jp_customers_status || $jp_stores_status || $jp_brands_status || $jp_html_status || $jp_categories_status) { ?>
<div class="tabs" id="tabs">
	<ul>
		<?php foreach($jp_tabs as $jp_tab) {?>
			<li><a href="#<?php echo $jp_tab[1]; ?>"><?php echo $jp_tab[0]; ?></a></li> 
		<?php } ?>
	</ul>
	<?php if ($jp_latest_status) { ?>
		<div id="tab_latest" class="tab_page">
		  <?php if(!empty($latest_products)) { ?>
		  <div class="box-product">
		  <table class="list">
			<?php for ($i = 0; $i < sizeof($latest_products); $i = $i + 6) { ?>
			  <tr>
				<?php for ($j = $i; $j < ($i + 6); $j++) { ?>
				<td style="width: 16.66%; line-height:20px;"><?php if (isset($latest_products[$j])) { ?>
				<div class="image">
					<a href="<?php echo  $latest_products[$j]['href']; ?>">
						<?php if($latest_products[$j]['thumb']){ ?>
							<img src="<?php echo  $latest_products[$j]['thumb']; ?>" alt="<?php echo $latest_products[$j]['name']; ?>" />
						<?php }else{ ?>
							<img src="image/no_image.jpg" alt="<?php echo $latest_products[$j]['name']; ?>" />
						<?php } ?>
					</a>
				</div>
				<div class="name"><a href="<?php echo $latest_products[$j]['href']; ?>"><?php echo $latest_products[$j]['name']; ?></a></div>
				<span style="color: #999; font-size: 11px;"><?php echo $latest_products[$j]['model']; ?></span><br />
				<?php if ($display_price) { ?>
				<?php if (!$latest_products[$j]['special']) { ?>
				<span style="color: #900; font-weight: bold;"><?php echo $latest_products[$j]['price']; ?></span>
				<?php } else { ?>
				<span style="color: #900; font-weight: bold; text-decoration: line-through;"><?php echo $latest_products[$j]['price']; ?></span> <span style="color: #F00;"><?php echo $latest_products[$j]['special']; ?></span>
				<?php } ?>
				<div class="cart"><a onclick="addToCart('<?php echo $latest_products[$j]['product_id']; ?>');" class="button"><span><?php echo $button_cart; ?></span></a></div>
				<?php } ?>
				<?php if ($latest_products[$j]['rating']) { ?>
				<br/>
				<img src="catalog/view/theme/optimus/image/stars-<?php echo $latest_products[$j]['rating'] . '.png'; ?>" alt="<?php echo $latest_products[$j]['stars']; ?>" /><br/>
				<?php } ?>
				
				<?php if ($latest_products[$j]['stores']) { ?>
				<b><?php echo $text_available_at; ?></b><br />
				 <?php foreach($latest_products[$j]['stores'] as $store) { ?>
					  <a href="<?php echo $store['url'];?>" title="Visit <?php echo $store['name'];?> store"><?php echo $store['name'];?></a><br/>
				  <?php } ?>
				<?php } ?>
				<?php } ?></td>
				<?php } ?>
			  </tr>
			  <?php } ?>
			</table>  
			</div>
		  <?php } else { ?>
			<div class="noavailmsg"><?php echo $text_no_latest; ?></div>
		  <?php } ?>
		</div>
	<?php } ?>
	
	<?php if ($jp_best_sellers_status) { ?>
		<div id="tab_best_sellers" class="tab_page">
		  <?php if (!empty($best_sellers_products)) { ?>
			<div class="box-product">
			  <table class="list">
				<?php for ($i = 0; $i < sizeof($best_sellers_products); $i = $i + 6) { ?>
			  <tr>
				<?php for ($j = $i; $j < ($i + 6); $j++) { ?>
				<td style="width: 16.66%;line-height:20px;"><?php if (isset($best_sellers_products[$j])) { ?>
				<div class="image">
					<a href="<?php echo  $best_sellers_products[$j]['href']; ?>">				 
						<?php if($best_sellers_products[$j]['thumb']){ ?>
							<img src="<?php echo  $best_sellers_products[$j]['thumb']; ?>" alt="<?php echo $best_sellers_products[$j]['name']; ?>" />
						<?php }else{ ?>
							<img src="image/no_image.jpg" alt="<?php echo $best_sellers_products[$j]['name']; ?>" />
						<?php } ?>
					</a>
				</div>
				<div class="name"><a href="<?php echo $best_sellers_products[$j]['href']; ?>"><?php echo $best_sellers_products[$j]['name']; ?></a></div>
				<span style="color: #999; font-size: 11px;"><?php echo $best_sellers_products[$j]['model']; ?></span><br />
				<?php if ($display_price) { ?>
				<?php if (!$best_sellers_products[$j]['special']) { ?>
				<span style="color: #900; font-weight: bold;"><?php echo $best_sellers_products[$j]['price']; ?></span>
				<?php } else { ?>
				<span style="color: #900; font-weight: bold; text-decoration: line-through;"><?php echo $best_sellers_products[$j]['price']; ?></span> <span style="color: #F00;"><?php echo $best_sellers_products[$j]['special']; ?></span>
				<?php } ?>
				<div class="cart"><a onclick="addToCart('<?php echo $best_sellers_products[$j]['product_id']; ?>');" class="button"><span><?php echo $button_cart; ?></span></a></div>
				<?php } ?>
				<?php if ($best_sellers_products[$j]['rating']) { ?>
				<br /><img src="catalog/view/theme/optimus/image/stars-<?php echo $best_sellers_products[$j]['rating'] . '.png'; ?>" alt="<?php echo $best_sellers_products[$j]['reviews']; ?>" /><br />
				<?php } ?>      
				<?php if ($best_sellers_products[$j]['stores']) { ?>
				<b><?php echo $text_available_at; ?></b><br />
				 <?php foreach($best_sellers_products[$j]['stores'] as $store) { ?>
					  <a href="<?php echo $store['url'];?>" title="Visit <?php echo $store['name'];?> store"><?php echo $store['name'];?></a><br/>
				  <?php } ?>
				<?php } ?>
				<?php } ?></td>
				<?php } ?>
			  </tr>
			  <?php } ?>
			</table>
		  </div>
		  <?php } else { ?>
			<div class="noavailmsg"><?php echo $text_no_best_sellers; ?></div>
		  <?php } ?>
		</div>
	<?php } ?>

	<?php if ($jp_featured_status) { ?>
		<div id="tab_featured" class="tab_page">
		<?php if (!empty($featured_products)) { ?>
			<div class="box-product">
			<table class="list">
				<?php for ($i = 0; $i < sizeof($featured_products); $i = $i + 6) { ?>
				<tr>
				  <?php for ($j = $i; $j < ($i + 6); $j++) { ?>
				  <td style="width: 16.66%;line-height:20px;"><?php if (isset($featured_products[$j])) { ?>
				  <div class="image">
					<a href="<?php echo $featured_products[$j]['href']; ?>">				 
						<?php if($featured_products[$j]['thumb']){ ?>
							<img src="<?php echo  $featured_products[$j]['thumb']; ?>" alt="<?php echo $featured_products[$j]['name']; ?>" />
						<?php }else{ ?>
							<img src="image/no_image.jpg" alt="<?php echo $featured_products[$j]['name']; ?>" />
						<?php } ?>
					</a>
				  </div>
				  <div class="name"><a href="<?php echo $featured_products[$j]['href']; ?>"><?php echo $featured_products[$j]['name']; ?></a></div>
				  <span style="color: #999; font-size: 11px;"><?php echo $featured_products[$j]['model']; ?></span><br />
				  <?php if ($display_price) { ?>
				  <?php if (!$featured_products[$j]['special']) { ?>
				  <span style="color: #900; font-weight: bold;"><?php echo $featured_products[$j]['price']; ?></span>
				  <?php } else { ?>
				  <span style="color: #900; font-weight: bold; text-decoration: line-through;"><?php echo $featured_products[$j]['price']; ?></span> <span style="color: #F00;"><?php echo $featured_products[$j]['special']; ?></span>
				  <?php } ?>
				  <div class="cart"><a onclick="addToCart('<?php echo $featured_products[$j]['product_id']; ?>');" class="button"><span><?php echo $button_cart; ?></span></a></div>
				  <?php } ?>
				  <?php if ($featured_products[$j]['rating']) { ?>
				   <br /><img src="catalog/view/theme/optimus/image/stars-<?php echo $featured_products[$j]['rating'] . '.png'; ?>" alt="<?php echo $featured_products[$j]['reviews']; ?>" />
				  <?php } ?>
				  <?php } ?></td>
				  <?php } ?>
				</tr>
				<?php } ?>
			</table>
			</div>
		  <?php } else { ?>
			<div class="noavailmsg"><?php echo $text_no_featured; ?></div>
		  <?php } ?> 
	  </div>
	<?php } ?>
	
	<?php if ($jp_specials_status) { ?>
		<div id="tab_specials" class="tab_page">
		<?php if (!empty($specials_products)) { ?>
			<div class="box-product">
			<table class="list">
				<?php for ($i = 0; $i < sizeof($specials_products); $i = $i + 6) { ?>
				<tr>
				  <?php for ($j = $i; $j < ($i + 6); $j++) { ?>
				  <td style="width: 16.66%;line-height:20px;"><?php if (isset($specials_products[$j])) { ?>
					<div class="image">
					<a href="<?php echo $specials_products[$j]['href']; ?>">				 
						<?php if($specials_products[$j]['thumb']){ ?>
							<img src="<?php echo  $specials_products[$j]['thumb']; ?>" alt="<?php echo $specials_products[$j]['name']; ?>" />
						<?php }else{ ?>
							<img src="image/no_image.jpg" alt="<?php echo $specials_products[$j]['name']; ?>" />
						<?php } ?>
					</a>
				    </div>
					<div class="name"><a href="<?php echo $specials_products[$j]['href']; ?>"><?php echo $specials_products[$j]['name']; ?></a></div>
				  <span style="color: #999; font-size: 11px;"><?php echo $specials_products[$j]['model']; ?></span><br />
				  <?php if ($display_price) { ?>
				  <?php if (!$specials_products[$j]['special']) { ?>
				  <span style="color: #900; font-weight: bold;"><?php echo $specials_products[$j]['price']; ?></span>
				  <?php } else { ?>
				  <span style="color: #900; font-weight: bold; text-decoration: line-through;"><?php echo $specials_products[$j]['price']; ?></span> <span style="color: #F00;"><?php echo $specials_products[$j]['special']; ?></span>
				  <?php } ?>
				  <div class="cart"><a onclick="addToCart('<?php echo $specials_products[$j]['product_id']; ?>');" class="button"><span><?php echo $button_cart; ?></span></a></div>
				  <?php } ?>
				  <?php if ($specials_products[$j]['rating']) { ?>
				   <br /><img src="catalog/view/theme/optimus/image/stars-<?php echo $specials_products[$j]['rating'] . '.png'; ?>" alt="<?php echo $specials_products[$j]['reviews']; ?>" />
				  <?php } ?>
				  <?php } ?></td>
				  <?php } ?>
				</tr>
				<?php } ?>
			</table>
			</div>
		  <?php } else { ?>
			<div class="noavailmsg"><?php echo $text_no_specials; ?></div>
		  <?php } ?> 
	  </div>
	<?php } ?>

	<?php if ($jp_customers_status) { ?>
		<div id="tab_customers" class="tab_page">
			<?php if (!empty($jp_customers)) { ?>
			<table class="list">
				<?php for ($i = 0; $i < sizeof($jp_customers); $i = $i + 6) { ?>
				<tr>
				  <?php for ($j = $i; $j < ($i + 6); $j++) { ?>
				  <td style="width: 16.66%; text-align:left;"><?php if (isset($jp_customers[$j])) { ?>
				  <img src="catalog/view/theme/optimus/image/customer.png" style="vertical-align:middle;">
				  <span>
					<?php echo ucwords($jp_customers[$j]['firstname'].' '.$jp_customers[$j]['lastname']); ?><br />
					<span style='color:#666;'>Since: <?php echo date ("M j, Y", strtotime($jp_customers[$j]['date_added'])); ?></span>
				  </span>
				  <br />
				  <?php } ?></td>
				  <?php } ?>
				</tr>
				<?php } ?>
			</table>
		  <?php } else { ?>
			<div class="noavailmsg"><?php echo $text_no_customers; ?></div>
		  <?php } ?> 
		</div>
	<?php } ?>
	
	<?php if ($jp_stores_status && $jp_current_store_id == '0') { ?>
		<div id="tab_stores" class="tab_page">
			<?php if (!empty($jp_stores)) { ?>
			<div class="box-product">
			<table class="list">
			<?php for ($i = 0; $i < sizeof($jp_stores); $i = $i + 6) { ?>
			<tr>
			  <?php for ($j = $i; $j < ($i + 6); $j++) {?>
			  <td style="width: 16.66%;"><?php if (isset($jp_stores[$j])) {  ?>
			  <div class="image"><a href="<?php echo $jp_stores[$j]['href']; ?>"><img src="<?php echo $jp_stores[$j]['thumb']; ?>" title="<?php echo $jp_stores[$j]['name']; ?>" alt="<?php echo $jp_stores[$j]['name']; ?>" /></a></div>
			  <div class="name"><a href="<?php echo $jp_stores[$j]['href']; ?>"><?php echo $jp_stores[$j]['name']; ?></a></div><br />
			  <?php } ?></td>
			  <?php } ?>
			</tr>
			<?php } ?>
			</table>
			</div>
		  <?php } else { ?>
			<div class="noavailmsg"><?php echo $text_no_stores; ?></div>
		  <?php } ?>    
		</div>
	<?php } ?>

	<?php if ($jp_brands_status) { ?>
		<div id="tab_brands" class="tab_page">
			<?php if (!empty($jp_manufacturers)) { ?>
			<div class="box-product">
			<table class="list">
				<?php for ($i = 0; $i < sizeof($jp_manufacturers); $i = $i + 6) { ?>
				<tr>
				  <?php for ($j = $i; $j < ($i + 6); $j++) { ?>
				  <td style="width: 16.66%;"><?php if (isset($jp_manufacturers[$j])) { ?>
				  <div class="image"><a href="<?php echo $jp_manufacturers[$j]['href']; ?>"><img src="<?php echo $jp_manufacturers[$j]['thumb']; ?>" title="<?php echo $jp_manufacturers[$j]['name']; ?>" alt="<?php echo $jp_manufacturers[$j]['name']; ?>" /></a></div>
				  <div class="name bname"><a href="<?php echo $jp_manufacturers[$j]['href']; ?>"><?php echo $jp_manufacturers[$j]['name']; ?></a></div>
				  <br />
				  <?php } ?></td>
				  <?php } ?>
				</tr>
				<?php } ?>
			</table>
			<div style="float:left; text-align:right;width:95%"><a href="index.php?route=product/manufacturer"><?php echo $text_view_all; ?></a></div>
			</div>
		  <?php } else { ?>
			<div class="noavailmsg"><?php echo $text_no_brands; ?></div>
		  <?php } ?>    
		</div>	
	<?php } ?>
	
	<?php if ($jp_html_status) { ?>
		<div id="tab_html" class="tab_page">
			<?php if ($jp_html_text) { ?>
			<div><?php echo html_entity_decode($jp_html_text, ENT_QUOTES, "UTF-8"); ?></div>
		  <?php } else { ?>
			<div class="noavailmsg"><?php echo $text_no_html; ?></div>
		  <?php } ?>    
		</div>	
	<?php } ?>
	
	<?php if ($jp_categories_status) { ?>
		<div id="tab_categories" class="tab_page">
		  <?php if ($jp_categories) { ?>
			<div class="box-product">
				<ul style="float:left;">
				<?php foreach ($jp_categories as $category) { ?>
					<li class="lsnone"><a class="maincat" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
					  <?php if ($category['children']) { ?>
					  <div>
					    <?php for ($i = 0; $i < count($category['children']);) { ?>
					    <ul>
					      <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
					      <?php for (; $i < $j; $i++) { ?>
					      <?php if (isset($category['children'][$i])) { ?>
					      <li class="lsnone"><a class="subcat" href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
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
		  <?php } else { ?>
			<div class="noavailmsg"><?php echo $text_no_categories; ?></div>
		  <?php } ?>    
		</div>	
	<?php } ?>
	
</div>
<?php } else { ?>
	<div class="noavailmsg"><?php echo $text_please_disable; ?></div>
<?php } ?>

</div>

<div class="bottom">
  <div class="left"></div>
  <div class="right"></div>
  <div class="center"></div>
</div>