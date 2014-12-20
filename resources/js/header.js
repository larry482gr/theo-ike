var tmp_hash = '';
var locale = '';

$(document).ready(function() {
	setLocale();
	
	setInterval(function(){
		showDateTime(locale);
	}, 1000);
	
	showPage();
	
	window.setInterval(function () {
	    if (window.location.hash != tmp_hash) {
	        tmp_hash = window.location.hash;
	        showPage();
	    }
	}, 400);
	
	function showPage() {
		if(window.location.hash.length > 0) {
			$('.navbar li').removeClass('active');
			$('.navbar li').find('a[href="'+window.location.hash+'"]').parent().addClass('active');
			// $(this).parent().addClass('active');
			$('.panel-title').animate({ width: 0 }, 300, function() {
				$('.panel-title').text($(window.location.hash+'-title').val());
				$('.panel-title').animate({ width: 300 }, 300);
			});
			$('#content-panel').animate({ opacity: 0 }, 300, function() {
				$('dl.shown').removeClass('shown').addClass('hidden');
				$(window.location.hash).removeClass('hidden').addClass('shown');
				$('#content-panel').animate({ opacity: 1 }, 300);
			});
			
			if(window.location.hash == '#office')
				$('#office-carousel').carousel(0);
				
			$('#full_name').val('');
			$('#email').val('');
			$('#subject').val('');
			$('#message').val('');
		}
		else {
			$('.navbar li:first-child').addClass('active');
			$('.panel-title').text($('#home-title').val());
			$('#home').removeClass('hidden').addClass('shown');
		}
		
		tmp_hash = window.location.hash;
		
		$('.flags-div a').each(function() {
			$(this).attr('href', $(this).attr('rel') + tmp_hash);
		});
	}
	
	function setLocale() {
		switch($('#lang').val()) {
			case 'gr':
				locale = 'el-GR';
				break;
			case 'en':
				locale = 'en-US';
				break;
			default:
				locale = 'el-GR';
		}
	}
	
	function showDateTime(loc) {
		var date = new Date();
		var options = {
		    weekday: "long", year: "numeric", month: "short",
		    day: "numeric", hour: "2-digit", minute: "2-digit", second: "2-digit"
		};
		
		$('#time-interval').text(date.toLocaleTimeString(loc, options));
	}
});