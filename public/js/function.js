var $li = $('.img-list').find('> li'),
	$links = $li.find('> a'),
	$lightbox = $('.lightbox'),
	$overlay = $('.overlay'),
	$prev = $('.prev'),
	$next = $('.next'),
	$title = $('.title-lightbox').find('> h4'),
	liIndex,
	targetImg;

	$links.click(function(e){
		e.preventDefault();
		targetImg = $(this).attr('href'); //Click this => a href
		$lightbox.find('img').attr('src', targetImg).$title; // Lojim image v lightbox > img
		$lightbox.fadeIn(500); // Display block
	});

	//Close lightbox img
	$overlay.click(function(){
		$lightbox.fadeOut();
	})
