$( document ).ready(function() {
	
	// //hide function
	// function hide_all() {
	// 	$(".work").hide();
	// 	$(".contact").hide();
	// 	$(".resume").hide();}

	// //home = work
	// hide_all();
	// $(".work.demoreel").show();
	// $(".work-submenu").show();

	//resize Video container for 16:9 ratio
	resizeIFrame();

	//menu display on xtra-small screen
	$('#name').click(function() {
		$('.visible-xs .menu').toggle();});
	$('.visible-xs .menu h4').click(function() {
		$('.visible-xs .menu').toggle();});

	// //change pages
	// $(".contact-menu").click(function() {
	// 	//first, stop video
	// 	$('iframe').attr('src', $('iframe').attr('src'));
	// 	//then change page
	// 	hide_all();
	// 	$(".contact").show();
	// });

	// $(".work-menu").click(function() {
	// 	hide_all()
	// 	$(".work-submenu").show();
	// 	$(".demoreel").show();
	// 	//resize video
	// 	$(".video").height(parseInt($(".video").width()*9/16));
	// });

	// $(".resume-menu").click(function() {
	// 	//first, stop video
	// 	$('iframe').attr('src', $('iframe').attr('src'));
	// 	//then change page
	// 	hide_all();
	// 	$(".resume").show();
	// });

	// $(".production-menu").click(function() {
	// 	//first, stop video
	// 	$('iframe').attr('src', $('iframe').attr('src'));
	// 	//then change page
	// 	hide_all();
	// 	$(".work-submenu").show();
	// 	$(".production").show();
	// });

	// $(".demoreel-menu").click(function() {
	// 	//then change page
	// 	hide_all();
	// 	$(".work-submenu").show();
	// 	$(".demoreel").show();
	// });

	$(".thumbnails-flipper").mouseenter(function() {
		$(this).quickFlipper({}, 1);
	});

	$(".thumbnails-flipper").mouseleave(function() {
		console.log("out");
		$(".thumbnails-flipper").quickFlipper({}, 0);
	});

})

function resizeIFrame() {
	$(".video").height(parseInt($(".video").width()*9/16));
	$( window ).resize(function() {
		$(".video").height(parseInt($(".video").width()*9/16));
	});
}

$(window).bind('page:change', function() {
	resizeIFrame();
})