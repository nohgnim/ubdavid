<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en">
<!--<![endif]-->
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
<title>Inscripción del Usuarío Nuevo</title>
<meta name="description" content="Inscripción por Lecciones Bíblicas gratis por Internet para personas de cualquier edad usando lecciones del Club del Buzón" />
<meta name="keywords" content="jesucristo, jesus en el cielo, dios padre, exploradores de la biblia, libros de la biblia, Lecciones en Espa&ntilde;ol, lecciones desde la Biblia, temas para adolescentes, hora del cuento, ver y hacer, exploradores, vencedores, cielo, David Jonathan, Jes&uacute;s, el club del Buz&oacute;n" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="cleartype" content="on">
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="author" content="Jerry Durston, President" />
<meta name="author" content="Brian Cummins, Web Designer" />
<link href="../css/boilerplate.css" rel="stylesheet" type="text/css"><!-- these 3 css files need absolute addresses before final upload -->
<link href="../css/lessons-common.css" rel="stylesheet" type="text/css">
<link href="../css/lessons-spanish.css" rel="stylesheet" type="text/css">
<link href="registration.css" rel="stylesheet" type="text/css"> <!-- this css file needs to be uploaded to "secure" subdomain -->
<!-- FAVICONS -->
<link rel="shortcut icon" href="../favicon.ico">
<link rel="apple-touch-icon" sizes="57x57" href="http://ubdavid.org/images/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="114x114" href="http://ubdavid.org/images/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="72x72" href="http://ubdavid.org/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="144x144" href="http://ubdavid.org/images/apple-touch-icon-144x144.png">
<link rel="icon" type="image/png" href="http://ubdavid.org/images/favicon-96x96.png" sizes="96x96">
<link rel="icon" type="image/png" href="http://ubdavid.org/images/favicon-16x16.png" sizes="16x16">
<link rel="icon" type="image/png" href="http://ubdavid.org/images/favicon-32x32.png" sizes="32x32">
<meta name="msapplication-TileColor" content="#2d89ef">
<meta name="msapplication-TileImage" content="http://ubdavid.org/images/mstile-144x144.png">
<meta name="msapplication-config" content="http://ubdavid.org/images/browserconfig.xml">

<script>var __adobewebfontsappname__="dreamweaver"</script>
<script src="//use.edgefonts.net/amaranth:n4:default.js" type="text/javascript"></script>
<script src="//use.edgefonts.net/droid-serif.js"></script>
<script>
	function verify_element(elem, msg) {
		if (elem.type != null) {
			lType = elem.type;
			lFocus = elem;
		} else {
			lType = elem[0].type;
			lFocus = elem[0];
		}
		valid = true;
		switch (lType) {
			// Text fields
			case "text":
			case "textarea":
				if (elem.value == "") {valid=false;}
				break;

			// Drop-down validation, Assume first option is "Please select from List"
			case "select-one":
			case "select-multiple":
				if (elem.selectedIndex == 0) {valid=false;}
				break;

			// Checkbox validation
			case "checkbox":
				valid = false;
				for (counter = 0; counter < elem.length; counter++) {
					if (elem[counter].checked) {
						valid = true;
					}
				}
				break;

			// Checkbox validation
			case "radio":
				valid = false;
				for (counter = 0; counter < elem.length; counter++) {
					if (elem[counter].checked) {
						valid = true;
					}
				}
				break;
		}

		if (!valid) {
			alert(msg);
			lFocus.focus();
			lRet = false;
		} else {
			lRet = true;
		}

		return lRet;
	}

	function verify(f) {

		return	verify_element(f.id,'Favor de escribir el nombre de usario') &&
			verify_element(f.password,'Favor de escribir el contraseña') &&
			verify_element(f.lname,'Favor de escribir su apellido') &&
			verify_element(f.country,'Favor de escribir el nombre de su pais') &&
			verify_element(f.city,'Favor de escribir el nombre de su cuidad') &&
			verify_element(f.email,'Favor de escribir su correo electrónico');
	}

</SCRIPT>
</head>

<body>
<div class="gridContainer clearfix">
<a id="top"></a>
  <div class="topHead fluid">
    <div id="logo">   
    </div>
  </div><!--end topHead-->
    <div id="nav" class="fluid"></div><!-- end NAV -->
  
  <div id="breadcrumbs" class="fluid">
    <p><a href="http://ubdavid.org/index.html">Home</a> &raquo; <a href="http://ubdavid.org/espanol/index.html">Español</a> &raquo; Inscripción</div>
     
  <div id="mainContainer" class="fluid">

    <div id="aside" class="fluid">
    	<p>&nbsp;</p>
        <p><a href="http://ubdavid.org/espanol/index.html">Inicio</a></p>
    </div><!-- end ASIDE -->

    <div id="mainContent" class="fluid">