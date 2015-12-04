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
<title>Formulaire d'Inscription d'un Nouvel Utilisateur</title>
<meta name="description" content="Inscription pour les leçons gratuites de Bible pour tous les âges; UB David &amp; I'll B Jonathan" />
<meta name="keywords" content="leçons bibliques pour les jeunes, les enseignements de la Bible pour les ados, David Jonathan, Jésus, Parole-par-Poste, UB David" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="cleartype" content="on">
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="author" content="Jerry Durston, President" />
<meta name="author" content="Brian Cummins, Web Designer" />
<link href="../css/boilerplate.css" rel="stylesheet" type="text/css"> <!-- these 3 css files need absolute addresses before final upload -->
<link href="../css/lessons-common.css" rel="stylesheet" type="text/css">
<link href="../css/lessons-french.css" rel="stylesheet" type="text/css">
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

		return  verify_element(f.id,'S\'il vous plaît entrer une ID utilisateur') &&
                        verify_element(f.password,'S\'il vous plaît entrer un mot de passe') &&
                        verify_element(f.lname,'S\'il vous plaît entrer un nom de famille') &&
                        verify_element(f.prov,'S\'il vous plaît entrer une Province/État') &&
                        verify_element(f.country,'S\'il vous plaît entrer un pays') &&
                        verify_element(f.pcode,'S\'il vous plaît entrer un code postal') &&
                        verify_element(f.city,'S\'il vous plaît entrer une ville') &&
                        verify_element(f.email,'S\'il vous plaît entrer une adresse courriel');
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
    <p><a href="http://ubdavid.org/index.html">Home</a> &raquo; <a href="http://ubdavid.org/francais/index.html">Français</a> &raquo; Inscription</div>
     
  <div id="mainContainer" class="fluid">

    <div id="aside" class="fluid">
		<p>&nbsp;</p>
        <p><a href="http://ubdavid.org/francais/index.html">ACCUEIL</a></p>
    </div><!-- end ASIDE -->

    <div id="mainContent" class="fluid">