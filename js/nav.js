$(document).ready(function(){
	
	$("li").click(function()
	{
		$(".active").removeClass("active");
		$(this).addClass("active");
	});

	$('.dropdown').hover(function(){
		$('.dropdown-menu').show();
	}, function(){
		$('.dropdown-menu').hide();
	});
	$('.dropdown').click(function(){
		$('.dropdown-menu').toggle();
	});
});