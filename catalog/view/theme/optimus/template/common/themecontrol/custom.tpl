<?php $themeSettings =  $this->config->get('themecontrol'); { ?>
<style type="text/css">
	/*-----------------------------------COLOR THEME HERE*/
	
	#footer .column a:hover{ border-left-color:#<?php if(isset($themeSettings['customColor'])){ echo $themeSettings['customColor']; } ?>;}
	
	footer .footer_customblock .shipping_info span, ul.breadcrumb li.active a, .product_rightcol .pr_price big, footer .footer_links li a:hover, #shopping-cart-table tr td span.pr_info, #totals-table .total, .cart_drop ul li span.price, .cart_drop .cart_bottom .subtotal_menu big, ul.simpleTabsNavigation li a.current, .product-info .description span{color:#<?php if(isset($themeSettings['customColor'])){ echo $themeSettings['customColor']; } ?>;}
	#footer .column ul li a:hover{ border-left-color:#<?php if(isset($themeSettings['customColor'])){ echo $themeSettings['customColor']; } ?>;}
	.product-grid  .cart a.button:hover, .product-list .right .cart a.button:hover{background-color:#<?php if(isset($themeSettings['customColor'])){ echo $themeSettings['customColor']; } ?>;}
	#ps_slider_late.ps_slider_late a.disabled, .ps_slider_late a.disabled:hover, #ps_slider.ps_slider a.disabled, .ps_slider_late a.disabled:hover{background-color:#<?php if(isset($themeSettings['customColor'])){ echo $themeSettings['customColor']; } ?>;}
    #slideshow .flex-control-paging li a.flex-active{background-color:#<?php if(isset($themeSettings['customColor'])){ echo $themeSettings['customColor']; } ?>;}
	#ps_slider .ps_album .cart a:hover, #ps_slider_late .ps_album_late .cart a:hover, #content .product-info .right .button:hover{background-color:#<?php if(isset($themeSettings['customColor'])){ echo $themeSettings['customColor']; } ?>;}
	.box-heading .box-heading-over {border-bottom-color:#<?php if(isset($themeSettings['customColor'])){ echo $themeSettings['customColor']; } ?>;}
	.products_grid li:hover img, .products_list li:hover img{ border-color:#<?php if(isset($themeSettings['customColor'])){ echo $themeSettings['customColor']; } ?>;}
	#footer .column a:hover{ border-left-color:#<?php if(isset($themeSettings['customColor'])){ echo $themeSettings['customColor']; } ?>}
	#column-left .box-category > ul > li > a:hover{color: #<?php if(isset($themeSettings['customColor'])){ echo $themeSettings['customColor']; } ?>}
	#column-left .box-category > ul > li:hover{border-left-color: #<?php if(isset($themeSettings['customColor'])){ echo $themeSettings['customColor']; } ?>}
	.product-info .price .price-old, .product-list  .price .price-old, .box .box-category > ul > li a.active,.box-category > ul > li > a:hover, .ps_slider  .ps_album  .altkutu  .price-old,.ps_slider_late  .ps_album_late  .altkutu  .price-old, .product-info  .right .description span,  .product-grid  >div .price .price-old, #column-left .box .box-content .box-productspe .price-old, #column-left .box .box-content .box-productspe .price-old{color:#<?php if(isset($themeSettings['customColor'])){ echo $themeSettings['customColor']; } ?>;}
</style>
<?php } ?>