<?php

require "Install.php";

$i = new Install;
try {
    $i->completeInstall();
} catch (\Exception $e) {
    exit($e->getMessage());
}
?>

<div>
    <p>Successfully completed your installation !</p>
    <p>Redirecting(<span id="timer">5</span>s) to main site.. </p>
</div>
<script type="text/javascript">
var initTimer = 5;
var timerElem = document.getElementById("timer");

var interval = setInterval(function() {
    initTimer--;
    timerElem.innerHTML = initTimer;

    if (initTimer < 1) {
        clearInterval(interval);
        window.location.href = "../../";
    }
}, 1000);
</script>