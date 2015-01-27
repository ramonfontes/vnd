import mx.collections.ArrayCollection;

public function removefocusforView():void{
	for(var i:int=0;i<viewsObjects.length;i++){
		viewsObjects[i].removeFoc();
	}
	viewsObjects.removeAll();
	viewfirstTime=true;
} 	

public function setfocusforView():void{
	for(var i:int=0;i<viewsObjects.length;i++){
		viewsObjects[i].setFoc();
	}
}

public function setViewFocus(DelviewType:String):void{
	if(focusobject!=null){
		focusobject.removeFoc();}
	var arr:ArrayCollection=viewsarray;
	for(var count:int=0;count<arr.length;count++){
		var tempArr:viewObjects=arr[count];
		if(tempArr.name==DelviewType){
			for(var i:int=0;i<tempArr.objects.length;i++){
				var tempArray:Object=tempArr.objects[i];
				tempArray.setFoc();
			}
		}
	}   
}

public function removeViewFocus1():void{
	var arr:ArrayCollection=viewsarray;
	for(var count:int=0;count<arr.length;count++){
		var tempArr:viewObjects=arr[count];
		for(var i:int=0;i<tempArr.objects.length;i++){
			var tempArray:Object=tempArr.objects[i];
			tempArray.removeFoc();
		}
	}
} 
