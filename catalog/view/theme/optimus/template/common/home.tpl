<?php $themeSettings =  $this->config->get('themecontrol'); ?>
<?php if(isset($themeSettings['themeEnabled'])){ if($themeSettings['themeEnabled'] == 'enable') {?>

<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
			<!--Banner Starts-->
            <div id="banner_section">
				<div id="right-promo" class="promo_banner">
					<?php echo $column_right; ?>
				</div>
				<?php echo $content_top; ?>
			</div>
            <!--Banner Ends-->
<h1 style="display: none;"><?php echo $heading_title; ?></h1>
<?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
<?php } else { ?>
<div id="content">
	Please go to Extensions/Modules/Leisure Control Panel module and set status as "Enable".
</div>
<?php } } else { ?>
<div id="content">
	Please install the "Leisure Control Panel" module and set status as "Enable".
</div>
<?php } ?>