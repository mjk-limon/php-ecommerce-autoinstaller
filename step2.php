<?php

require "Install.php";

if (isset($_POST["install"])) {
    $i = new Install;
    $i->setPostedData($_POST);

    try {
        $i->processIlmConfig();
        $i->processMainConfig();
        $i->processDatabase();
    } catch (\Exception $e) {
        exit($e->getMessage());
    }

    exit(header("Location: completed.php"));
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Md Jahid Khan Limon">
    <title>DS Ecommerce Web App | Installation</title>
    <link rel="shortcut icon" href="https://crm.dhakasolution.com/_ilmComm/developers/docs/favicon-96x96.png">
    <link href="style.css" rel="stylesheet">
</head>

<body>
    <div class="main-body">
        <div class="main-content">
            <div class="page-title">
                <h4>Welcome</h4>
                <h5>Dhaka Solution eCommerce Web Application Installation</h5>
            </div>

            <div class="form-inner">
                <form action="" method="post">
                    <input type="hidden" name="install" value="1">

                    <div class="single-input-area">
                        <label>Company Name</label>
                        <input type="text" class="single-input" name="v[companyName]" required />
                        <input type="hidden" name="c[COMPANY_NAME]" value="{{companyName}}">
                    </div>

                    <div class="single-input-area">
                        <label>DB Server Name</label>
                        <input type="text" class="single-input" name="c[DB_SNAME]" required />
                    </div>

                    <div class="single-input-area">
                        <label>DB User Name</label>
                        <input type="text" class="single-input" name="c[DB_USER_NAME]" required />
                    </div>

                    <div class="single-input-area">
                        <label>DB Password</label>
                        <input type="text" class="single-input" name="c[DB_PASSWORD]" required />
                    </div>

                    <div class="single-input-area">
                        <label>DB Database Name</label>
                        <input type="text" class="single-input" name="c[DB_DATABASE_NAME]" required />
                    </div>

                    <input type="submit" value="Install Database" class="btn submit-btn">
                </form>
            </div>
        </div>
    </div>

    <img src="https://crm.dhakasolution.com/_ilmComm/developers/docs/assets/images/logo.png" class="logo-stamp">
</body>

</html>
