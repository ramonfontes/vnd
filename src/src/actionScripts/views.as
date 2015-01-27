public function setfocusforView():void{
		   	for(var i:int=0;i<viewsObjects.length;i++){
		   		viewsObjects[i].setFoc();
		   		 //Alert.show('sseeeeee');
		   	}
		   }
		    public function removefocusforView():void{
		   	for(var i:int=0;i<viewsObjects.length;i++){
		   		viewsObjects[i].removeFoc();}
		   		viewsObjects.removeAll();
		   		viewfirstTime=true;
		   
		   } 	
		  public  function setView():void {
		  	if(viewsObjects.length!=0){
        	
         	var temArr:viewObjects=new viewObjects();
            var arr:ArrayCollection=viewsObjects;
         	for(var count:int=0;count<arr.length;count++){
         	  temArr.objects.addItem(arr.getItemAt(count));
         	}
         	  temArr.name="view_"+(++ViewNumber);
         	  viewsarray.addItem(temArr);
             setViewTree();
             removefocusforView();
             focusobject=null; 
             Alert.show('a view Created');    
         	}
         	else Alert.show('select objects');
    }
     public  function delView():void {
		  	if(viewType){
        	var temArr:viewObjects=new viewObjects();
            var arr:ArrayCollection=viewsarray;
             for(var count:int=0;count<arr.length;count++){
              if(DelviewType==(arr.getItemAt(count).name)){
         	  arr.removeItemAt(count);
         	 }
         	} viewType=false;
         	 setViewTree();
         	}
         	else Alert.show('select a view');
    }
//====================

public function setViewFocus(DelviewType:String):void{
         	//viewsXml=<views name="views"></views>;  
         	if(focusobject!=null){
	        focusobject.removeFoc();}
            var arr:ArrayCollection=viewsarray;
         	for(var count:int=0;count<arr.length;count++){
         		var tempArr:viewObjects=arr[count];
         		//var temp:XML=XML("<view name='"+tempArr.name+"' view='"+tempArr.name+"' />");
         		if(tempArr.name==DelviewType){
         		for(var i:int=0;i<tempArr.objects.length;i++){
         		var tempArray:Object=tempArr.objects[i];
         		
             //var tempA:XML=XML("<view name='"+tempArray.name+"'  />");
                  tempArray.setFoc();
                  }}
         	//viewsXml.appendChild(temp);
         	}   //networkXml.replace("views",viewsXml);
         		}

         		
       		public function removeViewFocus1():void{
         	//viewsXml=<views name="views"></views>;  
            var arr:ArrayCollection=viewsarray;
         	for(var count:int=0;count<arr.length;count++){
         		var tempArr:viewObjects=arr[count];
         		//var temp:XML=XML("<view name='"+tempArr.name+"' view='"+tempArr.name+"' />");
         		//if(tempArr.name==DelviewType){
         		for(var i:int=0;i<tempArr.objects.length;i++){
         		var tempArray:Object=tempArr.objects[i];
         		
             //var tempA:XML=XML("<view name='"+tempArray.name+"'  />");
                  tempArray.removeFoc();
                  }}
         	//viewsXml.appendChild(temp);
         	}   //networkXml.replace("views",viewsXml);
         		//} 
