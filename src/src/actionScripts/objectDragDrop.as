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
                 var tempArr:ArrayCollection=objectsArrayCollection[j].object
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
		         objpar.id=ob1.par[z].type;
		         objpar.name=ob1.par[z].name;
		    
                   if(ob1.par[z].type=='options'){
                   	for(var pp:int;pp<ob1.par[z].option.length;pp++){
                      objpar.option.push(ob1.par[z].option[pp]);
                   //	Alert.show(ob1.par[z].option[pp].toString());
                   }}
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
               In.addEventListener("defaultDownEve",saveCurrentState);
               
              // In.addEventListener("defaultDownEve",showPropertyPanel);
               In.addEventListener("ChangedDownEveForComponent",mdown);
               In.addEventListener("ChangedUpEveForComponent",mUp);
               
               dropCanvas.addChild(In);
               type=false;
               if(focusobject!=null){
	        focusobject.removeFoc();
	        focusobject=null;}
               
          // setobject3(In);
                setNetworkTree();
               	objectsTree.selectedIndex=0;
               }
               if (Templatetype==true) {
               	var v:int;
               for(var x:int=0;x<temaplateArrcol.length;x++){
		          if(child==temaplateArrcol[x]){
		              v=x;
		              break;	
		            }
		        }
		            
		            
		        var ob:objects=dropCanvas.getChildByName(temaplateArrcol[x]) as objects;
                var objw:objects =new objects();
                 for(var z:int=0;z<ob.objparaArrayCol.length;z++){
		      var objpar:objParameter=new objParameter();
		         objpar.id=ob.objparaArrayCol[z].id;
		         objpar.name=ob.objparaArrayCol[z].name;
		    
                   if(ob.objparaArrayCol[z].id=='options'){
                   	
                   	for(var pp:int=0;pp<ob.objparaArrayCol[z].option.length;pp++){
               
                      objpar.option.push(ob.objparaArrayCol[z].option[pp].toString());
                 
                   }}
                  objw.objparaArrayCol.addItem(objpar);
                   }
                   
                 for(var j:int=0;j<ob.valueObjArr.length;j++){
					var valueObj:ChangedTemp=new ChangedTemp();
					valueObj.name=ob.valueObjArr[j].name;
					valueObj.id=ob.valueObjArr[j].id;
					valueObj.IsCombo=ob.valueObjArr[j].IsCombo;
					valueObj.combeValue=ob.valueObjArr[j].combeValue;
					
					objw.valueObjArr.addItem(valueObj);
					
						
					} 
                  objw.simArray=ob.simArray;
                  objw.img=ob.img;
                  objw.id=ob.id;
                  objw.addEventListener("defaultDownEve",setobject);
                  objw.addEventListener("defaultDownEve",saveCurrentState);
                  objw.addEventListener("defaultMoveEve",myMove);
             
               objw.addEventListener("ChangedDownEveForComponent",mdown);
               objw.addEventListener("ChangedUpEveForComponent",mUp); 
                 
               
               // objw.name=ob.id+'_'+(++numberOfNodes)+"[TEMPLATE_oF_("+ob.name+")]";
               objw.name=ob.id+'_'+(++numberOfNodes);
                objw.isChildTemplatedOne=true;
                objw.motherTemplate=ob.name;
                 objw.x = dropCanvas.mouseX-20;
                 objw.y = dropCanvas.mouseY-20;
               
               if(focusobject!=null){
	        focusobject.removeFoc();
	        focusobject=null;}
                objw.secondTime=true;
                dropCanvas.addChild(objw as DisplayObject);
               setNetworkTree();
              // Templatetype=false;
           // networkTree.selectedIndex=0;
              // 	networkTree.dragEnabled=false;
              //Alert.show(tempalteObj.instancArray.length.toString());
               }
            }