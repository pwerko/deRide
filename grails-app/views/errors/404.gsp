<!doctype html>
<html>
	<head>
		<title>404 - No encontrado</title>
		<meta name="layout" content="error">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'errors.css')}" type="text/css">
	</head>
	<body>
		<g:renderException exception="${exception}" />
	</body>
</html>
