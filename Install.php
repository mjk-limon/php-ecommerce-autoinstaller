<?php

require "InstallAssets.php";
require "InstallDatabase.php";
require "InstallIlmConfig.php";
require "InstallMainConfig.php";

class Install
{
    use InstallAssets;
    use InstallDatabase;
    use InstallIlmConfig;
    use InstallMainConfig;

    private $Data;

    public function setPostedData(array $d)
    {
        $this->Data = $d;
    }

    public function completeInstall()
    {
        file_put_contents("../.installed", "true");
        self::deleteDir("../autoinstaller/");
    }

    public function docRoot($Path = null): string
    {
        return "../../../" . $Path;
    }

    public function deleteDir(string $dir): bool
    {
        if (!file_exists($dir)) {
            return false;
        }

        $files = array_diff(scandir($dir), array('.', '..'));
        foreach ($files as $file) {
            (is_dir("{$dir}/{$file}") ?
                self::deleteDir("{$dir}/{$file}") :
                unlink("{$dir}/{$file}"));
        }
        return rmdir($dir);
    }
}
