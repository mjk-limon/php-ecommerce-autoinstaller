<?php

trait InstallDatabase
{
    public function processDatabase()
    {
        global $conn;

        // Config files path
        $ConfigFile = self::docRoot("doc/includes/config.php");
        $AutoloadFile = self::docRoot("doc/vendor/autoload.php");

        if (!file_exists($ConfigFile) || !file_exists($AutoloadFile)) {
            // Config files not exists
            throw new Exception("Installation file error! Please re-install.");
        }

        // Include config files
        require $ConfigFile;
        require $AutoloadFile;

        // Get table structure and seeders
        $TableStructure = include "../db/structure.php";
        $Seeders = include "../db/seeders.php";

        // Init Autoinstaller
        $i = new _ilmComm\Core\DataBase\AutoInstaller;
        $i->setTableStructure($TableStructure);
        $i->setTableSeeders($Seeders);
        $i->init();
    }
}
