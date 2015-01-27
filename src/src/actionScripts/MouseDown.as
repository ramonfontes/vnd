private function mdown(event:MouseEvent):void {
             if(event.target.className=='objects'){
             	if(Templatetype!=true){
             	var lin:Object=linksArrayCollection[linkCombo.selectedIndex];
             	line=new Link(lin.color); 
             	 for(var z:int=0;z<lin.par.length;z++){
		      var objpar:objParameter=new objParameter();
		         objpar.id=lin.par[z].type;
		         objpar.name=lin.par[z].name;
		    
                   if(lin.par[z].type=='options'){
                   	for(var pp:int=0;pp<lin.par[z].option.length;pp++)
                      objpar.option.push(lin.par[z].option[pp]);
                   }
                   line.can.objparaArrayCol.addItem(objpar);
                   }
             
               line.id=linkCombo.value.toString();
              line.name=line.can.name=linkCombo.value.toString()+'_'+(++numberOfNodes);
             	}
             	else if(Templatetype=true){
             		//var lin:Object=linksArrayCollection[linkCombo.selectedIndex];
             	line=new Link(temapltedline.lineColor); 
             	 for(var z:int=0;z<temapltedline.can.objparaArrayCol.length;z++){
		      var objpar:objParameter=new objParameter();
		         objpar.id=temapltedline.can.objparaArrayCol[z].id;
		         objpar.name=temapltedline.can.objparaArrayCol[z].name;
		    
                   if(temapltedline.can.objparaArrayCol[z].id=='options'){
                   	for(var pp:int=0;pp<temapltedline.can.objparaArrayCol[z].option.length;pp++)
                      objpar.option.push(temapltedline.can.objparaArrayCol[z].option[pp]);
                   }
                   line.can.objparaArrayCol.addItem(objpar);
                   }
             for(var j:int=0;j<temapltedline.can.valueObjArr.length;j++){
					var valueObj:ChangedTemp=new ChangedTemp();
					valueObj.name=temapltedline.can.valueObjArr[j].name;
					valueObj.id=temapltedline.can.valueObjArr[j].id;
					valueObj.IsCombo=temapltedline.can.valueObjArr[j].IsCombo;
					valueObj.combeValue=temapltedline.can.valueObjArr[j].combeValue;
					
					var isExist:Boolean;
					for(var check:int=0;check<line.can.valueObjArr.length;check++){
						if(line.can.valueObjArr[check].id==valueObj.id || valueObj.id =='name' ){
							isExist=true;
							break;
						}
					}if(isExist==true){
					
					}else line.can.valueObjArr.addItem(valueObj);
					
						
					}
					
			  line.can.secondTime=true;
               line.id=temapltedline.id;
               line.can.isChildTemplatedOne=true;
               line.can.motherTemplate=temapltedline.name;
               line.simArray=temapltedline.simArray;
              line.name=line.can.name=temapltedline.id+'_'+(++numberOfNodes);
             	}
              line.can.source=event.target as objects;//source object
              obj=event.target;
              line.beginX=obj.x+(obj.width)/2;
              line.beginY=obj.y+(obj.height)/2;
               
              }  }
        private function mMove(event:MouseEvent):void {
             
              
              line.lineHeight=dropCanvas.mouseX;
              line.lineLength=event.localX;
            
            }
        private function mUp(event:MouseEvent):void {
           var bool:Object=event.target; 
            var objs:Array=dropCanvas.getChildren();
             if(bool!=obj){
             if(line!=null){ 
               saveCurrentState(event);
              line.lineLength=event.target.x+(event.target.width)/2;
              line.lineHeight=event.target.y+(event.target.height)/2;
               obj.addToStartArray(line);
              
               event.target.addToEndArray(line);
              //  Alert.show(obj.linesStartingArray.length+'  '+ event.target.linesEndingArray.length);
              line.can.destination=event.target as objects;//destiantion object
              if(focusobject!=null){
	        focusobject.removeFoc();
	        focusobject=null;}
	          if(Templatetype=true)line.can.second();
	          else line.can.ini();
               dropCanvas.addChild(line); 
              // line.can.second();
               dropCanvas.setChildIndex(line,0);
               CursorManager.removeAllCursors();
               objectsTree.dragEnabled=true;
        	//networkTree.dragEnabled=true;
               setNetworkTree();
                line.addEventListener(MouseEvent.MOUSE_DOWN,setobject);
                line.addEventListener(MouseEvent.MOUSE_DOWN,saveCurrentState);
                line=null;
                Templatetype=false;
			    temapltedline=null;
                for(var i:int=0;i<objs.length;i++){
            		
            		if(!objs[i].hasOwnProperty('lineLength') ){
            			objs[i].listnerAddHandler();
                      }
            	 }
            } }
            else{
                Alert.show("same object");
            	line=null;temapltedline=null;
            	obj=null;Templatetype=false;
              }}
            
