import mx.controls.Alert;
import mx.managers.DragManager;
import mx.collections.ArrayCollection;
import mx.utils.UIDUtil;
import mx.events.DragEvent;
import flash.display.DisplayObject;

		private function dragEnterHandler(event:DragEvent):void {
			DragManager.acceptDragDrop(Canvas(event.currentTarget));
		}
	        
        private function dragOverHandler(event:DragEvent):void{
			DragManager.showFeedback(DragManager.COPY);
		}
            
        private function dragDropHandler(event:DragEvent):void {
			saveCurrentState(event);
			var ob1:Object=new Object();
			if (type==true) {
           	for(var j:int=0;j<objectsArrayCollection.length;j++){
				var s:String=objectsArrayCollection[j].name;
				if(s==Parent){
                	var tempArr:ArrayCollection=objectsArrayCollection[j].object;
					for(var y:int=0;y<tempArr.length;y++){
		      	 		if(tempArr[y].name==child){
		      	 	 		ob1=tempArr[y];
							break;
		      	 		}
		      	 	}
		      	 	break;
		      	}
		    }			
			var In:objects=new objects();
			for(var z:int=0;z<ob1.par.length;z++){
		      	var objpar:objParameter=new objParameter();
				//Limpar contagem
				if(ob1.par[z].name=="remoteLocal")
					qos1 = new qosConfig();
		        objpar.id=ob1.par[z].type;
		        objpar.name=ob1.par[z].name;
				if(ob1.par[z].type=='options'){
					for(var pp:int=0;pp<ob1.par[z].option.length;pp++){
                    objpar.option.push(ob1.par[z].option[pp]);
                   	}
				}
				In.objparaArrayCol.addItem(objpar);
            }
			var st:String=UIDUtil.getUID(In);
            var str:Array=st.split("objects",2);
			In.img=ob1.image;
			In.name=ob1.name+'_'+(++numberOfNodes);
			In.id=ob1.name;			
			In.addEventListener("defaultDownEve",setobject); 
            In.x = dropCanvas.mouseX-20;
            In.y = dropCanvas.mouseY-20;
            In.addEventListener("defaultMoveEve",myMove);
			In.addEventListener("defaultMoveEve1",mMove);
			In.addEventListener("defaultDownEve",saveCurrentState);
			In.addEventListener("ChangedDownEveForComponent",mdown);
			In.addEventListener("ChangedUpEveForComponent",mUp);
			dropCanvas.addChild(In);					
			
            type=false;
            if(focusobject!=null){
	        	focusobject.removeFoc();
	        	focusobject=null;
			}
          	    setNetworkTree();
               	objectsTree.selectedIndex=0;				
            }            
        }