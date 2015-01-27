<?php

$ggtemp_mininet = $_GET["gtemp_mininet"];
$get_temp_mininet = explode(",", $ggtemp_mininet);

$ggtemp_computer = $_GET["gtemp_computer"];
$get_temp_computer = preg_split("#(?<!\\\)\@@,#", $ggtemp_computer);

$ggtemp_mininet_code = $_GET["gtemp_mininet"];
$get_temp_mininet_code = preg_split("#(?<!\\\)\@@,#", $ggtemp_mininet_code);

$ggtemp_special_controller = $_GET["gtemp_special_controller"];
$get_temp_special_controller = explode(",", $ggtemp_special_controller);

$ggtemp_observ = $_GET["gtemp_observ"];
$get_temp_observ = explode(",", $ggtemp_observ);

$ggtemp_openflow_controller = $_GET["gtemp_openflow_controller"];
$get_temp_openflow_controller = preg_split("#(?<!\\\)\@@,#", $ggtemp_openflow_controller);
//$get2_temp_openflow_controller = preg_split('/\\\/'), $get_temp_openflow_controller);

$cont = $_GET["count"];
$cont1 = $_GET["count1"];
$cont2 = $_GET["count2"];

$myFile = "script.sh";
$fh = fopen($myFile, 'w') or die("can't open file");
$strText= "####################################################\n";
$strText1= "#Script created by VND - Visual Network Description#\n";
$strText2= "#!/bin/bash\n";
$strText3= "\n\n\n#FlowVisor Configuration\n";
$strText4= "\n";
fwrite($fh, $strText);
fwrite($fh, $strText1);
fwrite($fh, $strText);
fwrite($fh, $strText2);

//Mininet ------------------
for($c=0;$c<$cont2;$c++){
    fwrite($fh, $get_temp_mininet_code[$c]);
    fwrite($fh, $strText4);
}
//fwrite($fh, $ggtemp_mininet_code);
//Mininet ------------------

//Openflow Controller ------
for($d=0;$d<$cont;$d++){
    fwrite($fh, $get_temp_openflow_controller[$d]);
    fwrite($fh, $strText4);
}
//Openflow Controller ------

//Computer -----------------
for($e=0;$e<$cont1-1;$e++){
    fwrite($fh, $get_temp_computer[$e]);
    fwrite($fh, $strText4);
}
//Computer -----------------

//Special Controller -------
for($a=0;$a<$cont+7;$a++){
    fwrite($fh, $get_temp_special_controller[$a]);
    fwrite($fh, $strText4);
}
//Special Controller -------

//Observations -------------
for($b=0;$b<6;$b++){
    fwrite($fh, $get_temp_observ[$b]);
    fwrite($fh, $strText4);
}
//Observations -------------
$strText= "####################################################\n";
fclose($fh);

?> 