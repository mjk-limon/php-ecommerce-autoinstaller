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

    private $Data = [];
    private $SesKey = "__ecom_autins_postd";

    public function __construct()
    {
        @session_start();
    }

    public function setPostedData(array $d)
    {
        $CurrData = self::rec_arr_val($_SESSION, $this->SesKey, []);
        $_SESSION[$this->SesKey] = array_merge($CurrData, $d);
        
        $this->Data = $d;
    }

    public function completeInstall()
    {
        file_put_contents("../.installed", "true");
        self::deleteDir("../autoinstaller/");
        unset($_SESSION[$this->SesKey]);
    }

    public static function docRoot($Path = null): string
    {
        return "../../../" . $Path;
    }

    public static function deleteDir(string $dir): bool
    {
        if (!file_exists($dir)) {
            return false;
        }

        $files = array_diff(scandir($dir), array('.', '..'));
        foreach ($files as $file) {
            if (is_dir("{$dir}/{$file}")) {
                self::deleteDir("{$dir}/{$file}");
                continue;
            }
            @unlink("{$dir}/{$file}");    
        }
        return @rmdir($dir);
    }

    public static function rec_arr_val($v, $k, $d = "")
    {
        foreach (explode(",", $k) as $kv) {
            if (isset($v[$kv])) {
                $v = $v[$kv];
                continue;
            }
            return $d;
        }
        return $v;
    }
}
