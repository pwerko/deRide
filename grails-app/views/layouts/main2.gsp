<!doctype html>
<html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html xmlns:fb="http://ogp.me/ns/fb#"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="deRide"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main2.css')}" type="text/css">
		<meta name="robots" content="index, nofollow"/>
		<meta property="og:url" content="http://www.deride.com.mx/">
		<meta property="og:locale" content="es_MX">
		<meta property="og:site_name" content="DeRide.com.mx">
		<meta property="og:title" content="Compartir Coche en México">
		<meta property="og:type" content="website">
		<meta property="og:image" content="${resource(dir: 'images', file: 'header-logo.png')}">
		<g:javascript library="jquery" plugin="jquery"/>
		<r:require module="jquery-ui"/>
		<script type="text/javascript">
		  window.___gcfg = {lang: 'es-419'};

		  (function() {
		    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
		    po.src = 'https://apis.google.com/js/plusone.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
		  })();
		</script>
		<script type="text/javascript">
		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', 'UA-42129467-1']);
		  _gaq.push(['_trackPageview']);

		  (function() {
		    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();
		</script>
		<script type="text/javascript" charset="UTF-8" src="http://maps.googleapis.com/maps/api/js?libraries=places&amp;sensor=false&amp;language=es"></script>
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<div id="fb-root"></div>
		<script>
			(function(d, s, id) {
			  var js, fjs = d.getElementsByTagName(s)[0];
			  if (d.getElementById(id)) return;
			  js = d.createElement(s); js.id = id;
			  js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1&appId=538413349540834";
			  fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));
		</script>
		<g:layoutBody/>
		<r:layoutResources />
		<g:render template="/footer" />
	</body>
</html>
