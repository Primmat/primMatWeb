<?php

// cesta ke stylům
$assets_path = $config->paths->templates . "styles/";
$assets_url = $config->urls->templates . "styles/";
$file_css = "styles.css";

// Generátor verze CSS
if (file_exists($assets_path . $file_css)) {
    $css_version_addon = "?v" . date("His", filemtime($assets_path . $file_css));
} else {
    $css_version_addon = "?somethingWentWrong";
}
// Celá url včetně verze CSS
$css_with_version = $assets_url . $file_css . $css_version_addon;


 include(\ProcessWire\wire('files')->compile("functions/functions.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));
?>
<!DOCTYPE html>
<html lang="cs">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">

    <!-- UIkit CSS -->
    <link rel="stylesheet" href="/site/templates/uikit/uikit.min.css" />

    <!-- UIkit JS -->
    <script src="/site/templates/uikit/uikit.min.js"></script>
    <script src="/site/templates/uikit/uikit-icons.min.js"></script>
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="<?php echo $css_with_version; ?>" />
    <title><?php echo $page->title ?></title>
</head>

<body>

    <div class='linksMenuRow uk-visible@m'>
        <nav class="uk-navbar-container linksMenuRow uk-container" uk-navbar>
            <div class="uk-navbar-center">
                <ul class="uk-navbar-nav">
                    <li><a href="https://bakalari.primmat.cz/bakaweb/next/login.aspx">Bakaláři</a></li>
                    <li><a href="http://app.itrivio.cz/primmat/">iTrivio.cz</a></li>
                    <li><a href="http://portal.office.com/">Office 365</a></li>
                    <li><a href="http://mail.primmat.cz/">Webmail</a></li>
                </ul>
            </div>
        </nav>
    </div>


    <div class='menuRow'>
        <nav class="uk-navbar-container menuRow uk-container" uk-navbar>
            <div class="uk-navbar-left">
                <a href="/">
                <img class='menuLogo' src="/site/templates/images/logo-primmat.svg" alt="PrimMat logo">
                </a>
            </div>
            <div class="uk-navbar-right uk-hidden@m">
                <div id="myNav" class="overlay">
                    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                    <nav class="overlay-content">
                        <?php echo mobileMenu($pages->get(1)); ?>
                    </nav>
                </div>

                <span class="mainMenu" style="cursor:pointer" onclick="openNav()">&#9776;</span>
            </div>

                <div class="uk-navbar-right uk-visible@m">
                    <?php echo desktopMenu($pages->get(1)); ?>
                </div>

        </nav>
    </div>