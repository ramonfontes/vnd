		import mx.core.Container;
		import mx.core.UIComponent;
		var zoominvalue:Number=1;
		
public function doZoom(component:UIComponent,val:Number):void{
		component.scaleX = val;
		component.scaleY = val; 
		myMove2();
	/* if(component is Container){
		var children:Array = Container(component).getChildren();
		for(var i:int = 0; i < children.length; i++){
		doZoom(children[i], val);
		}
		} */
		}
		
public function applyZoom(int:Number):void{
		//if(dropCanvas == null){
		///return;
		//}
		//for(var i:Number=0;i<dropCanvas.numChildren;i++){
		//if(Object(dropCanvas.getChildAt(i)).className=='objects')
		doZoom(dropCanvas,int);
		}
//}
		
public function dozooom():Number{
		if(zoominvalue >= 1.5)
		{
		zoominvalue=1.5;
		}else
		zoominvalue=zoominvalue+0.05;
		return zoominvalue;
		}
public function dozooomOut():Number{
		if(zoominvalue <= 0.5){
		zoominvalue=0.5;
		}else zoominvalue=zoominvalue-0.05;
		return zoominvalue;
		}