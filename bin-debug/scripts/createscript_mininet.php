<?php

$ggtemp_mininet_code = $_POST["gtemp_mininet"];
$get_temp_mininet_code = preg_split("#(?<!\\\)\@@,#", $ggtemp_mininet_code);

$cont2 = $_POST["count2"];

$chave = $_POST["chave"];

$myFile = $chave.".sh";
$fh = fopen($myFile, 'w') or die("can't open file");
$strText4= "\n";

for($a=0;$a<$cont2;$a++){
    fwrite($fh, $get_temp_mininet_code[$a]);
    fwrite($fh, $strText4);
}

fclose($fh);
?> 