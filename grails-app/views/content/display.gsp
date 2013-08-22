<html>
	<head>
		<title>${content?.seoTitle}</title>
		<meta name="description" content="${content?.metaDescription}"/>
		<meta name="keywords" content="${content?.focusKeyword}">
		<meta name="robots" content="${content?.robots}"/>
		<!--[if gte IE 9]>
  			<style type="text/css">
    			.gradient {
       				filter: none;
    			}
  			</style>
		<![endif]-->
		<meta name="layout" content="content"/>
		<g:javascript>
			function toggleUserMenu() {
				$('.dropdown-menu').fadeToggle('slow');
			}
		</g:javascript>
	</head>
	<body>
		<g:render template="/header"/>
		<div id="container">
			<div id="content-wrapper" class="clearfix row">
				<div id="mainDiv" class="content-right twelve columns">
					<g:render template="/content/display" bean="${content}"/>
					<g:render template="/disqus"/>
				</div>
			</div>
		</div>
	</body>
</html>
