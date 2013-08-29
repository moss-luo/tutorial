$(function($){
	$(".ic-category").mouseenter(function(){
		$(".ic-category>.dropdown").addClass("open");
	});
	$(".ic-category").mouseleave(function(){
		$(".ic-category>.dropdown").removeClass("open");
	});
});