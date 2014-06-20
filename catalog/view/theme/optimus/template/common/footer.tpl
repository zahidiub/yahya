</div><?php $themeSettings =  $this->config->get('themecontrol'); ?>
		<!--Custom Footer Starts-->
		  <div class="subscribe_block">
			<div class="find_us">
			<h3 class="find_usheadig"><?php if(isset($themeSettings['findusheadig'])){ echo $themeSettings['findusheadig']; } ?></h3>			  
			  <?php if(isset($themeSettings['twitterUrl'])){ if($themeSettings['twitterUrl'] != '') { ?>
				<a class="twitter" href="<?php echo $themeSettings['twitterUrl']; ?>"></a> 
			  <?php } } ?>
			  <?php if(isset($themeSettings['facebookUrl'])){ if($themeSettings['facebookUrl'] != '') {?>
				<a class="facebook" href="<?php echo $themeSettings['facebookUrl']; ?>"></a> 
			  <?php } } ?>
			  <?php if(isset($themeSettings['googleplusUrl'])){ if($themeSettings['googleplusUrl'] != '') { ?>
				<a class="googleplus" href="<?php echo $themeSettings['googleplusUrl']; ?>"></a> 
			  <?php } } ?>
			</div>
			<h3 class="cbh"><?php if(isset($themeSettings['customBlockheading'])){ echo $themeSettings['customBlockheading']; } ?></h3>
			<div class="subscribe_nl">
			  <?php if(isset($themeSettings['footerAbout'])){ echo html_entity_decode($themeSettings['footerAbout']); } ?>
			</div>
		  </div>
		<!--Custom Footer Ends--> 
		
<div id="footer" class="hidden-phone">
<div id="footer-inner">

  <div class="column">
    <h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
    
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_extra; ?></h3>
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_account; ?></h3>
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
    <div class="column">
    <h3><?php echo $this->config->get('config_name')?></h3>
    <ul>
	    <li><a href="mailto:<?php echo $this->config->get('config_email'); ?>"><?php echo $this->config->get('config_email'); ?></a></li>
        <li><?php echo $this->config->get('config_telephone'); ?></li>
		<li><?php echo $this->config->get('config_address'); ?></li>
    	
    </ul>
  </div>
 		<?php if(isset($themeSettings['shippingEnable'])){ if($themeSettings['shippingEnable'] == 'enable') { ?>
				<div class="footer_customblock">
                <div class="shipping_info"> <big><?php if(isset($themeSettings['shippingLine1'])){ echo $themeSettings['shippingLine1']; } ?></big><br>
          
                <div class="contact_info"> <p><?php if(isset($themeSettings['footerAboutus'])){ echo $themeSettings['footerAboutus']; } ?></p> </div>
				</div>
			  <?php } } ?></div>
  
<div id="powered"> <address>
			  <?php if($themeSettings['footerPaymentLogo']): ?>
				<img src="<?php echo HTTP_IMAGE . $themeSettings['footerPaymentLogo']; ?>" alt="" /></img>
			<?php endif; ?></address>
		<div class="power-right">	<?php if(isset($themeSettings['footerCopyright'])){ echo $themeSettings['footerCopyright']; } ?> Theme by <a href="http://themeforest.net/user/omrfrk?ref=omrfrk" target="_blank">Omrfrk</a> </div>
			</div>
</div>
</div>

			

<div id=" minifooter" class="visible-phone">
<div id="firstpane" class="menu_list">
  <p class="menu_head"><?php echo $text_information; ?></p>
    <div class="menu_body">
	 <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
    </div>

</div>
<div id="firstpane" class="menu_list">
  <p class="menu_head"><?php echo $text_service; ?></p>
    <div class="menu_body">
	 <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
    </div>
  
</div>
<div id="firstpane" class="menu_list">
  <p class="menu_head"><?php echo $text_extra; ?></p>
    <div class="menu_body">
	<ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
    </div>
  
</div>
<div id="firstpane" class="menu_list">
  <p class="menu_head"><?php echo $text_account; ?></p>
    <div class="menu_body">
	  <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
    </div>
   
			</div>
		  </div>
</div>
</div>
</div>
<!-- 
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

</body></html>
<script>
$(document).ready(function(){  
  $("#firstpane p.menu_head").click(function()
{
    $(this).css({backgroundImage:"url(down.png)"}).next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
    $(this).siblings().css({backgroundImage:"url(left.png)"});
}); 
	});  
</script>


