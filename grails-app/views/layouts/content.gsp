<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="es-MX"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="es-MX"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9" xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="es-MX"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://ogp.me/ns/fb#" dir="ltr" lang="es-MX"> <!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="deRide"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'content.css')}" type="text/css">
		<link href='http://fonts.googleapis.com/css?family=Telex|Norican' rel='stylesheet' type='text/css'>
		<meta name="language" content="es-MX"/>
		<meta property="og:url" content="http://www.deride.com.mx/">
		<meta property="og:locale" content="es-MX">
		<meta property="og:site_name" content="DeRide.com.mx">
		<meta property="og:title" content="Compartir Coche en México">
		<meta property="og:type" content="website">
		<meta property="og:image" content="${resource(dir: 'images', file: 'header-logo.png')}">
		<g:javascript src="jquery/jquery-1.10.2.min.js"/>
		<g:javascript src="jquery/ui/jquery-ui-1.10.3.custom.min.js"/>
		<g:javascript src="jquery/ui/i18n/jquery.ui.datepicker-es.min.js"/>
		<link rel="stylesheet" href="${resource(dir: 'js/jquery/ui/css/deride-theme', file: 'jquery-ui-1.10.3.custom.min.css')}" type="text/css">
		<r:layoutResources />
		<g:javascript>
		  window.___gcfg = {lang: 'es-419'};

		  (function() {
		    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
		    po.src = 'https://apis.google.com/js/plusone.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
		  })();
		</g:javascript>
		<g:javascript>
		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', 'UA-42129467-1']);
		  _gaq.push(['_setDomainName', 'deride.com.mx']);
		  _gaq.push(['_trackPageview']);

		  (function() {
		    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();

		</g:javascript>
		<script type="text/javascript" charset="UTF-8" src="http://maps.googleapis.com/maps/api/js?libraries=places&amp;sensor=false&amp;language=es"></script>
		<g:layoutHead/>
	</head>
	<body>
		<g:layoutBody/>
		<r:layoutResources />
		<g:render template="/footer" />
	</body>
</html>
