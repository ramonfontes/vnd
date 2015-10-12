import mx.printing.*;

public function doPrint():void{
var printJob:FlexPrintJob = new FlexPrintJob();
if (printJob.start() != true) return;
printJob.addObject(dropCanvas,FlexPrintJobScaleType.NONE);
printJob.send();
}
