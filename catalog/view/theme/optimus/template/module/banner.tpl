<?php foreach ($banners as $banner) { ?>
	<?php if ($banner['link']) { ?>
		<div class="pbanner"><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></div>
	<?php } else { ?>
		<div class="pbanner"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></div>
	<?php } ?>
	
<?php } ?>


<script>
$('#d3').contenthover({
    overlay_width:270,
    overlay_height:180,
    effect:'slide',
    slide_direction:'right',
    overlay_x_position:'right',
    overlay_y_position:'center',
    overlay_background:'#000',
    overlay_opacity:0.8
});

.contenthover {width:100%; height:100%; padding:20px 20px 10px 20px; }
<div class="contenthover" style="padding:20px"><a href="<?php echo $banner['link']; ?>">Read More</a></div>
</script>