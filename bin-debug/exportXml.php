<?php

$raw_xml  = $_POST['loss'];

$myFile = "output.xml";
$fh = fopen($myFile, 'w') or die("can't open file");
$raw_xml2=stripslashes($raw_xml);
fwrite($fh, $raw_xml2);

fclose($fh);

?> 