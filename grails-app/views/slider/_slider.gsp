<div id="contentSlider">
	<h2><g:message code="com.deride.blog.label"/></h2>
	<div class="fluidHeight">
		<div class="sliderContainer">
			<div class="iosSlider">
				<div class="slider">
					<g:each status="i" in="${posts}" var="post">
						<div class="item item${i+1}">
							<div class="inner">
								<div class="text1"><span>${post.title}</span></div>
								<div class="text2"><span>${post.briefing}</div>
							</div>
						</div>
					</g:each>
				</div>
			</div>
			<div class="slideSelectors">
				<g:each status="i" in="${posts}" var="post">
					<div class="item ${i == 0 ? 'selected' : '' }"></div>
				</g:each>
			</div>
		</div>
	</div>
</div>
<g:javascript>
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
</g:javascript>
