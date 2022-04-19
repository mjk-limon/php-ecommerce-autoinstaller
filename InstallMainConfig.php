<?php

trait InstallMainConfig
{
    private $MainConfigFileContent = "<?php\n\n";

    public function processMainConfig()
    {
        $this->initMainConfigPresets();
        $this->initMainConfigAdditionalVariables();
        $this->writeMainConfigFile();
    }

    private function initMainConfigPresets()
    {
        $ProjectFolder = dirname($_SERVER["REQUEST_URI"], 4) . "/";
        $this->MainConfigFileContent .= <<<CONTENT
/**
 * Global Configurations
 * Very sensitive data
 * Donot edit if unnecessary
 * Edit may damage your website
 */

/* if (!isset(\$_GET['TEST'])) {
    \$GamesIdArr = [23628, 22886, 24811, 24798, 24777, 24779];
    \$RandomId = \$GamesIdArr[array_rand(\$GamesIdArr, 1)];
    exit("
        <center>
            <h1>Under maintanance! Will be available in few minutes ! </h1>
            <h3>So boring? No problem !! Play this </h3>
            <iframe width=\"60%\" height=\"80%\" src=\"https://www.addictinggames.com/embed/html5-games/{\$RandomId}\" scrolling=\"no\"></iframe>
        </center>
    ");
} */

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
date_default_timezone_set('Asia/Dhaka');
require_once "_ilm_cfg.php";

/**
 * Server information guide:
 * returns request protocol
 */
\$Protocol = (isset(\$_SERVER['HTTPS']) &&
    (\$_SERVER['HTTPS'] == 'on' || \$_SERVER['HTTPS'] == 1) ||
    isset(\$_SERVER['HTTP_X_FORWARDED_PROTO']) &&
    \$_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https') ? "https://" : "http://";
define("PROTOCOL", \$Protocol);

/**
 * Server information guide:
 * returns server hostname
 */
\$HttpHost = \$_SERVER['HTTP_HOST'];
define("HTTP_HOST", \$HttpHost);
define("IS_LOCALHOST", in_array(HTTP_HOST, ['localhost', '127.0.0.1']));

/**
 * Server information guide:
 * returns project folder
 */
\$ProjectFolder = "{$ProjectFolder}";
define("PROJECT_FOLDER", \$ProjectFolder);

\$base = PROTOCOL . HTTP_HOST . PROJECT_FOLDER;
\$mBase = \$base . "mobile";

\$Lang = isset(\$_COOKIE['_ilm_pset_lang']) ? \$_COOKIE['_ilm_pset_lang'] : 'English';
define('SITE_LANGUAGE', \$Lang);

define('DEFAULT_CURR', 'BDT');
\$currency = isset(\$_COOKIE['_ilm_pset_cur']) ? \$_COOKIE['_ilm_pset_cur'] : DEFAULT_CURR;
define('CURRENCY', \$currency);

define("API_TOKEN", "");
define("ADMIN_EMAIL", "mjk.limon@gmail.com");
\$EmailToSend    = ADMIN_EMAIL;

define("MIN_PRID", "100100");
\$min_prid        = MIN_PRID;

define("GOOGLE_MAP_API", "AIzaSyCM2ZcxLK4zaOcu8UCvyYxkFYP2j0a48_4");
\$GoogleMapApi    = GOOGLE_MAP_API;

define("MENU_TYPE", "3");
\$menuType = MENU_TYPE;

/*
 * Secondary Category for category insert manuel:
 * Boolean for existing secondary category
 */
define("SECONDARY_CATEGORY", TRUE);
\$secondary_category = SECONDARY_CATEGORY;

/* Case 1 : Image
Case 2 : Image Link
Case 3 : Image Heading
Case 4 : Heading Link
Case 5 : Text Line 1
Case 6 : Text Line 1 Link
Case 7 : Text Line 2
Case 8 : Text Line 2 Link
Case 9 : Text Line 3
Case 10	: Text Line 3 Link */


CONTENT;
    }

    private function initMainConfigAdditionalVariables()
    {
        $defVarFile = self::docRoot("public/frontend_data/banner-slider.php");
        if (!file_exists($defVarFile)) {
            $this->MainConfigFileContent .= <<<CONTENT
\$categorySample = array(
    "Category icon" => array("total" => 1, "type" => "png", "width" => "19", "height" => "19"),
    "Top ranking category icon" => array("total" => 1, "type" => "png", "width" => "300", "height" => "300"),
    "Homepage category sample" => array("total" => 1, "type" => "jpg", "width" => "600", "height" => "430"),
    "Product page banner" => array("total" => 3, "type" => "jpg", "width" => "900", "height" => "300")
);

\$innerPages = array(
    "about-us", "store-location", "term-of-use", "privacy-policy", "testimonials", "blog",
    "photo-confirmations", "payment-methods", "locations-we-ship-to", "shipping-returns"
);

\$bannerToEdit = array(
    "home page banners"    => array("page" => 'index', "position" => 1, "fields" => "2"),
);

\$stickersToEdit = array(
    "home page stickers top 1" => array("page" => 'index', "position" => 2, "fields" => "2"),
    "home page stickers new arrival" => array("page" => 'index', "position" => 3, "fields" => "2")
);

\$stickersToEdit_NoDb = array();

\$addPrOthers = array();


CONTENT;
            return;
        }

        $Content = file_get_contents($defVarFile);
        $this->MainConfigFileContent .= $Content;
    }

    private function writeMainConfigFile()
    {
        $ConfigFile = self::docRoot("doc/includes/config.php");
        $f = fopen($ConfigFile, "w+");
        fwrite($f, $this->MainConfigFileContent);
        fclose($f);
    }
}
