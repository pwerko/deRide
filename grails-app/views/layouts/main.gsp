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
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'login.css')}" type="text/css">
		<link href='http://fonts.googleapis.com/css?family=Denk+One|Expletus+Sans:400,700|Telex|Norican' rel='stylesheet' type='text/css'>
		<meta name="language" content="es-MX"/>
		<meta name="robots" content="INDEX,FOLLOW"/>
		<meta property="og:url" content="http://www.deride.com.mx/">
		<meta property="og:locale" content="es-MX">
		<meta property="og:site_name" content="DeRide.com.mx">
		<meta property="og:title" content="Compartir Coche en México">
		<meta property="og:type" content="website">
		<meta property="og:image" content="${resource(dir: 'images', file: 'header-logo.png')}">
		<g:javascript src="jquery/jquery-1.10.2.min.js"/>
		<g:javascript src="jquery/ui/jquery-ui-1.10.3.custom.min.js"/>
		<g:javascript src="jquery/ui/i18n/jquery.ui.datepicker-es.min.js"/>
		<g:javascript src="login.js"/>
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

        <!-- Google Tag Manager -->
        <noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-TVCPM5"
        height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
                <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-TVCPM5');</script>
        <!-- End Google Tag Manager -->


		<script type="text/javascript" charset="UTF-8" src="http://maps.googleapis.com/maps/api/js?libraries=places&amp;sensor=false&amp;language=es"></script>
		<g:layoutHead/>
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
		<div class="sign-up-overlay register" style="display: none;">
			<div class="sign-up module">
			  	<g:link controller="main" action="index" class="deride-logo"></g:link>
			  	<g:render template="/login/signup"/>
				<g:render template="/login/register"/>
				<g:render template="/login/done"/>
				<g:render template="/login/login"/>
				<g:render template="/login/recover"/>
			</div>
		</div>
		<g:layoutBody/>
		<r:layoutResources />
	</body>
</html>
