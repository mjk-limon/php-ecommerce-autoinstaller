<?php

trait InstallIlmConfig
{
    private $IlmConfigFileContent = "<?php\n\n";

    public function processIlmConfig()
    {
        $this->initIlmConfigVariables();
        $this->initIlmConfigConstants();
        $this->initIlmConfigPresets();
        $this->writeIlmConfigFile();
    }

    private function initIlmConfigVariables()
    {
        array_walk($this->Data["v"], function ($v, $k) {
            $this->IlmConfigFileContent .= '$' . $k . ' = ' . var_export($v, true) . ";\n\n";
        });
    }

    private function initIlmConfigConstants()
    {
        array_walk($this->Data["c"], function ($v, $k) {
            $v = preg_replace_callback("/{{([A-Za-z-_]+)}}/", function ($m) {
                $t = $m[1];
                return $this->Data["v"][$t];
            }, $v);
            $this->IlmConfigFileContent .= "define(\"{$k}\", " . var_export($v, true) . ");\n\n";
        });
    }

    private function initIlmConfigPresets()
    {
        $this->IlmConfigFileContent .= <<<CONTENT
\$_ilm_adm_Fet = array(
    "_ilm_inv" => true,
    "_ilm_prd" => array(
        "dis" => false,
        "stk" => true,
        "mcnt" => false
    ),
    "_ilm_cpn" => array(
        "limit" => true,
        "category" => false
    ),
    "_ilm_rvw" => true,
    "_ilm_odr" => true,
    "_ilm_pmg" => array(
        "2" => true, "3" => true,
        "4" => true, "5" => false,
        "6" => false, "7" => false,
        "8" => false, "9" => false,
        "10" => true, "11" => true
    ),
    "_ilm_opt" => array(
        "smsao" => true, "prat" => true,
        "qtpr" => true, "crate" => true,
    )
);

\$conn = new mysqli(DB_SNAME, DB_USER_NAME, DB_PASSWORD, DB_DATABASE_NAME);
if (\$conn->connect_error) die("Server Error !");


CONTENT;
    }

    private function writeIlmConfigFile()
    {
        $ConfigFile = self::docRoot("doc/includes/_ilm_cfg.php");
        $f = fopen($ConfigFile, "w+");
        fwrite($f, $this->IlmConfigFileContent);
        fclose($f);
    }
}
