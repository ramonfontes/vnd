<?php

$raw_xml  = ($_REQUEST[localXml]); 

$myFile = rand().".xml";
$fh = fopen($myFile, 'w') or die("can't open file");
fwrite($fh, $raw_xml);

fclose($fh);
echo("<a><aa>".$myFile."</aa></a>");
?> 
