
	import mx.controls.Alert;
	private function tree_itemClick(evt:ListEvent):void {
              Templatetype=false;
              instanceTemplate=null;
             var t:Tree = evt.currentTarget as Tree;
                   Parent = evt.itemRenderer.data.@parent;
                   child = evt.itemRenderer.data.@name;
                  if(evt.itemRenderer.data.hasOwnProperty('@parent')){
                    preview.setImage(evt.itemRenderer.data.@name);
                    type=true;
                  } 
                  else if(evt.itemRenderer.data.hasOwnProperty('@index')) {
                   type==false;
                   preview.setImage(evt.itemRenderer.data.@name);
                   
                   linkCombo.selectedIndex=evt.itemRenderer.data.@index;
                   listnerremoverHandler();
                   CursorManager.setCursor(loaderCursor);
                   objectsTree.selectedIndex=0;
                   objectsTree.dragEnabled=false;
                   }
                  else {
                  type==false;
                  preview.setImageEmpty();
                  }
                 
            }
            
            
      //=======================================  

private function setFocusTreeObject(ac:ArrayCollection,instanceName:String)
{
	for(var i:int=0;i<ac.length;i++)
	{
		if(ac[i].name == instanceName)
		{
			var instanceID = ac[i].id;
			for(var j:int=0; j<instancesArrayCollection.length; j++)
			{
				if(instancesArrayCollection[j].name == instanceID )
				focustreeobject = ac[i];
				Configurationpanel.addChild(ac[i] as DisplayObject);
				//return;
			}
		}
		if(ac[i].instancArray != null)
			setFocusTreeObject(ac[i].instancArray, instanceName);
	}

}

private function network_itemClick(evt:ListEvent):void
{
	focustreeobject = null;
	preview.setImageEmpty();
	type=false;
      Configurationpanel.removeAllChildren();
      var dataObj:Object = evt.itemRenderer.data;
	if(dataObj.hasOwnProperty('@parent'))
	{ 
      	var og:Object= dropCanvas.getChildByName(dataObj.@parent);
            setobject2(og);
		var ac:ArrayCollection = og.instancArray;
		var instanceName = dataObj.@name;
		setFocusTreeObject(ac,instanceName);

		names = new Array();
		if(focustreeobject)
		{
			for(var i:int=0; i<allnames.length; i++)
			{
				var arr:ArrayCollection=focustreeobject.objparaArrayCol as ArrayCollection;
				for(var x:int = 0;x<arr.length;x++)
				{
					if( arr[x].id=='instance' && allnames[i] == arr[x].name)
					names.push(allnames[i]);
				}
			}
		}		
		
            var aa:ArrayCollection=og.instancArray;
            for(var i:int=0;i<aa.length;i++)
		{
            	if(aa[i].name==dataObj.@name)
			{
                  	 Configurationpanel.addChild(aa[i] as DisplayObject);
                         break;
                  }
            }
            Simobj=null;
            Templatetype=false;
            viewType=false;
            instanceTemplate=null;
	}
      else if(dataObj.hasOwnProperty('@object'))
	{
                   var og:Object= dropCanvas.getChildByName(dataObj.@name);
                   setobject2(og);
                   //networkTree.selectedIndex=0;
                   Templatetype=false;
                   viewType=false;
                      Simobj=null;
                   instanceTemplate=null;
               }
              else  if(dataObj.hasOwnProperty('@template')){
              	var str1:String=dataObj.@name;
              	networkTree.dragEnabled=true;
              	    Simobj=null;
              	if(str1.search('/')>0){
              	var str:Array=dataObj.@name.split('/',2);
            Templatetype=true;
              	     var ob:objects=dropCanvas.getChildByName(str[1]) as objects;      	
              	    for(var i:int=0;i<ob.instancArray.length;i++){ 
              	    	if(str[0]==ob.instancArray[i]){
              	    		instanceTemplate=ob.instancArray[i];
              	    	}
              	    }           	
              	    }
              	      
              	  else if(Object(dropCanvas.getChildByName(dataObj.@name)).className=='Link'){
              	  // listnerremoverHandler();
                  // CursorManager.setCursor(loaderCursor);
                 //  networkTree.selectedIndex=0;
                   Simobj=null;
                   instanceTemplate=null;
                   networkTree.dragEnabled=false;
                   Templatetype=true;
                   temapltedline=Link(dropCanvas.getChildByName(dataObj.@name));
                   setobject2(dropCanvas.getChildByName(dataObj.@name));
              	   }
              	    else{ networkTree.dragEnabled=true;
              	    setobject2(dropCanvas.getChildByName(dataObj.@name));
              	    child=evt.itemRenderer.data.@name;
                    Templatetype=true;
                  instanceTemplate=null;
                  
                   }
                      viewType=false;
                }else  if(dataObj.hasOwnProperty('@simulation')){
              	       Simobj=dataObj.@name;
              	     	Configurationpanel.removeAllChildren();
              	     	for(var k:int=0;k<SimulationArr.length;k++){
       		              if(Simobj==SimulationArr[k].name){
       		              	SimulationArr[k].sec=true;
       		              Configurationpanel.addChild(SimulationArr[k]);
       		             // SimulationArr[k].sec=true;
       		               // Configurationpanel.removeChild(SimulationArr[k]);
       		               //  Configurationpanel.addChild(SimulationArr[k]);
       		            SimulationArr[k].second();
       		                    break;
       		                   }
              	     	}
       	 
       	
       	 if(focusobject!=null){
	        focusobject.removeFoc();
	        focusobject=null;}
              	    }
                else  if(dataObj.hasOwnProperty('@view')){
              	     DelviewType=evt.itemRenderer.data.@name;
                     viewType=true;
                     networkTree.dragEnabled=false;
                         Simobj=null;
                         setViewFocus(DelviewType);
                        
                }
            
           }
           
          //========================== 
           private function network_itemClick2(evt:Event):void{
           
                preview.setImageEmpty();
                
                type=false;
                Configurationpanel.removeAllChildren();
               
               if( Templatetype=true && temapltedline!=null){
              	  
              	   listnerremoverHandler();
                   CursorManager.setCursor(loaderCursor);
                 viewType=false;
                 
              	   }
              	    
                }