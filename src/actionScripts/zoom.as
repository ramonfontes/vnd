import mx.core.Container;
import mx.core.UIComponent;
import mx.controls.Alert;
public var zoominvalue:Number=1.7;

public function doZoom(component:UIComponent,val:Number):void{
	component.scaleX = val;
	component.scaleY = val; 
	myMove2();
}

public function applyZoom(int:Number):void{
	doZoom(dropCanvas,int);
}

public function loadZoom():void{
	doZoom(dropCanvas,1.7);
}

public function dozooom():Number{
	if(zoominvalue >= 2.5)
	{
		zoominvalue=2.5;
	}
	else
		zoominvalue=zoominvalue+0.05;
	return zoominvalue;
}

public function dozooomOut():Number{
	if(zoominvalue <= 1.0){
		zoominvalue=1.0;
	}
	else zoominvalue=zoominvalue-0.05;
	return zoominvalue;
}