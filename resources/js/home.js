$(document).ready(function() {
	$('#office-carousel').carousel({
		interval: 4000
	});
	
	$('#office-carousel').on('click', '.carousel-inner', function() {
		alertHtml = $(this).parent().parent().html().replace(/office-carousel/g, 'alert-carousel').replace(/data-interval="(.*)"/, '');
		bootbox.dialog({
			title: $('#office-title').val(),
			message: alertHtml
		});
		$('.bootbox').find('.carousel').carousel(0);
		$('.bootbox').find('.carousel').carousel('pause');
	});
});