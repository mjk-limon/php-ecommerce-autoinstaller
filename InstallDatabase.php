<?php

trait InstallDatabase
{
    public function processDatabase()
    {
        $DbFile = "./database.sql";
        $ConfigFile = self::docRoot("doc/includes/_ilm_cfg.php");

        if (!file_exists($DbFile)) {
            throw new Exception("Database file not imported !");
        }

        if (!file_exists($ConfigFile)) {
            throw new Exception("Couldn't create config file !");
        }
        
        require $ConfigFile;

        $Sql = file_get_contents($DbFile);
        $conn->multi_query($Sql);
    }
}
