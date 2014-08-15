var tempLength = -1;

$(document).ready(function(){
	$('.geo-link').on('click', function(e){
		if (!navigator.userAgent.match(/Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile/i)){
			e.preventDefault();
			window.open('https://www.google.gr/maps/search/'+$(this).attr('href'), '_blank');
		}
		else if(navigator.userAgent.match(/iPhone|iPad|iPod/i)) {
			e.preventDefault();
			window.open('maps'+$(this).attr('href').substring(3), '_blank');
		}
	});
	
	$('.container').on('click', '#contact-form button', function() {
		name	= $.trim($('#full_name').val());
		email	= $.trim($('#email').val());
		subject	= $.trim($('#subject').val());
		message	= $.trim($('#message').val());
		if(name.length == 0 || email.length == 0 || subject.length == 0 || message.length == 0 || message === $('#message-placeholder').val()) {
			$('#contact-form #required-block').animate({ fontSize: ['15px', "swing"], opacity: [1, "swing"] }, 240, function() {
				$('#contact-form #required-block').animate({ fontSize: ['14px', "swing"], opacity: [0.8, "swing"] }, 240, function() {
					$('#contact-form #required-block').animate({ fontSize: ['16px', "swing"], opacity: [1, "swing"] }, 600, function() {
						$('#contact-form #required-block').delay(1000).animate({ fontSize: ['14px', "swing"], opacity: [0.8, "swing"] }, 1200);
					});
				});
			});
			return;
		}
		else {
			if(validateEmail(email))
				submitForm();
			else {
				$('#email').css('border-color', '#FF0000');
				$('#email-error').slideDown('fast');
				
				$('.container').on('focus', '#email', function() {
					if($('#email-error').is(":visible"))
						$('#email-error').slideUp('fast');
					$(this).css('border-color', '#66afe9');
				});
				
				$('.container').on('focusout', '#email', function() {
					$(this).css('border-color', '#CCCCCC');
				});
			}
		}
	});
});

function validateEmail(email) {
	var emailPattern = /^[a-zA-Z0-9\._]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	return emailPattern.test(email);
}

function submitForm() {
	$.ajax({
			url: "/contact_us/processContactForm",
			cache: false,
			method: 'post',
			dataType: "text",
			data: {
				name:	$.trim($('#full_name').val()),
				email:	$.trim($('#email').val()),
				subject:$.trim($('#subject').val()),
				message:$.trim($('#message').val())
			},
			beforeSend : function() {
				$('#contact-form button').append('...');
				$('#contact-form button').attr('disabled', true);
			},
			success: function(result) {
				if(result == 'success') {
					bootbox.alert('<h5 style="color: #0C0">Το μήνυμα σας παραδόθηκε επιτυχώς.</h5><div>Ένας συνεργάτης μας θα επικοινωνήσει το συντομότερο δυνατό μαζί σας.</div><div>Ευχαριστούμε για την επικοινωνία.</div>');
					$('#full_name').val('');
					$('#email').val('');
					$('#subject').val('');
					$('#message').val('');
				}
				else if(result == 'error')
					bootbox.alert('<h5 style="color: #A00">Αποτυχία αποστολής email. Παρακαλώ δοκιμάστε ξανά.</h5>');
				else if(result == 'fill_all')
					bootbox.alert('Fill All...');
				
				$('#contact-form button').html($('#contact-form button').html().substring(0, $('#contact-form button').html().length-3));
				$('#contact-form button').attr('disabled', false);
			},
			error: function(result) {
				bootbox.alert('<h5 style="color: #A00">Αποτυχία αποστολής email. Παρακαλώ δοκιμάστε ξανά.</h5>');
				$('#contact-form button').append('...');
				$('#contact-form button').attr('disabled', false);
			}
		});
}