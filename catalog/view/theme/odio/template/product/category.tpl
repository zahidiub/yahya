<?php echo $header; ?>
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="box">
  <div class="category-info clearafter">
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($thumb || $description) { ?>
    <?php if ($thumb) { ?>
    <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
    <?php } else { ?>
	<div class="image"><span class="no-image"><img src="image/no_image.jpg" alt="<?php echo $heading_title; ?>" /></span></div>
    <?php } ?>
    <?php if ($description) { ?>
    <?php echo $description; ?>
    <?php } ?>
  <?php } ?>
  </div>
  <?php if ($categories) { ?>
  <div class="category-list clearafter">
  	<h2><?php echo $text_refine; ?></h2>
    <?php if (count($categories) <= 5) { ?>
    <ul>
      <?php foreach ($categories as $category) { ?>
      <li><a href="<?php echo $category['href']; ?>" class="button"><?php echo $category['name']; ?></a></li>
      <?php } ?>
    </ul>
    <?php } else { ?>
    <?php for ($i = 0; $i < count($categories);) { ?>
    <ul>
      <?php $j = $i + ceil(count($categories) / 4); ?>
      <?php for (; $i < $j; $i++) { ?>
      <?php if (isset($categories[$i])) { ?>
      <li><a href="<?php echo $categories[$i]['href']; ?>" class="button"><?php echo $categories[$i]['name']; ?></a></li>
      <?php } ?>
      <?php } ?>
    </ul>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  <?php if ($products) { ?>
  <div class="product-filter clearafter">
    <div class="display"><span class="icon-list-grey"><?php echo $text_list; ?></span><a class="icon-grid" onclick="display('grid');"><?php echo $text_grid; ?></a></div>
    <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total" class="icon-compare-grey"><?php echo $text_compare; ?></a></div>
    <div class="limit"><?php echo $text_limit; ?>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    <div class="sort"><?php echo $text_sort; ?>
      <select onchange="location = this.value;">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
  </div>
  <div class="box-product product-list list-layout">
    <?php foreach ($products as $product) { ?>
    <?php
      $thumb_width = $this->config->get('config_image_product_width');
      $thumb_height = $this->config->get('config_image_product_height');
	?>
    <div>
      <?php if ($product['thumb']) { ?>
      <div class="image"><a href="<?php echo $product['href']; ?>" style="<?php echo ($thumb_height < 147) ? 'line-height: 147px' : ''; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
      <?php } else { ?>
      <div class="image">
        <span class="no-image" style="<?php echo ($thumb_width < 147) ? 'width: 147px' : 'width: '.$thumb_width.'px'; ?>; <?php echo ($thumb_height < 147) ? 'line-height: 147px' : 'line-height: '.$thumb_height.'px;'; ?>">
        <img src="image/no_image.jpg" alt="<?php echo $product['name']; ?>" /></span>
      </div>
      <?php } ?>
      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
      <div class="description"><?php echo $product['description']; ?></div>
      <?php if ($product['price']) { ?>
      <div class="price">
        <?php if (!$product['special']) { ?>
        <div><span class="price-fixed"><?php echo $product['price']; ?></span></div>
        <?php } else { ?>
		<div class="special-price"><span class="price-fixed"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span></div>
        <?php } ?>
        <?php if ($product['tax']) { ?>
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($product['rating']) { ?>
      <div class="rating"><img src="catalog/view/theme/odio/image/icons/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
      <?php } ?>
      <div class="cart"><a class="button" onclick="addToCart('<?php echo $product['product_id']; ?>');"><span class="icon-cart-white"><?php echo $button_cart; ?></span></a></div>
      <div class="wishlist"><a class="button" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><span class="icon-wishlist-white"><?php echo $button_wishlist; ?></span></a></div>
      <div class="compare"><a class="button" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><span class="icon-compare-white"><?php echo $button_compare; ?></span></a></div>
    </div>
    <?php } ?>
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>
  <?php if (!$categories && !$products) { ?>
  <div class="content"><p><?php echo $text_empty; ?></p></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
  </div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {

		$('#container .box .grid-layout').each(function () {
			if (!$(this).parents('#column-left, #column-right').length) {
				$(this).attr('class', 'box-product product-list list-layout');
			}
		});

		$('#container .box .list-layout > div').each(function(index, element) {

			html = '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}

			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}

			html += '</div>';

			html += '<div class="right">';

			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';

			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';

			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';

			html += '</div>';

			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';

			var rating = $(element).find('.rating').html();

			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}

			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';

			$(element).html(html);

		});
		
		$('.display').html('<span class="icon-list-grey"><?php echo $text_list; ?></span><a class="icon-grid" onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');

		$.totalStorage('display', 'list'); 
	} else {

		$('#container .box .list-layout').each(function () {
			if (!$(this).parents('#column-left, #column-right').length) {
				$(this).attr('class', 'box-product product-grid grid-layout');
			}
		});

		$('#container .box .grid-layout > div').each(function(index, element) {

			html = '';

			html += '<div class="details">';

			var image = $(element).find('.image').html();

			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}

			html += '<div class="options">';

			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';

			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';

			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';

			html += '</div>';

			html += '</div>';
			
			html += '<div class="name" style="width: ' + <?php echo $this->config->get('config_image_product_width'); ?> + 'px">' + $(element).find('.name').html() + '</div>';

			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}

			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			
			$(element).html(html);
		});	

		// Product hover
		$('#container .box .product-grid > div').hover(function () {
			var totalHeight = $(this).find('.options').height() / 2;
			$(this).find('.options').css('marginTop', -totalHeight);
		}, function () {
		});

		$('.display').html('<a class="icon-list" onclick="display(\'list\');"><?php echo $text_list; ?></a><span class="icon-grid-grey"><?php echo $text_grid; ?></span>');
		
		$.totalStorage('display', 'grid');
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script> 
<?php echo $footer; ?>