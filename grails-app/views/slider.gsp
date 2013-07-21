<!doctype html>
<html lang="en-US">
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <title>iOS Slider Demo Page</title>
  <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'slider.css')}">
  <g:javascript library="jquery" plugin="jquery"/>
  <r:layoutResources />
  <g:javascript src="jquery.easing-1.3.js"/>
  <g:javascript src="jquery.iosslider.min.js"/>
</head>

<body>
<div class="fluidHeight">
	<div class="sliderContainer">
		<div class="iosSlider">
			<div class="slider">
				<div class="item item1">
					<div class="inner">
						<div class="text1"><span>Touch Me.</span></div>
						<div class="text2"><span>Hardware accelerated using<br>CSS3 for supported iOS,<br />Android and WebKit</span></div>
					</div>
				</div>

				<div class="item item2">
					<div class="inner">
						<div class="text1"><span>Responsive.</span></div>
						<div class="text2"><span>Respond to change in browser<br>width and adjust automatically</span></div>
					</div>
				</div>

				<div class="item item3">
					<div class="inner">
						<div class="text1"><span>Flexible.</span></div>
						<div class="text2"><span>Run multiple sliders on<br>the same web page</span></div>
					</div>
				</div>

				<div class="item item4">
					<div class="inner">
						<div class="text1"><span>Cross-platform.</span></div>
						<div class="text2"><span>Support a wide variety of browsers<br>to maximize your user base</span></div>
					</div>
				</div>

				<div class="item item5">
					<div class="inner">
						<div class="text1"><span>Customize.</span></div>

						<div class="text2"><span>Set momentum, elasticity,<br>scrollbars and more...</span></div>
					</div>
				</div>
			</div>
		</div>

		<div class="slideSelectors">
			<div class="item selected"></div>
			<div class="item"></div>
			<div class="item"></div>
			<div class="item"></div>
			<div class="item"></div>
		</div>
	</div>
</div>

<script type="text/javascript">
$(document).ready(function() {

	$('.iosSlider').iosSlider({
		desktopClickDrag: true,
		snapToChildren: true,
		navSlideSelector: '.sliderContainer .slideSelectors .item',
		onSlideComplete: slideComplete,
		onSliderLoaded: sliderLoaded,
		onSlideChange: slideChange,
		scrollbar: false,
		autoSlide: true,
		autoSlideTimer: 3300,
    infiniteSlider: true
	});

});

function slideChange(args) {

	$('.sliderContainer .slideSelectors .item').removeClass('selected');
	$('.sliderContainer .slideSelectors .item:eq(' + (args.currentSlideNumber - 1) + ')').addClass('selected');

}

function slideComplete(args) {

	if(!args.slideChanged) return false;

	$(args.sliderObject).find('.text1, .text2').attr('style', '');

	$(args.currentSlideObject).find('.text1').animate({
		right: '100px',
		opacity: '0.8'
	}, 400, 'easeOutQuint');

	$(args.currentSlideObject).find('.text2').delay(200).animate({
		right: '70px',
		opacity: '0.8'
	}, 400, 'easeOutQuint');

}

function sliderLoaded(args) {

	$(args.sliderObject).find('.text1, .text2').attr('style', '');

	$(args.currentSlideObject).find('.text1').animate({
		right: '100px',
		opacity: '0.8'
	}, 400, 'easeOutQuint');

	$(args.currentSlideObject).find('.text2').delay(200).animate({
		right: '70px',
		opacity: '0.8'
	}, 400, 'easeOutQuint');

	slideChange(args);

}
</script>
</body>
</html>
