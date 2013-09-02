$(document).ready(function() {
	$(document).mouseup(function (e)
	{
	    var container = $('.sign-up');

	    if (!container.is(e.target) // if the target of the click isn't the container...
	        && container.has(e.target).length === 0) // ... nor a descendant of the container
	    {
	        $('.sign-up-overlay').fadeOut('slow');
	    }
	});
});

function toggleDialog() {
	$('.sign-up-overlay').fadeToggle('slow');
}

function toggleRecover() {
	$('.password-reset').slideToggle(400, 'linear', function() {

	});
	$('.login').slideToggle(400, 'linear', function() {

	});
}

function toggleSignup() {
	$('.signup-select').slideToggle(400, 'linear', function() {

	});
	$('.login').slideToggle(400, 'linear', function() {

	});
}

function showLogin() {
	$('.form').slideToggle(400, 'linear', function() {

	});
	$('.login').slideToggle(400, 'linear', function() {

	});
}

function showRegister() {
	$('.form').slideToggle(400, 'linear', function() {

	});
	$('.signup-select').slideToggle(400, 'linear', function() {

	});
}
