/*--------------------------------------------------------------------------/
* @Author		KulerThemes.com http://www.kulerthemes.com
* @Copyright	Copyright (C) 2012 - 2013 KulerThemes.com. All rights reserved.
* @License		KulerThemes.com Proprietary License
/---------------------------------------------------------------------------*/

$(document).ready(function () {

	// Product hover
	$('#container .box .product-grid > div').hover(function () {
		var totalHeight = $(this).find('.options').height() / 2;
		$(this).find('.options').css('marginTop', -totalHeight);
	}, function () {
	});

});