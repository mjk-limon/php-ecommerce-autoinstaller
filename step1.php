<?php

require "Install.php";

if (isset($_POST["install"])) {
    $i = new Install;
    $i->setPostedData($_POST);

    try {
        $i->processAssets();
    } catch (\Exception $e) {
        exit($e->getMessage());
    }

    exit(header("Location: step2.php"));
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
                        <label>Install On</label>
                        <input type="text" class="single-input" value="<?php echo $_SERVER['HTTP_HOST'] ?>" readonly />
                    </div>

                    <div class="single-input-area">
                        <label>Customer Email</label>
                        <input type="text" class="single-input" name="customer_email" />
                    </div>

                    <div class="single-input-area">
                        <label>Admin Panel Suffix</label>
                        <input type="text" class="single-input" name="admin_link" required />
                    </div>

                    <input type="submit" value="Import Files" class="btn submit-btn">
                </form>
            </div>
        </div>
    </div>

    <img src="https://crm.dhakasolution.com/_ilmComm/developers/docs/assets/images/logo.png" class="logo-stamp">
</body>

</html>