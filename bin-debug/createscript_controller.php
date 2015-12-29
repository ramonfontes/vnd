<?php

$ggtemp_openflow_controller = $_POST["gtemp_openflow_controller"];


$get_temp_openflow_controller = preg_split("#(?<!\\\)\@@,#", $ggtemp_openflow_controller);
$gemptyspace_openflow_controller = $_POST["emptyspace"];

$cont = $_POST["count"];

$chave = $_POST["chave"];

$myFile = $chave.".sh";
$fh = fopen($myFile, 'w') or die("can't open file");
$strText2= "#!/bin/bash\n";
$strText4= "\n";

//Openflow Controller ------
if($gemptyspace_openflow_controller==0){
for($d=0;$d<$cont;$d++){
    fwrite($fh, $get_temp_openflow_controller[$d]);
    fwrite($fh, $strText4);
}
}
else{
for($d=0;$d<$cont;$d++){
    fwrite($fh, trim($get_temp_openflow_controller[$d]));
    fwrite($fh, $strText4);
}
//Openflow Controller ------
}

fclose($fh);

?> 
