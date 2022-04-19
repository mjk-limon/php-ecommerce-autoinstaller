<?php

trait InstallAssets
{
    public function processAssets()
    {
        $this->importAssetFiles();
        $this->processAdminLink();
    }

    private function importAssetFiles()
    {
        $LocalFile = "./tmpimport.zip";
        $RemoteFile = "https://crm.dhakasolution.com/_ilmComm/assets/root-files.zip";

        if (!class_exists('ZipArchive')) {
            throw new Exception("Zip archive library missing !");
        }

        if (copy($RemoteFile, $LocalFile)) {
            $zip = new ZipArchive;
            $res = $zip->open($LocalFile);
            
            if ($res === TRUE) {
                $zip->extractTo(self::docRoot());
                $zip->close();

                if (!is_dir(self::docRoot("doc/includes"))) {
                    mkdir(self::docRoot("doc/includes"), 0777, true);
                }
                return;
            }

            throw new \Exception("Invalid downloaded file !");
        }

        throw new \Exception("Could not download remote file !");
    }

    private function processAdminLink()
    {
        $htfile = self::docRoot(".htaccess");

        if (file_exists($htfile)) {
            $admin_suffix = $this->Data["admin_link"];
            $content = file_get_contents($htfile);
            $content = str_replace('^default_admin(/.*)?$', "^${admin_suffix}(/.*)?$", $content);
            file_put_contents($htfile, $content);
        }
    }
}
