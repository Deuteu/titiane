var ready = function() {
	resizeIFrame();

	//menu display on xtra-small screen
	$('#name').click(function() {
		$('.visible-xs .menu').toggle();});
	$('.visible-xs .menu h4').click(function() {
		$('.visible-xs .menu').toggle();});

	$(".thumbnails-flipper").mouseenter(function() {
		$(this).quickFlipper({}, 1);
	});

	$(".thumbnails-flipper").mouseleave(function() {
		console.log("out");
		$(".thumbnails-flipper").quickFlipper({}, 0);
	});

};

function resizeIFrame() {
	$(".video").height(parseInt($(".video").width()*9/16));

}

$( document ).ready(function() {
	ready();
	$( window ).resize(function() {
		$(".video").height(parseInt($(".video").width()*9/16));
	});
});

$(window).bind('page:change', function() {
	ready();
})