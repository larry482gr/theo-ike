$(document).ready(function() {
	var balanceLink = $('#balance-list button:last-child').attr('id');
	$('#balance-list button:last-child').addClass('active');
	
	
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
	
	$('#balance-file').attr('data', '/resources/files/balance/' + $('#balance-list button:last-child').attr('id') + '.pdf');
	
	$('.balance-link').on('click', function() {
		if($(this).attr('id') != balanceLink) {
			$('#balance-file').attr('data', '/resources/files/balance/' + $(this).attr('id') + '.pdf');
			balanceLink = $(this).attr('id');
			$('#balance-list button').removeClass('active');
			$(this).addClass('active');
		}
	});
});